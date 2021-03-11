# gpx_extender

The GPX extender is a wireless link between the P1 port and the GPX connector. It uses an STM32L011F4P6 and an off the shelf NRF24L01+ module to transparently transmit P1 port data. 

## hardware

The PCB was designed using Eagle v8.3.1  
hardware/gpxtendo contains the design files for the first prototypes, these require some bodges to work.   
hardware/gpxtendo_rev2 contains files for the updated version that should work without further adjustment (untested)

## firmware

The project files were generated for MDK-ARM >=v5.27 using STM32CubeMX. Most of the generated code has been replaced but the project structure remains. 
