// nrf24l01.c

#include "nrf24l01.h"
#include "string.h"



static uint8_t nrf24_read_reg(uint8_t reg);
static uint8_t nrf24_write_reg(uint8_t reg, uint8_t value);
static void nrf24_write_txfifo(const uint8_t *data, int length);
static void nrf24_set_txaddr_aa(const uint8_t *addr);

static uint8_t last_tx_addr[ADDR_WIDTH] = {0};
static uint8_t last_p0_addr[ADDR_WIDTH] = {0};
static uint8_t base_config = 0;

// nrf24 commands
static const uint8_t READ_REG         = 0x00;
static const uint8_t WRITE_REG        = 0x20;
static const uint8_t READ_RX          = 0x61;
static const uint8_t WRITE_TX         = 0xA0;
static const uint8_t FLUSH_TX         = 0xE1;
static const uint8_t FLUSH_RX         = 0xE2;
static const uint8_t REUSE_TX_PAYLOAD = 0xE3;
static const uint8_t RX_PL_WIDTH      = 0x60;
static const uint8_t NOP              = 0xFF;

// nrf24 register addresses
static const uint8_t CONFIG      = 0x00;   // config register
static const uint8_t EN_AUTOACK  = 0x01;   // Enable Auto Acknowledge 
static const uint8_t EN_RXADDR   = 0x02;   // Enabled RX addresses 
static const uint8_t SETUP_AW    = 0x03;   // Setup address width 
static const uint8_t SETUP_RETR  = 0x04;   // Setup Auto. Retrans 
static const uint8_t RF_CH       = 0x05;   // RF channel 
static const uint8_t RF_SETUP    = 0x06;   // RF setup 
static const uint8_t STATUS      = 0x07;   // Status register
static const uint8_t OBSERVE_TX  = 0x08;   // Observe TX 
static const uint8_t CD          = 0x09;   // Carrier Detect 
static const uint8_t RX_ADDR_P0  = 0x0A;   // RX address pipe0 
static const uint8_t RX_ADDR_P1  = 0x0B;   // RX address pipe1 
static const uint8_t RX_ADDR_P2  = 0x0C;   // RX address pipe2 
static const uint8_t RX_ADDR_P3  = 0x0D;   // RX address pipe3 
static const uint8_t RX_ADDR_P4  = 0x0E;   // RX address pipe4 
static const uint8_t RX_ADDR_P5  = 0x0F;   // RX address pipe5 
static const uint8_t TX_ADDR     = 0x10;   // TX address 
static const uint8_t RX_PW_P0    = 0x11;   // RX payload width, pipe0 
static const uint8_t RX_PW_P1    = 0x12;   // RX payload width, pipe1 
static const uint8_t RX_PW_P2    = 0x13;   // RX payload width, pipe2 
static const uint8_t RX_PW_P3    = 0x14;   // RX payload width, pipe3 
static const uint8_t RX_PW_P4    = 0x15;   // RX payload width, pipe4 
static const uint8_t RX_PW_P5    = 0x16;   // RX payload width, pipe5 
static const uint8_t FIFO_STATUS = 0x17;   // FIFO Status Register  
static const uint8_t DYNPD       = 0x1C;   // enabl dynamic payload
static const uint8_t FEATURE     = 0x1D;   // Feature register


/**
* @brief  write to NRF24 register 
* @param  uint8_t register address, uint8_t write value
* @retval status register
*/
static uint8_t nrf24_write_reg(uint8_t reg, uint8_t value)
{
    uint8_t rxdata[2], txdata[2] = {reg | WRITE_REG, value};

    spi.CS_LOW();
    spi.txrx(txdata, rxdata, 2);
    spi.CS_HIGH();
    return rxdata[0];
}

/**
* @brief  read from NRF24 register 
* @param  uint8_t register address
* @retval uint8_t register value
*/
static uint8_t nrf24_read_reg(uint8_t reg)
{
    uint8_t rxdata[2], txdata[2] = {reg, 0xff};

    spi.CS_LOW();
    spi.txrx(txdata, rxdata, 2);
    spi.CS_HIGH();
    return rxdata[1];
}

/**
* @brief  initialise NRF24L01, wait 100ms after power-on before calling this
* @param  nrf24l01_config struct
* @retval None
*/
void nrf24_init(const nrf24l01_config *config)
{
    spi.CE_LOW();
    spi.CS_HIGH();
    
    base_config = config->config_reg;
    nrf24_write_reg(CONFIG, config->config_reg);
    nrf24_write_reg(EN_AUTOACK, config->autoack_enable);
    nrf24_write_reg(EN_RXADDR, config->rx_addr);
    nrf24_write_reg(SETUP_AW, ADDR_WIDTH - 2);          // valid widths are 3-5 encoded as 1-3 (0 reserved)
    nrf24_write_reg(SETUP_RETR, config->retransmit);
    nrf24_write_reg(RF_CH, config->rf_channel);
    nrf24_write_reg(RF_SETUP, config->rf_setup);

    nrf24_write_reg(RX_PW_P0, config->rx_width_p0);
    nrf24_write_reg(RX_PW_P1, config->rx_width_p1);
    nrf24_write_reg(RX_PW_P2, config->rx_width_p2);
    nrf24_write_reg(RX_PW_P3, config->rx_width_p3);
    nrf24_write_reg(RX_PW_P4, config->rx_width_p4);
    nrf24_write_reg(RX_PW_P5, config->rx_width_p5);

    nrf24_write_reg(DYNPD, config->dynamic_payload);
    nrf24_write_reg(FEATURE, config->feature);
}

/**
* @brief  enter standby mode
* @param  None
* @retval None
*/
void nrf24_pwr_down(void)
{
    uint8_t temp_config = nrf24_read_reg(CONFIG);
    nrf24_write_reg(CONFIG, temp_config & ~PWR_UP);
    spi.CE_LOW();  
}
/**
* @brief  start listening
* @param  None
* @retval None
*/
void nrf24_listen(void)
{
    uint8_t temp_config = nrf24_read_reg(CONFIG);
    nrf24_flush_rx();
    nrf24_write_reg(STATUS, RX_DATA_RDY);
    
    spi.CE_LOW();  
    nrf24_write_reg(CONFIG, temp_config | PWR_UP | PRIM_RX);
    spi.CE_HIGH();  
}

/**
* @brief  set tx address
* @param  None
* @retval None
*/
void nrf24_set_txaddr(const uint8_t *addr)
{
    if(memcmp(addr, last_tx_addr, ADDR_WIDTH)){
        uint8_t reg_addr = WRITE_REG | TX_ADDR;
        memcpy(last_tx_addr, addr, ADDR_WIDTH);
        spi.CS_LOW();
        spi.tx(&reg_addr, 1);
        spi.tx(addr, ADDR_WIDTH);
        spi.CS_HIGH();
    }
}

/**
* @brief  write tx address to both tx_addr and pipe0 rx addr for auto-ack
* @param  None
* @retval None
*/
static void nrf24_set_txaddr_aa(const uint8_t *addr)
{
    uint8_t reg_addr;

    if(memcmp(addr, last_tx_addr, ADDR_WIDTH)){
        memcpy(last_tx_addr, addr, ADDR_WIDTH);
        reg_addr = WRITE_REG | TX_ADDR;
        spi.CS_LOW();
        spi.tx(&reg_addr, 1);
        spi.tx(addr, ADDR_WIDTH);
        spi.CS_HIGH();
    }
    
    if(memcmp(addr, last_p0_addr, ADDR_WIDTH)){
        memcpy(last_p0_addr, addr, ADDR_WIDTH);
        reg_addr = WRITE_REG | RX_ADDR_P0;
        spi.CS_LOW();
        spi.tx(&reg_addr, 1);
        spi.tx(addr, ADDR_WIDTH);
        spi.CS_HIGH();
    }
}

/**
* @brief  set rx address of specified pipe
* @param  None
* @retval None
*/
void nrf24_set_rxaddr(const uint8_t *addr, uint8_t pipe)
{
    // pipe 0 and 1 use 3-5 byte addr
    if(pipe < 2){
        uint8_t reg_addr = WRITE_REG | (0x0A + pipe);
        spi.CS_LOW();
        spi.tx(&reg_addr, 1);
        spi.tx(addr, ADDR_WIDTH);
        spi.CS_HIGH();    
        if(pipe == 0){
            memcpy(last_p0_addr, addr, ADDR_WIDTH);
        }
    }
    else{
        nrf24_write_reg(RX_ADDR_P0 + pipe, addr[0]);
    }
}

/**
* @brief  set rx address of specified pipe
* @param  None
* @retval None
*/
void nrf24_read_rxaddr(uint8_t *addr, uint8_t pipe)
{
    uint8_t reg_addr = READ_REG | (0x0A + pipe);
    spi.CS_LOW();
    spi.tx(&reg_addr, 1);
    spi.rx(addr, ADDR_WIDTH);
    spi.CS_HIGH();
}

/**
* @brief  
* @param  None
* @retval None
*/
void nrf24_tx_start(const uint8_t *data, int length)
{
    uint8_t cmd = WRITE_TX;
    uint8_t temp_config = nrf24_read_reg(CONFIG);

    spi.CE_LOW();
    // clear pending interrupts
    nrf24_write_reg(STATUS, RX_DATA_RDY | TX_DS | MAX_RT);
    // enter TX mode
    temp_config &= ~PRIM_RX;
    temp_config |= PWR_UP;
    nrf24_write_reg(CONFIG, temp_config);

    nrf24_flush_tx();   // not sure if necessary 

    spi.CS_LOW();
    spi.tx(&cmd, 1);
    spi.tx(data, length);
    spi.CS_HIGH();
    spi.CE_HIGH();
}

/**
* @brief  
* @param  None
* @retval None
*/
void nrf24_setup_tx(void)
{
    uint8_t temp_config = nrf24_read_reg(CONFIG);

    spi.CE_LOW();
    // clear pending interrupts
    nrf24_write_reg(STATUS, TX_DS | MAX_RT);
    // enter TX mode
    temp_config &= ~PRIM_RX;
    temp_config |= PWR_UP;
    nrf24_write_reg(CONFIG, temp_config);
}

/**
* @brief  
* @param  None
* @retval None
*/
static void nrf24_write_txfifo(const uint8_t *data, int length)
{
    uint8_t cmd = WRITE_TX;
    spi.CS_LOW();
    spi.tx(&cmd, 1);
    spi.tx(data, length);
    spi.CS_HIGH();
}

/**
* @brief  reuse txfifo payload
* @param  None
* @retval None
*/
void nrf24_reuse_tx(void)
{
    uint8_t cmd = REUSE_TX_PAYLOAD;
    spi.CS_LOW();
    spi.tx(&cmd, 1);
    spi.CS_HIGH();
}

/**
* @brief  
* @param  None
* @retval None
*/
void nrf24_ce_high(void)
{
    spi.CE_HIGH();
}

/**
* @brief  
* @param  None
* @retval None
*/
void nrf24_ce_low(void)
{
    spi.CE_LOW();
}
/**
* @brief  
* @param  None
* @retval None
*/
void nrf24_tx_to_addr(const uint8_t *addr, const uint8_t *data, int length)
{
    uint8_t temp_config; // = nrf24_read_reg(CONFIG);

    // check if address is same as last tx, reduce spi transactions
    nrf24_set_txaddr_aa(addr);    
    spi.CE_LOW();
    nrf24_flush_tx();
    // clear pending interrupts
    nrf24_write_reg(STATUS, TX_DS | MAX_RT);
    // enter TX mode
    temp_config = base_config | PWR_UP;
    temp_config &= ~PRIM_RX;
    nrf24_write_reg(CONFIG, temp_config);

    nrf24_write_txfifo(data, length);
    spi.CE_HIGH();
}

/**
* @brief  
* @param  None
* @retval None
*/
uint8_t nrf24_data_sent(void)
{
    return(nrf24_status() & (TX_DS | MAX_RT));
}

/**
* @brief  clear tx status bits and set CE low
* @param  None
* @retval None
*/
uint8_t nrf24_tx_finish(void)
{
    spi.CE_LOW();
    return(nrf24_write_reg(STATUS, TX_DS | MAX_RT));
}
/**
* @brief  clear rx status bits and set CE low
* @param  None
* @retval None
*/
uint8_t nrf24_rx_finish(void)
{
    spi.CE_LOW();
    return(nrf24_write_reg(STATUS, RX_DATA_RDY));   // clear interrupt flag
}
/**
* @brief  disable selected RX pipe
* @param  uint8_t pipe: pipe number
* @retval None
*/
void nrf24_disable_pipe(uint8_t pipe)
{
    uint8_t tempreg;
    tempreg = nrf24_read_reg(EN_RXADDR);
    nrf24_write_reg(EN_RXADDR, tempreg & ~(1 << pipe));
}
/**
* @brief  enable an RX pipe
* @param  None
* @retval None
*/
void nrf24_enable_pipe(uint8_t pipe)
{
    uint8_t tempreg;
    tempreg = nrf24_read_reg(EN_RXADDR);
    nrf24_write_reg(EN_RXADDR, tempreg | (1 << pipe));
}
/**
* @brief  
* @param  None
* @retval None
*/
void nrf24_read_rxfifo(uint8_t *data, int length)
{
    uint8_t cmd = READ_RX;
    spi.CS_LOW();
    spi.tx(&cmd, 1);
    spi.rx(data, length);
    spi.CS_HIGH();

    nrf24_write_reg(STATUS, RX_DATA_RDY);   // clear interrupt flag
}

/**
* @brief  
* @param  None
* @retval None
*/
uint8_t nrf24_get_pwidth(void)
{
    uint8_t txdata[2], rxdata[2];
    txdata[0] = RX_PL_WIDTH;
    txdata[1] = 0xff;
    spi.CS_LOW();
    spi.txrx(txdata, rxdata, 2);
    spi.CS_HIGH();
    
    return rxdata[1];
}
/**
* @brief  read nrf24l01 status register
* @param  None
* @retval status register value
*/
uint8_t nrf24_status(void)
{
    uint8_t rxdata = 0, txdata = 0xff;
    
    spi.CS_LOW();
    spi.txrx(&txdata, &rxdata, 1);
    spi.CS_HIGH();
    
    return rxdata;
}

/**
* @brief  read nrf24l01 observe_tx register
* @param  None
* @retval observe_tx register value
*/
uint8_t nrf24_observe_tx(void)
{
    uint8_t txdata[2], rxdata[2];
    txdata[0] = READ_REG | OBSERVE_TX;
    txdata[1] = 0xff;
    
    spi.CS_LOW();
    spi.txrx(txdata, rxdata, 2);
    spi.CS_HIGH();
    
    return rxdata[1];
}

/**
* @brief  read nrf24l01 status and observe_tx register
* @param  None
* @retval uint16_t (observe_tx << 8) | status
*/
uint16_t nrf24_txstatus(void)
{
    uint8_t txdata[2], rxdata[2];
    txdata[0] = READ_REG | OBSERVE_TX;
    txdata[1] = 0xff;
    
    spi.CS_LOW();
    spi.txrx(txdata, rxdata, 2);
    spi.CS_HIGH();
    
    return (uint16_t)((rxdata[1] << 8) | rxdata[0]);
}
/**
* @brief  read nrf24l01 status register
* @param  None
* @retval status register value
*/
uint8_t nrf24_rxfifo_hasdata(void)
{
    return(nrf24_status() & RX_DATA_RDY);
}

/**
* @brief  
* @param  None
* @retval None
*/
void nrf24_flush_tx(void)
{
    uint8_t cmd = FLUSH_TX;
    spi.CS_LOW();
    spi.tx(&cmd, 1);
    spi.CS_HIGH();
}

/**
* @brief  flush TX buffer DO NOT SEND RIGHT AFTER RX - WILL CANCEL ACK
* @param  None
* @retval None
*/
void nrf24_flush_rx(void)
{
    uint8_t cmd = FLUSH_RX;
    spi.CS_LOW();
    spi.tx(&cmd, 1);
    spi.CS_HIGH();
}
