<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.3.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="1" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="7" fill="1" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="59" name="tCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="60" name="bCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="no" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="yes" active="yes"/>
<layer number="101" name="Patch_Top" color="7" fill="1" visible="yes" active="yes"/>
<layer number="102" name="Mittellin" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="Stiffner" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="7" fill="1" visible="yes" active="yes"/>
<layer number="105" name="Beschreib" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="BGA-Top" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="BD-Top" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="tBridges" color="7" fill="1" visible="yes" active="yes"/>
<layer number="109" name="tBPL" color="7" fill="1" visible="yes" active="yes"/>
<layer number="110" name="bBPL" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="MPL" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="113" name="ReferenceLS" color="7" fill="1" visible="yes" active="yes"/>
<layer number="114" name="tPlaceRed" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="7" fill="1" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="yes" active="yes"/>
<layer number="121" name="sName" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bPlace" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="129" name="Mask" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="153" name="FabDoc1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="154" name="FabDoc2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="155" name="FabDoc3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="218" name="218bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="219" name="219bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="220" name="220bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="221" name="221bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="222" name="222bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="223" name="223bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="224" name="224bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="229" name="229bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="231" name="Eagle3D_PG1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="232" name="Eagle3D_PG2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="233" name="Eagle3D_PG3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="248" name="Housing" color="7" fill="1" visible="yes" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="7" fill="1" visible="yes" active="yes"/>
<layer number="251" name="SMDround" color="7" fill="1" visible="yes" active="yes"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="255" name="routoute" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="misc">
<packages>
<package name="TSSOP-20">
<smd name="P$1" x="-2.925" y="-2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="P$2" x="-2.275" y="-2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="P$3" x="-1.625" y="-2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="P$4" x="-0.975" y="-2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="P$5" x="-0.325" y="-2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="P$6" x="0.325" y="-2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="P$7" x="0.975" y="-2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="P$8" x="1.625" y="-2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="P$9" x="2.275" y="-2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="P$10" x="2.925" y="-2.875" dx="0.4" dy="1.35" layer="1"/>
<smd name="P$11" x="2.925" y="2.875" dx="0.4" dy="1.35" layer="1" rot="R180"/>
<smd name="P$12" x="2.275" y="2.875" dx="0.4" dy="1.35" layer="1" rot="R180"/>
<smd name="P$13" x="1.625" y="2.875" dx="0.4" dy="1.35" layer="1" rot="R180"/>
<smd name="P$14" x="0.975" y="2.875" dx="0.4" dy="1.35" layer="1" rot="R180"/>
<smd name="P$15" x="0.325" y="2.875" dx="0.4" dy="1.35" layer="1" rot="R180"/>
<smd name="P$16" x="-0.325" y="2.875" dx="0.4" dy="1.35" layer="1" rot="R180"/>
<smd name="P$17" x="-0.975" y="2.875" dx="0.4" dy="1.35" layer="1" rot="R180"/>
<smd name="P$18" x="-1.625" y="2.875" dx="0.4" dy="1.35" layer="1" rot="R180"/>
<smd name="P$19" x="-2.275" y="2.875" dx="0.4" dy="1.35" layer="1" rot="R180"/>
<smd name="P$20" x="-2.925" y="2.875" dx="0.4" dy="1.35" layer="1" rot="R180"/>
<wire x1="-3.25" y1="2.2" x2="3.25" y2="2.2" width="0.1" layer="51"/>
<wire x1="3.25" y1="2.2" x2="3.25" y2="-2.2" width="0.1" layer="21"/>
<wire x1="3.25" y1="-2.2" x2="-3.25" y2="-2.2" width="0.1" layer="51"/>
<wire x1="-3.25" y1="-2.2" x2="-3.25" y2="2.2" width="0.1" layer="21"/>
<circle x="-2.7" y="-1.6" radius="0.1" width="0.2" layer="21"/>
<text x="-3.5" y="-2.1" size="1" layer="25" rot="R90">&gt;NAME</text>
</package>
<package name="0603-MMGRID">
<wire x1="-0.4" y1="0.35" x2="0.4" y2="0.35" width="0.1" layer="51"/>
<wire x1="-0.4" y1="-0.35" x2="0.4" y2="-0.35" width="0.1016" layer="51"/>
<smd name="1" x="-0.8" y="0" dx="0.95" dy="1" layer="1"/>
<smd name="2" x="0.8" y="0" dx="0.95" dy="1" layer="1"/>
<text x="2.3" y="0" size="1" layer="25" font="vector" align="center">&gt;NAME</text>
<text x="-0.6" y="-2.1" size="1" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.8" y1="-0.4" x2="-0.4" y2="0.4" layer="51"/>
<rectangle x1="0.4" y1="-0.4" x2="0.8" y2="0.4" layer="51"/>
<rectangle x1="-0.2" y1="-0.3" x2="0.2" y2="0.3" layer="35"/>
<wire x1="-1.35" y1="-0.58" x2="1.35" y2="-0.58" width="0.05" layer="39"/>
<wire x1="1.35" y1="-0.58" x2="1.35" y2="0.58" width="0.05" layer="39"/>
<wire x1="1.35" y1="0.58" x2="-1.35" y2="0.58" width="0.05" layer="39"/>
<wire x1="-1.35" y1="0.58" x2="-1.35" y2="-0.58" width="0.05" layer="39"/>
</package>
<package name="SOT23-5">
<wire x1="1.422" y1="0.81" x2="1.422" y2="-0.81" width="0.1524" layer="21"/>
<wire x1="1.422" y1="-0.81" x2="-1.422" y2="-0.81" width="0.1524" layer="51"/>
<wire x1="-1.422" y1="-0.81" x2="-1.422" y2="0.81" width="0.1524" layer="21"/>
<wire x1="-1.422" y1="0.81" x2="1.422" y2="0.81" width="0.1524" layer="51"/>
<wire x1="-0.522" y1="0.81" x2="0.522" y2="0.81" width="0.1524" layer="21"/>
<wire x1="-0.428" y1="-0.81" x2="-0.522" y2="-0.81" width="0.1524" layer="21"/>
<wire x1="0.522" y1="-0.81" x2="0.428" y2="-0.81" width="0.1524" layer="21"/>
<wire x1="-1.328" y1="-0.81" x2="-1.422" y2="-0.81" width="0.1524" layer="21"/>
<wire x1="1.422" y1="-0.81" x2="1.328" y2="-0.81" width="0.1524" layer="21"/>
<wire x1="1.328" y1="0.81" x2="1.422" y2="0.81" width="0.1524" layer="21"/>
<wire x1="-1.422" y1="0.81" x2="-1.328" y2="0.81" width="0.1524" layer="21"/>
<smd name="1" x="-0.95" y="-1.3" dx="0.55" dy="1.2" layer="1"/>
<smd name="2" x="0" y="-1.3" dx="0.55" dy="1.2" layer="1"/>
<smd name="3" x="0.95" y="-1.3" dx="0.55" dy="1.2" layer="1"/>
<smd name="4" x="0.95" y="1.3" dx="0.55" dy="1.2" layer="1"/>
<smd name="5" x="-0.95" y="1.3" dx="0.55" dy="1.2" layer="1"/>
<text x="-1.9" y="1.9" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.9" y="-3.4" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.2" y1="-1.5" x2="-0.7" y2="-0.85" layer="51"/>
<rectangle x1="-0.25" y1="-1.5" x2="0.25" y2="-0.85" layer="51"/>
<rectangle x1="0.7" y1="-1.5" x2="1.2" y2="-0.85" layer="51"/>
<rectangle x1="0.7" y1="0.85" x2="1.2" y2="1.5" layer="51"/>
<rectangle x1="-1.2" y1="0.85" x2="-0.7" y2="1.5" layer="51"/>
</package>
<package name="LED-1210">
<smd name="1" x="-1.5" y="0.7" dx="1.5" dy="1" layer="1"/>
<smd name="2" x="1.5" y="0.7" dx="1.5" dy="1" layer="1"/>
<smd name="3" x="-1.5" y="-0.7" dx="1.5" dy="1" layer="1"/>
<smd name="4" x="1.5" y="-0.7" dx="1.5" dy="1" layer="1"/>
<wire x1="-1.6" y1="-1.3" x2="1.6" y2="-1.3" width="0.1" layer="21"/>
<wire x1="1.6" y1="-1.3" x2="1.6" y2="1.3" width="0.1" layer="21"/>
<wire x1="1.6" y1="1.3" x2="-1.6" y2="1.3" width="0.1" layer="21"/>
<wire x1="-1.6" y1="1.3" x2="-1.6" y2="-1.3" width="0.1" layer="21"/>
<wire x1="0.6" y1="0.6" x2="-0.1" y2="0.6" width="0.1" layer="51"/>
<wire x1="-0.1" y1="0.6" x2="-0.6" y2="0.6" width="0.1" layer="51"/>
<wire x1="-0.1" y1="0.6" x2="0" y2="0.7" width="0.1" layer="51"/>
<wire x1="0" y1="0.7" x2="0.1" y2="0.8" width="0.1" layer="51"/>
<wire x1="0.1" y1="0.8" x2="0.2" y2="0.9" width="0.1" layer="51"/>
<wire x1="0.2" y1="0.9" x2="0.2" y2="0.3" width="0.1" layer="51"/>
<wire x1="0.2" y1="0.3" x2="0.1" y2="0.4" width="0.1" layer="51"/>
<wire x1="0.1" y1="0.4" x2="0" y2="0.5" width="0.1" layer="51"/>
<wire x1="0" y1="0.5" x2="-0.1" y2="0.6" width="0.1" layer="51"/>
<wire x1="-0.1" y1="0.8" x2="-0.2" y2="0.9" width="0.06" layer="51"/>
<wire x1="-0.2" y1="0.9" x2="-0.2" y2="0.8" width="0.06" layer="51"/>
<wire x1="-0.2" y1="0.8" x2="-0.1" y2="0.9" width="0.06" layer="51"/>
<wire x1="-0.1" y1="0.9" x2="-0.2" y2="0.9" width="0.06" layer="51"/>
<wire x1="-0.1" y1="1.1" x2="0" y2="1" width="0.06" layer="51"/>
<wire x1="-0.1" y1="1.1" x2="-0.1" y2="1" width="0.06" layer="51"/>
<wire x1="-0.1" y1="1" x2="0" y2="1.1" width="0.06" layer="51"/>
<wire x1="0" y1="1.1" x2="-0.1" y2="1.1" width="0.06" layer="51"/>
<wire x1="0.1" y1="0.8" x2="0.1" y2="0.4" width="0.1" layer="51"/>
<wire x1="0.6" y1="-0.7" x2="-0.1" y2="-0.7" width="0.1" layer="51"/>
<wire x1="-0.1" y1="-0.7" x2="-0.6" y2="-0.7" width="0.1" layer="51"/>
<wire x1="-0.1" y1="-0.7" x2="0" y2="-0.6" width="0.1" layer="51"/>
<wire x1="0" y1="-0.6" x2="0.1" y2="-0.5" width="0.1" layer="51"/>
<wire x1="0.1" y1="-0.5" x2="0.2" y2="-0.4" width="0.1" layer="51"/>
<wire x1="0.2" y1="-0.4" x2="0.2" y2="-0.6" width="0.1" layer="51"/>
<wire x1="0.2" y1="-0.9" x2="0.2" y2="-1" width="0.1" layer="51"/>
<wire x1="0.2" y1="-1" x2="0" y2="-0.8" width="0.1" layer="51"/>
<wire x1="0" y1="-0.8" x2="-0.1" y2="-0.7" width="0.1" layer="51"/>
<wire x1="-0.1" y1="-0.5" x2="-0.2" y2="-0.4" width="0.06" layer="51"/>
<wire x1="-0.2" y1="-0.4" x2="-0.2" y2="-0.5" width="0.06" layer="51"/>
<wire x1="-0.2" y1="-0.5" x2="-0.1" y2="-0.4" width="0.06" layer="51"/>
<wire x1="-0.1" y1="-0.4" x2="-0.2" y2="-0.4" width="0.06" layer="51"/>
<wire x1="-0.1" y1="-0.2" x2="0" y2="-0.3" width="0.06" layer="51"/>
<wire x1="-0.1" y1="-0.2" x2="-0.1" y2="-0.3" width="0.06" layer="51"/>
<wire x1="-0.1" y1="-0.3" x2="0" y2="-0.2" width="0.06" layer="51"/>
<wire x1="0" y1="-0.2" x2="-0.1" y2="-0.2" width="0.06" layer="51"/>
<wire x1="0" y1="-0.6" x2="0" y2="-0.8" width="0.1" layer="51"/>
<wire x1="0.1" y1="-0.6" x2="0.1" y2="-0.8" width="0.1" layer="51"/>
<wire x1="0.1" y1="-0.8" x2="0.2" y2="-0.9" width="0.1" layer="51"/>
<wire x1="0.2" y1="-0.9" x2="0.2" y2="-0.6" width="0.1" layer="51"/>
<wire x1="0.2" y1="-0.6" x2="0.1" y2="-0.5" width="0.1" layer="51"/>
<text x="-1.6" y="1.5" size="1" layer="25" font="vector">&gt;NAME</text>
<wire x1="0" y1="0.7" x2="0" y2="0.5" width="0.1" layer="51"/>
</package>
<package name="TL3330">
<smd name="CH1" x="-3.375" y="-1" dx="1.45" dy="0.8" layer="1"/>
<smd name="1" x="-2.1" y="0.885" dx="0.9" dy="1.27" layer="1"/>
<smd name="2" x="2.1" y="0.885" dx="0.9" dy="1.27" layer="1"/>
<smd name="CH0" x="3.375" y="-1" dx="1.45" dy="0.8" layer="1"/>
<wire x1="3.45" y1="1.3" x2="-3.45" y2="1.3" width="0.1" layer="21"/>
<wire x1="3.45" y1="-1.4" x2="1.5" y2="-1.4" width="0.1" layer="21"/>
<wire x1="1.5" y1="-1.4" x2="-1.5" y2="-1.4" width="0.1" layer="21"/>
<wire x1="-1.5" y1="-1.4" x2="-3.45" y2="-1.4" width="0.1" layer="21"/>
<wire x1="-3.45" y1="-1.4" x2="-3.45" y2="1.3" width="0.1" layer="21"/>
<wire x1="3.45" y1="-1.4" x2="3.45" y2="1.3" width="0.1" layer="21"/>
<wire x1="-1.5" y1="-2.4" x2="1.5" y2="-2.4" width="0.1" layer="21"/>
<wire x1="-1.5" y1="-2.4" x2="-1.5" y2="-1.4" width="0.1" layer="21"/>
<wire x1="1.5" y1="-2.4" x2="1.5" y2="-1.4" width="0.1" layer="21"/>
<text x="0.2" y="2" size="1" layer="25" font="vector">&gt;NAME</text>
</package>
<package name="GPX_LOGO">
<wire x1="3.26466875" y1="2.6162" x2="2.55103125" y2="2.6162" width="0.1" layer="21"/>
<wire x1="2.55103125" y1="2.6162" x2="2.54946875" y2="2.62061875" width="0.1" layer="21"/>
<wire x1="2.54946875" y1="2.62061875" x2="2.534909375" y2="2.6624" width="0.1" layer="21"/>
<wire x1="2.534909375" y1="2.6624" x2="2.53371875" y2="2.66658125" width="0.1" layer="21"/>
<wire x1="2.53371875" y1="2.66658125" x2="2.525840625" y2="2.69341875" width="0.1" layer="21"/>
<wire x1="2.525840625" y1="2.69341875" x2="2.47081875" y2="2.8184" width="0.1" layer="21"/>
<wire x1="2.47081875" y1="2.8184" x2="2.39408125" y2="2.93095" width="0.1" layer="21"/>
<wire x1="2.39408125" y1="2.93095" x2="2.37545" y2="2.951340625" width="0.1" layer="21"/>
<wire x1="2.37545" y1="2.951340625" x2="2.355059375" y2="2.973809375" width="0.1" layer="21"/>
<wire x1="2.355059375" y1="2.973809375" x2="2.23843125" y2="3.064140625" width="0.1" layer="21"/>
<wire x1="2.23843125" y1="3.064140625" x2="2.106190625" y2="3.13061875" width="0.1" layer="21"/>
<wire x1="2.106190625" y1="3.13061875" x2="2.07801875" y2="3.141140625" width="0.1" layer="21"/>
<wire x1="2.07801875" y1="3.141140625" x2="2.039940625" y2="3.15535" width="0.1" layer="21"/>
<wire x1="2.039940625" y1="3.15535" x2="1.845390625" y2="3.193540625" width="0.1" layer="21"/>
<wire x1="1.845390625" y1="3.193540625" x2="1.64773125" y2="3.19556875" width="0.1" layer="21"/>
<wire x1="1.64773125" y1="3.19556875" x2="1.608109375" y2="3.19163125" width="0.1" layer="21"/>
<wire x1="1.608109375" y1="3.19163125" x2="1.56788125" y2="3.1878" width="0.1" layer="21"/>
<wire x1="1.56788125" y1="3.1878" x2="1.3787" y2="3.13481875" width="0.1" layer="21"/>
<wire x1="1.3787" y1="3.13481875" x2="1.20503125" y2="3.0404" width="0.1" layer="21"/>
<wire x1="1.20503125" y1="3.0404" x2="1.172690625" y2="3.015690625" width="0.1" layer="21"/>
<wire x1="1.172690625" y1="3.015690625" x2="1.127090625" y2="2.980959375" width="0.1" layer="21"/>
<wire x1="1.127090625" y1="2.980959375" x2="0.951759375" y2="2.77363125" width="0.1" layer="21"/>
<wire x1="0.951759375" y1="2.77363125" x2="0.83561875" y2="2.528109375" width="0.1" layer="21"/>
<wire x1="0.83561875" y1="2.528109375" x2="0.81975" y2="2.4743" width="0.1" layer="21"/>
<wire x1="0.81975" y1="2.4743" x2="0.80136875" y2="2.412209375" width="0.1" layer="21"/>
<wire x1="0.80136875" y1="2.412209375" x2="0.75421875" y2="2.097590625" width="0.1" layer="21"/>
<wire x1="0.75421875" y1="2.097590625" x2="0.75088125" y2="1.77926875" width="0.1" layer="21"/>
<wire x1="0.75088125" y1="1.77926875" x2="0.754459375" y2="1.715409375" width="0.1" layer="21"/>
<wire x1="0.754459375" y1="1.715409375" x2="0.75625" y2="1.68223125" width="0.1" layer="21"/>
<wire x1="0.75625" y1="1.68223125" x2="0.779290625" y2="1.51728125" width="0.1" layer="21"/>
<wire x1="0.779290625" y1="1.51728125" x2="0.82023125" y2="1.35495" width="0.1" layer="21"/>
<wire x1="0.82023125" y1="1.35495" x2="0.831090625" y2="1.322959375" width="0.1" layer="21"/>
<wire x1="0.831090625" y1="1.322959375" x2="0.84338125" y2="1.286440625" width="0.1" layer="21"/>
<wire x1="0.84338125" y1="1.286440625" x2="0.8928" y2="1.1808" width="0.1" layer="21"/>
<wire x1="0.8928" y1="1.1808" x2="0.97563125" y2="1.055840625" width="0.1" layer="21"/>
<wire x1="0.97563125" y1="1.055840625" x2="1.07935" y2="0.947459375" width="0.1" layer="21"/>
<wire x1="1.07935" y1="0.947459375" x2="1.171140625" y2="0.875609375" width="0.1" layer="21"/>
<wire x1="1.171140625" y1="0.875609375" x2="1.203840625" y2="0.85508125" width="0.1" layer="21"/>
<wire x1="1.203840625" y1="0.85508125" x2="1.232609375" y2="0.83705" width="0.1" layer="21"/>
<wire x1="1.232609375" y1="0.83705" x2="1.38346875" y2="0.76485" width="0.1" layer="21"/>
<wire x1="1.38346875" y1="0.76485" x2="1.54316875" y2="0.71876875" width="0.1" layer="21"/>
<wire x1="1.54316875" y1="0.71876875" x2="1.5766" y2="0.713759375" width="0.1" layer="21"/>
<wire x1="1.5766" y1="0.713759375" x2="1.595209375" y2="0.711009375" width="0.1" layer="21"/>
<wire x1="1.595209375" y1="0.711009375" x2="1.786309375" y2="0.70863125" width="0.1" layer="21"/>
<wire x1="1.786309375" y1="0.70863125" x2="1.8054" y2="0.70898125" width="0.1" layer="21"/>
<wire x1="1.8054" y1="0.70898125" x2="1.845990625" y2="0.709940625" width="0.1" layer="21"/>
<wire x1="1.845990625" y1="0.709940625" x2="2.039459375" y2="0.74741875" width="0.1" layer="21"/>
<wire x1="2.039459375" y1="0.74741875" x2="2.218390625" y2="0.8293" width="0.1" layer="21"/>
<wire x1="2.218390625" y1="0.8293" x2="2.251809375" y2="0.85233125" width="0.1" layer="21"/>
<wire x1="2.251809375" y1="0.85233125" x2="2.28235" y2="0.873459375" width="0.1" layer="21"/>
<wire x1="2.28235" y1="0.873459375" x2="2.36733125" y2="0.946859375" width="0.1" layer="21"/>
<wire x1="2.36733125" y1="0.946859375" x2="2.4627" y2="1.05643125" width="0.1" layer="21"/>
<wire x1="2.4627" y1="1.05643125" x2="2.537409375" y2="1.181159375" width="0.1" layer="21"/>
<wire x1="2.537409375" y1="1.181159375" x2="2.58061875" y2="1.28511875" width="0.1" layer="21"/>
<wire x1="2.58061875" y1="1.28511875" x2="2.591140625" y2="1.32093125" width="0.1" layer="21"/>
<wire x1="2.591140625" y1="1.32093125" x2="2.593890625" y2="1.3306" width="0.1" layer="21"/>
<wire x1="2.593890625" y1="1.3306" x2="2.62276875" y2="1.426440625" width="0.1" layer="21"/>
<wire x1="2.62276875" y1="1.426440625" x2="2.625390625" y2="1.436109375" width="0.1" layer="21"/>
<wire x1="2.625390625" y1="1.436109375" x2="2.626340625" y2="1.439809375" width="0.1" layer="21"/>
<wire x1="2.626340625" y1="1.439809375" x2="2.628009375" y2="1.47621875" width="0.1" layer="21"/>
<wire x1="2.628009375" y1="1.47621875" x2="2.62825" y2="1.47931875" width="0.1" layer="21"/>
<wire x1="2.62825" y1="1.47931875" x2="2.62716875" y2="1.480509375" width="0.1" layer="21"/>
<wire x1="2.62716875" y1="1.480509375" x2="2.621340625" y2="1.4866" width="0.1" layer="21"/>
<wire x1="2.621340625" y1="1.4866" x2="2.62096875" y2="1.486959375" width="0.1" layer="21"/>
<wire x1="2.62096875" y1="1.486959375" x2="2.620490625" y2="1.48731875" width="0.1" layer="21"/>
<wire x1="2.620490625" y1="1.48731875" x2="2.616090625" y2="1.49041875" width="0.1" layer="21"/>
<wire x1="2.616090625" y1="1.49041875" x2="2.6156" y2="1.49041875" width="0.1" layer="21"/>
<wire x1="2.6156" y1="1.49041875" x2="2.61393125" y2="1.490659375" width="0.1" layer="21"/>
<wire x1="2.61393125" y1="1.490659375" x2="2.599959375" y2="1.492209375" width="0.1" layer="21"/>
<wire x1="2.599959375" y1="1.492209375" x2="2.59543125" y2="1.492209375" width="0.1" layer="21"/>
<wire x1="2.59543125" y1="1.492209375" x2="2.531940625" y2="1.49233125" width="0.1" layer="21"/>
<wire x1="2.531940625" y1="1.49233125" x2="1.89706875" y2="1.493640625" width="0.1" layer="21"/>
<wire x1="1.89706875" y1="1.493640625" x2="1.83356875" y2="1.493759375" width="0.1" layer="21"/>
<wire x1="1.83356875" y1="1.493759375" x2="1.8319" y2="1.493759375" width="0.1" layer="21"/>
<wire x1="1.8319" y1="1.493759375" x2="1.82771875" y2="1.49506875" width="0.1" layer="21"/>
<wire x1="1.82771875" y1="1.49506875" x2="1.82725" y2="1.495190625" width="0.1" layer="21"/>
<wire x1="1.82725" y1="1.495190625" x2="1.824259375" y2="1.50713125" width="0.1" layer="21"/>
<wire x1="1.824259375" y1="1.50713125" x2="1.82008125" y2="1.58853125" width="0.1" layer="21"/>
<wire x1="1.82008125" y1="1.58853125" x2="1.8165" y2="1.75586875" width="0.1" layer="21"/>
<wire x1="1.8165" y1="1.75586875" x2="1.8171" y2="1.9361" width="0.1" layer="21"/>
<wire x1="1.8171" y1="1.9361" x2="1.81973125" y2="2.03875" width="0.1" layer="21"/>
<wire x1="1.81973125" y1="2.03875" x2="1.82235" y2="2.06775" width="0.1" layer="21"/>
<wire x1="1.82235" y1="2.06775" x2="3.27208125" y2="2.06775" width="0.1" layer="21"/>
<wire x1="3.27208125" y1="2.06775" x2="3.27208125" y2="0.194309375" width="0.1" layer="21"/>
<wire x1="3.27208125" y1="0.194309375" x2="3.260859375" y2="0.19145" width="0.1" layer="21"/>
<wire x1="3.260859375" y1="0.19145" x2="3.191740625" y2="0.18726875" width="0.1" layer="21"/>
<wire x1="3.191740625" y1="0.18726875" x2="3.0521" y2="0.183809375" width="0.1" layer="21"/>
<wire x1="3.0521" y1="0.183809375" x2="2.90338125" y2="0.18465" width="0.1" layer="21"/>
<wire x1="2.90338125" y1="0.18465" x2="2.819590625" y2="0.187509375" width="0.1" layer="21"/>
<wire x1="2.819590625" y1="0.187509375" x2="2.796659375" y2="0.190140625" width="0.1" layer="21"/>
<wire x1="2.796659375" y1="0.190140625" x2="2.790459375" y2="0.22546875" width="0.1" layer="21"/>
<wire x1="2.790459375" y1="0.22546875" x2="2.72745" y2="0.58688125" width="0.1" layer="21"/>
<wire x1="2.72745" y1="0.58688125" x2="2.72086875" y2="0.624840625" width="0.1" layer="21"/>
<wire x1="2.72086875" y1="0.624840625" x2="2.71515" y2="0.618509375" width="0.1" layer="21"/>
<wire x1="2.71515" y1="0.618509375" x2="2.672409375" y2="0.570409375" width="0.1" layer="21"/>
<wire x1="2.672409375" y1="0.570409375" x2="2.668840625" y2="0.56623125" width="0.1" layer="21"/>
<wire x1="2.668840625" y1="0.56623125" x2="2.64531875" y2="0.539259375" width="0.1" layer="21"/>
<wire x1="2.64531875" y1="0.539259375" x2="2.571559375" y2="0.46108125" width="0.1" layer="21"/>
<wire x1="2.571559375" y1="0.46108125" x2="2.46723125" y2="0.3644" width="0.1" layer="21"/>
<wire x1="2.46723125" y1="0.3644" x2="2.353490625" y2="0.27976875" width="0.1" layer="21"/>
<wire x1="2.353490625" y1="0.27976875" x2="2.26015" y2="0.225109375" width="0.1" layer="21"/>
<wire x1="2.26015" y1="0.225109375" x2="2.22756875" y2="0.21006875" width="0.1" layer="21"/>
<wire x1="2.22756875" y1="0.21006875" x2="2.19796875" y2="0.19658125" width="0.1" layer="21"/>
<wire x1="2.19796875" y1="0.19658125" x2="2.045909375" y2="0.14395" width="0.1" layer="21"/>
<wire x1="2.045909375" y1="0.14395" x2="1.88848125" y2="0.10896875" width="0.1" layer="21"/>
<wire x1="1.88848125" y1="0.10896875" x2="1.85625" y2="0.1042" width="0.1" layer="21"/>
<wire x1="1.85625" y1="0.1042" x2="1.82653125" y2="0.0999" width="0.1" layer="21"/>
<wire x1="1.82653125" y1="0.0999" x2="1.52993125" y2="0.09238125" width="0.1" layer="21"/>
<wire x1="1.52993125" y1="0.09238125" x2="1.50033125" y2="0.093340625" width="0.1" layer="21"/>
<wire x1="1.50033125" y1="0.093340625" x2="1.46965" y2="0.094409375" width="0.1" layer="21"/>
<wire x1="1.46965" y1="0.094409375" x2="1.16826875" y2="0.14538125" width="0.1" layer="21"/>
<wire x1="1.16826875" y1="0.14538125" x2="1.13866875" y2="0.15396875" width="0.1" layer="21"/>
<wire x1="1.13866875" y1="0.15396875" x2="1.0963" y2="0.16638125" width="0.1" layer="21"/>
<wire x1="1.0963" y1="0.16638125" x2="0.89541875" y2="0.24898125" width="0.1" layer="21"/>
<wire x1="0.89541875" y1="0.24898125" x2="0.7091" y2="0.360340625" width="0.1" layer="21"/>
<wire x1="0.7091" y1="0.360340625" x2="0.67413125" y2="0.38708125" width="0.1" layer="21"/>
<wire x1="0.67413125" y1="0.38708125" x2="0.645009375" y2="0.4094" width="0.1" layer="21"/>
<wire x1="0.645009375" y1="0.4094" x2="0.50918125" y2="0.53043125" width="0.1" layer="21"/>
<wire x1="0.50918125" y1="0.53043125" x2="0.386840625" y2="0.665059375" width="0.1" layer="21"/>
<wire x1="0.386840625" y1="0.665059375" x2="0.36451875" y2="0.694059375" width="0.1" layer="21"/>
<wire x1="0.36451875" y1="0.694059375" x2="0.333490625" y2="0.734409375" width="0.1" layer="21"/>
<wire x1="0.333490625" y1="0.734409375" x2="0.20398125" y2="0.94913125" width="0.1" layer="21"/>
<wire x1="0.20398125" y1="0.94913125" x2="0.10778125" y2="1.18056875" width="0.1" layer="21"/>
<wire x1="0.10778125" y1="1.18056875" x2="0.093340625" y2="1.22926875" width="0.1" layer="21"/>
<wire x1="0.093340625" y1="1.22926875" x2="0.085340625" y2="1.256" width="0.1" layer="21"/>
<wire x1="0.085340625" y1="1.256" x2="0.028409375" y2="1.52801875" width="0.1" layer="21"/>
<wire x1="0.028409375" y1="1.52801875" x2="0.0259" y2="1.55583125" width="0.1" layer="21"/>
<wire x1="0.0259" y1="1.55583125" x2="0.023390625" y2="1.582559375" width="0.1" layer="21"/>
<wire x1="0.023390625" y1="1.582559375" x2="0.00166875" y2="1.84956875" width="0.1" layer="21"/>
<wire x1="0.00166875" y1="1.84956875" x2="0.000840625" y2="1.8763" width="0.1" layer="21"/>
<wire x1="0.000840625" y1="1.8763" x2="-0.00048125" y2="1.91496875" width="0.1" layer="21"/>
<wire x1="-0.00048125" y1="1.91496875" x2="0.008359375" y2="2.107140625" width="0.1" layer="21"/>
<wire x1="0.008359375" y1="2.107140625" x2="0.030790625" y2="2.29858125" width="0.1" layer="21"/>
<wire x1="0.030790625" y1="2.29858125" x2="0.0364" y2="2.3368" width="0.1" layer="21"/>
<wire x1="0.0364" y1="2.3368" x2="0.04081875" y2="2.36733125" width="0.1" layer="21"/>
<wire x1="0.04081875" y1="2.36733125" x2="0.11541875" y2="2.66383125" width="0.1" layer="21"/>
<wire x1="0.11541875" y1="2.66383125" x2="0.125209375" y2="2.69281875" width="0.1" layer="21"/>
<wire x1="0.125209375" y1="2.69281875" x2="0.140359375" y2="2.7383" width="0.1" layer="21"/>
<wire x1="0.140359375" y1="2.7383" x2="0.23848125" y2="2.95386875" width="0.1" layer="21"/>
<wire x1="0.23848125" y1="2.95386875" x2="0.36595" y2="3.15368125" width="0.1" layer="21"/>
<wire x1="0.36595" y1="3.15368125" x2="0.395790625" y2="3.19116875" width="0.1" layer="21"/>
<wire x1="0.395790625" y1="3.19116875" x2="0.428490625" y2="3.232440625" width="0.1" layer="21"/>
<wire x1="0.428490625" y1="3.232440625" x2="0.61135" y2="3.41673125" width="0.1" layer="21"/>
<wire x1="0.61135" y1="3.41673125" x2="0.8213" y2="3.5695" width="0.1" layer="21"/>
<wire x1="0.8213" y1="3.5695" x2="0.86773125" y2="3.595040625" width="0.1" layer="21"/>
<wire x1="0.86773125" y1="3.595040625" x2="0.90915" y2="3.61796875" width="0.1" layer="21"/>
<wire x1="0.90915" y1="3.61796875" x2="1.124709375" y2="3.70686875" width="0.1" layer="21"/>
<wire x1="1.124709375" y1="3.70686875" x2="1.35053125" y2="3.76528125" width="0.1" layer="21"/>
<wire x1="1.35053125" y1="3.76528125" x2="1.3972" y2="3.772909375" width="0.1" layer="21"/>
<wire x1="1.3972" y1="3.772909375" x2="1.433840625" y2="3.77898125" width="0.1" layer="21"/>
<wire x1="1.433840625" y1="3.77898125" x2="1.802059375" y2="3.798540625" width="0.1" layer="21"/>
<wire x1="1.802059375" y1="3.798540625" x2="1.838940625" y2="3.796409375" width="0.1" layer="21"/>
<wire x1="1.838940625" y1="3.796409375" x2="1.90698125" y2="3.79258125" width="0.1" layer="21"/>
<wire x1="1.90698125" y1="3.79258125" x2="2.23868125" y2="3.73853125" width="0.1" layer="21"/>
<wire x1="2.23868125" y1="3.73853125" x2="2.55378125" y2="3.62263125" width="0.1" layer="21"/>
<wire x1="2.55378125" y1="3.62263125" x2="2.61358125" y2="3.58778125" width="0.1" layer="21"/>
<wire x1="2.61358125" y1="3.58778125" x2="2.646640625" y2="3.56855" width="0.1" layer="21"/>
<wire x1="2.646640625" y1="3.56855" x2="2.80073125" y2="3.458159375" width="0.1" layer="21"/>
<wire x1="2.80073125" y1="3.458159375" x2="2.938340625" y2="3.3271" width="0.1" layer="21"/>
<wire x1="2.938340625" y1="3.3271" x2="2.963290625" y2="3.297490625" width="0.1" layer="21"/>
<wire x1="2.963290625" y1="3.297490625" x2="2.97916875" y2="3.27853125" width="0.1" layer="21"/>
<wire x1="2.97916875" y1="3.27853125" x2="3.119290625" y2="3.07668125" width="0.1" layer="21"/>
<wire x1="3.119290625" y1="3.07668125" x2="3.130859375" y2="3.05483125" width="0.1" layer="21"/>
<wire x1="3.130859375" y1="3.05483125" x2="3.144109375" y2="3.029659375" width="0.1" layer="21"/>
<wire x1="3.144109375" y1="3.029659375" x2="3.1995" y2="2.89906875" width="0.1" layer="21"/>
<wire x1="3.1995" y1="2.89906875" x2="3.23971875" y2="2.76278125" width="0.1" layer="21"/>
<wire x1="3.23971875" y1="2.76278125" x2="3.24556875" y2="2.73473125" width="0.1" layer="21"/>
<wire x1="3.24556875" y1="2.73473125" x2="3.24735" y2="2.725540625" width="0.1" layer="21"/>
<wire x1="3.24735" y1="2.725540625" x2="3.262890625" y2="2.627309375" width="0.1" layer="21"/>
<wire x1="3.262890625" y1="2.627309375" x2="3.26466875" y2="2.6162" width="0.1" layer="21"/>
<wire x1="4.476140625" y1="2.059759375" x2="4.48045" y2="2.059509375" width="0.1" layer="21"/>
<wire x1="4.48045" y1="2.059509375" x2="4.50683125" y2="2.05676875" width="0.1" layer="21"/>
<wire x1="4.50683125" y1="2.05676875" x2="4.69266875" y2="2.05676875" width="0.1" layer="21"/>
<wire x1="4.69266875" y1="2.05676875" x2="5.09081875" y2="2.057009375" width="0.1" layer="21"/>
<wire x1="5.09081875" y1="2.057009375" x2="5.279159375" y2="2.057009375" width="0.1" layer="21"/>
<wire x1="5.279159375" y1="2.057009375" x2="5.428040625" y2="2.09413125" width="0.1" layer="21"/>
<wire x1="5.428040625" y1="2.09413125" x2="5.4457" y2="2.10116875" width="0.1" layer="21"/>
<wire x1="5.4457" y1="2.10116875" x2="5.46981875" y2="2.110959375" width="0.1" layer="21"/>
<wire x1="5.46981875" y1="2.110959375" x2="5.57245" y2="2.17946875" width="0.1" layer="21"/>
<wire x1="5.57245" y1="2.17946875" x2="5.652659375" y2="2.275309375" width="0.1" layer="21"/>
<wire x1="5.652659375" y1="2.275309375" x2="5.66555" y2="2.298709375" width="0.1" layer="21"/>
<wire x1="5.66555" y1="2.298709375" x2="5.68033125" y2="2.325690625" width="0.1" layer="21"/>
<wire x1="5.68033125" y1="2.325690625" x2="5.70423125" y2="2.41795" width="0.1" layer="21"/>
<wire x1="5.70423125" y1="2.41795" x2="5.719140625" y2="2.56775" width="0.1" layer="21"/>
<wire x1="5.719140625" y1="2.56775" x2="5.71188125" y2="2.715859375" width="0.1" layer="21"/>
<wire x1="5.71188125" y1="2.715859375" x2="5.695490625" y2="2.80348125" width="0.1" layer="21"/>
<wire x1="5.695490625" y1="2.80348125" x2="5.68403125" y2="2.82996875" width="0.1" layer="21"/>
<wire x1="5.68403125" y1="2.82996875" x2="5.67401875" y2="2.853" width="0.1" layer="21"/>
<wire x1="5.67401875" y1="2.853" x2="5.60743125" y2="2.95088125" width="0.1" layer="21"/>
<wire x1="5.60743125" y1="2.95088125" x2="5.5154" y2="3.025240625" width="0.1" layer="21"/>
<wire x1="5.5154" y1="3.025240625" x2="5.492609375" y2="3.03633125" width="0.1" layer="21"/>
<wire x1="5.492609375" y1="3.03633125" x2="5.471" y2="3.046959375" width="0.1" layer="21"/>
<wire x1="5.471" y1="3.046959375" x2="5.359509375" y2="3.08311875" width="0.1" layer="21"/>
<wire x1="5.359509375" y1="3.08311875" x2="5.24446875" y2="3.099009375" width="0.1" layer="21"/>
<wire x1="5.24446875" y1="3.099009375" x2="5.22116875" y2="3.09938125" width="0.1" layer="21"/>
<wire x1="5.22116875" y1="3.09938125" x2="5.1627" y2="3.100440625" width="0.1" layer="21"/>
<wire x1="5.1627" y1="3.100440625" x2="4.57833125" y2="3.10076875" width="0.1" layer="21"/>
<wire x1="4.57833125" y1="3.10076875" x2="4.51996875" y2="3.10068125" width="0.1" layer="21"/>
<wire x1="4.51996875" y1="3.10068125" x2="4.50896875" y2="3.10068125" width="0.1" layer="21"/>
<wire x1="4.50896875" y1="3.10068125" x2="4.47973125" y2="3.094940625" width="0.1" layer="21"/>
<wire x1="4.47973125" y1="3.094940625" x2="4.476140625" y2="3.09436875" width="0.1" layer="21"/>
<wire x1="4.476140625" y1="3.09436875" x2="4.476140625" y2="2.059759375" width="0.1" layer="21"/>
<wire x1="4.4752" y1="1.45413125" x2="4.4752" y2="0.19466875" width="0.1" layer="21"/>
<wire x1="4.4752" y1="0.19466875" x2="4.462059375" y2="0.191690625" width="0.1" layer="21"/>
<wire x1="4.462059375" y1="0.191690625" x2="4.35178125" y2="0.18763125" width="0.1" layer="21"/>
<wire x1="4.35178125" y1="0.18763125" x2="4.125240625" y2="0.184290625" width="0.1" layer="21"/>
<wire x1="4.125240625" y1="0.184290625" x2="3.89283125" y2="0.185240625" width="0.1" layer="21"/>
<wire x1="3.89283125" y1="0.185240625" x2="3.77278125" y2="0.18823125" width="0.1" layer="21"/>
<wire x1="3.77278125" y1="0.18823125" x2="3.75188125" y2="0.19085" width="0.1" layer="21"/>
<wire x1="3.75188125" y1="0.19085" x2="3.75188125" y2="3.69971875" width="0.1" layer="21"/>
<wire x1="3.75188125" y1="3.69971875" x2="3.75451875" y2="3.70021875" width="0.1" layer="21"/>
<wire x1="3.75451875" y1="3.70021875" x2="3.77911875" y2="3.70473125" width="0.1" layer="21"/>
<wire x1="3.77911875" y1="3.70473125" x2="3.92328125" y2="3.70473125" width="0.1" layer="21"/>
<wire x1="3.92328125" y1="3.70473125" x2="5.28311875" y2="3.70296875" width="0.1" layer="21"/>
<wire x1="5.28311875" y1="3.70296875" x2="5.41908125" y2="3.70041875" width="0.1" layer="21"/>
<wire x1="5.41908125" y1="3.70041875" x2="5.484359375" y2="3.69923125" width="0.1" layer="21"/>
<wire x1="5.484359375" y1="3.69923125" x2="5.794709375" y2="3.6329" width="0.1" layer="21"/>
<wire x1="5.794709375" y1="3.6329" x2="6.07625" y2="3.48131875" width="0.1" layer="21"/>
<wire x1="6.07625" y1="3.48131875" x2="6.12733125" y2="3.43736875" width="0.1" layer="21"/>
<wire x1="6.12733125" y1="3.43736875" x2="6.15981875" y2="3.40958125" width="0.1" layer="21"/>
<wire x1="6.15981875" y1="3.40958125" x2="6.288" y2="3.24953125" width="0.1" layer="21"/>
<wire x1="6.288" y1="3.24953125" x2="6.37633125" y2="3.06461875" width="0.1" layer="21"/>
<wire x1="6.37633125" y1="3.06461875" x2="6.38898125" y2="3.0243" width="0.1" layer="21"/>
<wire x1="6.38898125" y1="3.0243" x2="6.404509375" y2="2.97426875" width="0.1" layer="21"/>
<wire x1="6.404509375" y1="2.97426875" x2="6.442790625" y2="2.72016875" width="0.1" layer="21"/>
<wire x1="6.442790625" y1="2.72016875" x2="6.44303125" y2="2.463540625" width="0.1" layer="21"/>
<wire x1="6.44303125" y1="2.463540625" x2="6.43958125" y2="2.4121" width="0.1" layer="21"/>
<wire x1="6.43958125" y1="2.4121" x2="6.43683125" y2="2.372109375" width="0.1" layer="21"/>
<wire x1="6.43683125" y1="2.372109375" x2="6.40365" y2="2.17505" width="0.1" layer="21"/>
<wire x1="6.40365" y1="2.17505" x2="6.33873125" y2="1.98528125" width="0.1" layer="21"/>
<wire x1="6.33873125" y1="1.98528125" x2="6.32023125" y2="1.94886875" width="0.1" layer="21"/>
<wire x1="6.32023125" y1="1.94886875" x2="6.30376875" y2="1.91676875" width="0.1" layer="21"/>
<wire x1="6.30376875" y1="1.91676875" x2="6.20015" y2="1.77591875" width="0.1" layer="21"/>
<wire x1="6.20015" y1="1.77591875" x2="6.06766875" y2="1.661340625" width="0.1" layer="21"/>
<wire x1="6.06766875" y1="1.661340625" x2="6.03686875" y2="1.642240625" width="0.1" layer="21"/>
<wire x1="6.03686875" y1="1.642240625" x2="6.002609375" y2="1.62111875" width="0.1" layer="21"/>
<wire x1="6.002609375" y1="1.62111875" x2="5.82228125" y2="1.54115" width="0.1" layer="21"/>
<wire x1="5.82228125" y1="1.54115" x2="5.632" y2="1.489109375" width="0.1" layer="21"/>
<wire x1="5.632" y1="1.489109375" x2="5.592859375" y2="1.48183125" width="0.1" layer="21"/>
<wire x1="5.592859375" y1="1.48183125" x2="5.56468125" y2="1.476690625" width="0.1" layer="21"/>
<wire x1="5.56468125" y1="1.476690625" x2="5.28096875" y2="1.453659375" width="0.1" layer="21"/>
<wire x1="5.28096875" y1="1.453659375" x2="5.25243125" y2="1.45378125" width="0.1" layer="21"/>
<wire x1="5.25243125" y1="1.45378125" x2="5.193959375" y2="1.45413125" width="0.1" layer="21"/>
<wire x1="5.193959375" y1="1.45413125" x2="4.4752" y2="1.45413125" width="0.1" layer="21"/>
<wire x1="9.57496875" y1="0.18726875" x2="8.68793125" y2="0.18726875" width="0.1" layer="21"/>
<wire x1="8.68793125" y1="0.18726875" x2="8.63278125" y2="0.28598125" width="0.1" layer="21"/>
<wire x1="8.63278125" y1="0.28598125" x2="8.07656875" y2="1.2825" width="0.1" layer="21"/>
<wire x1="8.07656875" y1="1.2825" x2="8.01988125" y2="1.38406875" width="0.1" layer="21"/>
<wire x1="8.01988125" y1="1.38406875" x2="7.997090625" y2="1.34981875" width="0.1" layer="21"/>
<wire x1="7.997090625" y1="1.34981875" x2="7.89416875" y2="1.18045" width="0.1" layer="21"/>
<wire x1="7.89416875" y1="1.18045" x2="7.79775" y2="1.01381875" width="0.1" layer="21"/>
<wire x1="7.79775" y1="1.01381875" x2="7.77831875" y2="0.981" width="0.1" layer="21"/>
<wire x1="7.77831875" y1="0.981" x2="7.75848125" y2="0.94781875" width="0.1" layer="21"/>
<wire x1="7.75848125" y1="0.94781875" x2="7.563309375" y2="0.61505" width="0.1" layer="21"/>
<wire x1="7.563309375" y1="0.61505" x2="7.54365" y2="0.58175" width="0.1" layer="21"/>
<wire x1="7.54365" y1="0.58175" x2="7.52393125" y2="0.548690625" width="0.1" layer="21"/>
<wire x1="7.52393125" y1="0.548690625" x2="7.32688125" y2="0.2195" width="0.1" layer="21"/>
<wire x1="7.32688125" y1="0.2195" x2="7.30743125" y2="0.186790625" width="0.1" layer="21"/>
<wire x1="7.30743125" y1="0.186790625" x2="6.45975" y2="0.186790625" width="0.1" layer="21"/>
<wire x1="6.45975" y1="0.186790625" x2="6.554040625" y2="0.33635" width="0.1" layer="21"/>
<wire x1="6.554040625" y1="0.33635" x2="7.49541875" y2="1.827959375" width="0.1" layer="21"/>
<wire x1="7.49541875" y1="1.827959375" x2="7.59006875" y2="1.97788125" width="0.1" layer="21"/>
<wire x1="7.59006875" y1="1.97788125" x2="7.5009" y2="2.12086875" width="0.1" layer="21"/>
<wire x1="7.5009" y1="2.12086875" x2="6.604640625" y2="3.55816875" width="0.1" layer="21"/>
<wire x1="6.604640625" y1="3.55816875" x2="6.51453125" y2="3.70273125" width="0.1" layer="21"/>
<wire x1="6.51453125" y1="3.70273125" x2="7.38705" y2="3.70273125" width="0.1" layer="21"/>
<wire x1="7.38705" y1="3.70273125" x2="7.4386" y2="3.60888125" width="0.1" layer="21"/>
<wire x1="7.4386" y1="3.60888125" x2="7.9596" y2="2.661209375" width="0.1" layer="21"/>
<wire x1="7.9596" y1="2.661209375" x2="8.012490625" y2="2.565109375" width="0.1" layer="21"/>
<wire x1="8.012490625" y1="2.565109375" x2="8.01631875" y2="2.56978125" width="0.1" layer="21"/>
<wire x1="8.01631875" y1="2.56978125" x2="8.046959375" y2="2.605940625" width="0.1" layer="21"/>
<wire x1="8.046959375" y1="2.605940625" x2="8.049009375" y2="2.609509375" width="0.1" layer="21"/>
<wire x1="8.049009375" y1="2.609509375" x2="8.07071875" y2="2.64806875" width="0.1" layer="21"/>
<wire x1="8.07071875" y1="2.64806875" x2="8.28663125" y2="3.0336" width="0.1" layer="21"/>
<wire x1="8.28663125" y1="3.0336" x2="8.30836875" y2="3.072040625" width="0.1" layer="21"/>
<wire x1="8.30836875" y1="3.072040625" x2="8.33798125" y2="3.12468125" width="0.1" layer="21"/>
<wire x1="8.33798125" y1="3.12468125" x2="8.63493125" y2="3.650090625" width="0.1" layer="21"/>
<wire x1="8.63493125" y1="3.650090625" x2="8.66463125" y2="3.70246875" width="0.1" layer="21"/>
<wire x1="8.66463125" y1="3.70246875" x2="9.50826875" y2="3.70246875" width="0.1" layer="21"/>
<wire x1="9.50826875" y1="3.70246875" x2="9.418509375" y2="3.56103125" width="0.1" layer="21"/>
<wire x1="9.418509375" y1="3.56103125" x2="8.52738125" y2="2.155959375" width="0.1" layer="21"/>
<wire x1="8.52738125" y1="2.155959375" x2="8.43871875" y2="2.01606875" width="0.1" layer="21"/>
<wire x1="8.43871875" y1="2.01606875" x2="8.44158125" y2="2.0064" width="0.1" layer="21"/>
<wire x1="8.44158125" y1="2.0064" x2="8.457090625" y2="1.979309375" width="0.1" layer="21"/>
<wire x1="8.457090625" y1="1.979309375" x2="8.50006875" y2="1.90506875" width="0.1" layer="21"/>
<wire x1="8.50006875" y1="1.90506875" x2="8.56258125" y2="1.80086875" width="0.1" layer="21"/>
<wire x1="8.56258125" y1="1.80086875" x2="8.64008125" y2="1.67446875" width="0.1" layer="21"/>
<wire x1="8.64008125" y1="1.67446875" x2="8.72741875" y2="1.53363125" width="0.1" layer="21"/>
<wire x1="8.72741875" y1="1.53363125" x2="8.81993125" y2="1.385859375" width="0.1" layer="21"/>
<wire x1="8.81993125" y1="1.385859375" x2="8.91268125" y2="1.23893125" width="0.1" layer="21"/>
<wire x1="8.91268125" y1="1.23893125" x2="8.97881875" y2="1.135090625" width="0.1" layer="21"/>
<wire x1="8.97881875" y1="1.135090625" x2="9.000990625" y2="1.10048125" width="0.1" layer="21"/>
<wire x1="9.000990625" y1="1.10048125" x2="9.04921875" y2="1.02528125" width="0.1" layer="21"/>
<wire x1="9.04921875" y1="1.02528125" x2="9.526640625" y2="0.264259375" width="0.1" layer="21"/>
<wire x1="9.526640625" y1="0.264259375" x2="9.57496875" y2="0.18726875" width="0.1" layer="21"/>
<wire x1="12.444140625" y1="4.22956875" x2="12.420509375" y2="4.18968125" width="0.001" layer="21"/>
<wire x1="12.420509375" y1="4.18968125" x2="12.24311875" y2="3.77611875" width="0.001" layer="21"/>
<wire x1="12.24311875" y1="3.77611875" x2="12.23141875" y2="3.73266875" width="0.001" layer="21"/>
<wire x1="12.23141875" y1="3.73266875" x2="12.2251" y2="3.70961875" width="0.001" layer="21"/>
<wire x1="12.2251" y1="3.70961875" x2="12.17161875" y2="3.4764" width="0.001" layer="21"/>
<wire x1="12.17161875" y1="3.4764" x2="12.16816875" y2="3.45276875" width="0.001" layer="21"/>
<wire x1="12.16816875" y1="3.45276875" x2="12.1628" y2="3.41733125" width="0.001" layer="21"/>
<wire x1="12.1628" y1="3.41733125" x2="12.15015" y2="3.23936875" width="0.001" layer="21"/>
<wire x1="12.15015" y1="3.23936875" x2="12.15503125" y2="3.06033125" width="0.001" layer="21"/>
<wire x1="12.15503125" y1="3.06033125" x2="12.1584" y2="3.0243" width="0.001" layer="21"/>
<wire x1="12.1584" y1="3.0243" x2="12.16423125" y2="2.960540625" width="0.001" layer="21"/>
<wire x1="12.16423125" y1="2.960540625" x2="12.2435" y2="2.659159375" width="0.001" layer="21"/>
<wire x1="12.2435" y1="2.659159375" x2="12.36953125" y2="2.37436875" width="0.001" layer="21"/>
<wire x1="12.36953125" y1="2.37436875" x2="12.3989" y2="2.318759375" width="0.001" layer="21"/>
<wire x1="12.3989" y1="2.318759375" x2="12.423959375" y2="2.271259375" width="0.001" layer="21"/>
<wire x1="12.423959375" y1="2.271259375" x2="12.719859375" y2="1.82461875" width="0.001" layer="21"/>
<wire x1="12.719859375" y1="1.82461875" x2="12.75423125" y2="1.78296875" width="0.001" layer="21"/>
<wire x1="12.75423125" y1="1.78296875" x2="12.77846875" y2="1.75348125" width="0.001" layer="21"/>
<wire x1="12.77846875" y1="1.75348125" x2="12.90438125" y2="1.61085" width="0.001" layer="21"/>
<wire x1="12.90438125" y1="1.61085" x2="13.03888125" y2="1.47656875" width="0.001" layer="21"/>
<wire x1="13.03888125" y1="1.47656875" x2="13.06741875" y2="1.45126875" width="0.001" layer="21"/>
<wire x1="13.06741875" y1="1.45126875" x2="13.10418125" y2="1.418690625" width="0.001" layer="21"/>
<wire x1="13.10418125" y1="1.418690625" x2="13.29766875" y2="1.26698125" width="0.001" layer="21"/>
<wire x1="13.29766875" y1="1.26698125" x2="13.50246875" y2="1.130790625" width="0.001" layer="21"/>
<wire x1="13.50246875" y1="1.130790625" x2="13.54508125" y2="1.10585" width="0.001" layer="21"/>
<wire x1="13.54508125" y1="1.10585" x2="13.60798125" y2="1.06896875" width="0.001" layer="21"/>
<wire x1="13.60798125" y1="1.06896875" x2="13.93381875" y2="0.9095" width="0.001" layer="21"/>
<wire x1="13.93381875" y1="0.9095" x2="14.27351875" y2="0.781909375" width="0.001" layer="21"/>
<wire x1="14.27351875" y1="0.781909375" x2="14.343459375" y2="0.76103125" width="0.001" layer="21"/>
<wire x1="14.343459375" y1="0.76103125" x2="14.35228125" y2="0.7584" width="0.001" layer="21"/>
<wire x1="14.35228125" y1="0.7584" x2="14.44875" y2="0.73083125" width="0.001" layer="21"/>
<wire x1="14.44875" y1="0.73083125" x2="14.46021875" y2="0.727490625" width="0.001" layer="21"/>
<wire x1="14.46021875" y1="0.727490625" x2="14.427609375" y2="0.727490625" width="0.001" layer="21"/>
<wire x1="14.427609375" y1="0.727490625" x2="14.33988125" y2="0.727009375" width="0.001" layer="21"/>
<wire x1="14.33988125" y1="0.727009375" x2="14.330109375" y2="0.72831875" width="0.001" layer="21"/>
<wire x1="14.330109375" y1="0.72831875" x2="14.29536875" y2="0.73333125" width="0.001" layer="21"/>
<wire x1="14.29536875" y1="0.73333125" x2="13.94898125" y2="0.788240625" width="0.001" layer="21"/>
<wire x1="13.94898125" y1="0.788240625" x2="13.91496875" y2="0.79611875" width="0.001" layer="21"/>
<wire x1="13.91496875" y1="0.79611875" x2="13.87103125" y2="0.806259375" width="0.001" layer="21"/>
<wire x1="13.87103125" y1="0.806259375" x2="13.43991875" y2="0.939109375" width="0.001" layer="21"/>
<wire x1="13.43991875" y1="0.939109375" x2="13.39851875" y2="0.95736875" width="0.001" layer="21"/>
<wire x1="13.39851875" y1="0.95736875" x2="13.37643125" y2="0.96715" width="0.001" layer="21"/>
<wire x1="13.37643125" y1="0.96715" x2="13.15753125" y2="1.0661" width="0.001" layer="21"/>
<wire x1="13.15753125" y1="1.0661" x2="13.13616875" y2="1.076959375" width="0.001" layer="21"/>
<wire x1="13.13616875" y1="1.076959375" x2="13.09761875" y2="1.096659375" width="0.001" layer="21"/>
<wire x1="13.09761875" y1="1.096659375" x2="12.913790625" y2="1.20885" width="0.001" layer="21"/>
<wire x1="12.913790625" y1="1.20885" x2="12.74036875" y2="1.33645" width="0.001" layer="21"/>
<wire x1="12.74036875" y1="1.33645" x2="12.70708125" y2="1.36378125" width="0.001" layer="21"/>
<wire x1="12.70708125" y1="1.36378125" x2="12.681540625" y2="1.384790625" width="0.001" layer="21"/>
<wire x1="12.681540625" y1="1.384790625" x2="12.43243125" y2="1.601659375" width="0.001" layer="21"/>
<wire x1="12.43243125" y1="1.601659375" x2="12.4088" y2="1.62458125" width="0.001" layer="21"/>
<wire x1="12.4088" y1="1.62458125" x2="12.372990625" y2="1.65943125" width="0.001" layer="21"/>
<wire x1="12.372990625" y1="1.65943125" x2="12.20661875" y2="1.84443125" width="0.001" layer="21"/>
<wire x1="12.20661875" y1="1.84443125" x2="12.057290625" y2="2.0434" width="0.001" layer="21"/>
<wire x1="12.057290625" y1="2.0434" x2="12.03018125" y2="2.08518125" width="0.001" layer="21"/>
<wire x1="12.03018125" y1="2.08518125" x2="12.00763125" y2="2.119790625" width="0.001" layer="21"/>
<wire x1="12.00763125" y1="2.119790625" x2="11.90356875" y2="2.29775" width="0.001" layer="21"/>
<wire x1="11.90356875" y1="2.29775" x2="11.813459375" y2="2.48346875" width="0.001" layer="21"/>
<wire x1="11.813459375" y1="2.48346875" x2="11.798059375" y2="2.5219" width="0.001" layer="21"/>
<wire x1="11.798059375" y1="2.5219" x2="11.792909375" y2="2.53455" width="0.001" layer="21"/>
<wire x1="11.792909375" y1="2.53455" x2="11.760440625" y2="2.592809375" width="0.001" layer="21"/>
<wire x1="11.760440625" y1="2.592809375" x2="11.71461875" y2="2.64055" width="0.001" layer="21"/>
<wire x1="11.71461875" y1="2.64055" x2="11.702909375" y2="2.647940625" width="0.001" layer="21"/>
<wire x1="11.702909375" y1="2.647940625" x2="11.691690625" y2="2.6495" width="0.001" layer="21"/>
<wire x1="11.691690625" y1="2.6495" x2="11.65686875" y2="2.651290625" width="0.001" layer="21"/>
<wire x1="11.65686875" y1="2.651290625" x2="11.61698125" y2="2.64163125" width="0.001" layer="21"/>
<wire x1="11.61698125" y1="2.64163125" x2="11.60398125" y2="2.637690625" width="0.001" layer="21"/>
<wire x1="11.60398125" y1="2.637690625" x2="11.59575" y2="2.631840625" width="0.001" layer="21"/>
<wire x1="11.59575" y1="2.631840625" x2="11.568540625" y2="2.595559375" width="0.001" layer="21"/>
<wire x1="11.568540625" y1="2.595559375" x2="11.554809375" y2="2.55091875" width="0.001" layer="21"/>
<wire x1="11.554809375" y1="2.55091875" x2="11.553490625" y2="2.540759375" width="0.001" layer="21"/>
<wire x1="11.553490625" y1="2.540759375" x2="11.548359375" y2="2.50448125" width="0.001" layer="21"/>
<wire x1="11.548359375" y1="2.50448125" x2="11.53986875" y2="2.32245" width="0.001" layer="21"/>
<wire x1="11.53986875" y1="2.32245" x2="11.54391875" y2="2.140440625" width="0.001" layer="21"/>
<wire x1="11.54391875" y1="2.140440625" x2="11.54513125" y2="2.104040625" width="0.001" layer="21"/>
<wire x1="11.54513125" y1="2.104040625" x2="11.54585" y2="2.080159375" width="0.001" layer="21"/>
<wire x1="11.54585" y1="2.080159375" x2="11.5677" y2="1.84133125" width="0.001" layer="21"/>
<wire x1="11.5677" y1="1.84133125" x2="11.571259375" y2="1.81758125" width="0.001" layer="21"/>
<wire x1="11.571259375" y1="1.81758125" x2="11.57986875" y2="1.760290625" width="0.001" layer="21"/>
<wire x1="11.57986875" y1="1.760290625" x2="11.706040625" y2="1.195840625" width="0.001" layer="21"/>
<wire x1="11.706040625" y1="1.195840625" x2="11.724759375" y2="1.1407" width="0.001" layer="21"/>
<wire x1="11.724759375" y1="1.1407" x2="11.731690625" y2="1.12016875" width="0.001" layer="21"/>
<wire x1="11.731690625" y1="1.12016875" x2="11.80233125" y2="0.914640625" width="0.001" layer="21"/>
<wire x1="11.80233125" y1="0.914640625" x2="11.809390625" y2="0.893990625" width="0.001" layer="21"/>
<wire x1="11.809390625" y1="0.893990625" x2="11.809990625" y2="0.89208125" width="0.001" layer="21"/>
<wire x1="11.809990625" y1="0.89208125" x2="11.81355" y2="0.86355" width="0.001" layer="21"/>
<wire x1="11.81355" y1="0.86355" x2="11.81416875" y2="0.8589" width="0.001" layer="21"/>
<wire x1="11.81416875" y1="0.8589" x2="11.78218125" y2="0.88001875" width="0.001" layer="21"/>
<wire x1="11.78218125" y1="0.88001875" x2="11.47543125" y2="1.08256875" width="0.001" layer="21"/>
<wire x1="11.47543125" y1="1.08256875" x2="11.445690625" y2="1.102990625" width="0.001" layer="21"/>
<wire x1="11.445690625" y1="1.102990625" x2="11.422190625" y2="1.11921875" width="0.001" layer="21"/>
<wire x1="11.422190625" y1="1.11921875" x2="11.19206875" y2="1.28763125" width="0.001" layer="21"/>
<wire x1="11.19206875" y1="1.28763125" x2="11.16928125" y2="1.30458125" width="0.001" layer="21"/>
<wire x1="11.16928125" y1="1.30458125" x2="11.12056875" y2="1.34098125" width="0.001" layer="21"/>
<wire x1="11.12056875" y1="1.34098125" x2="10.67395" y2="1.748709375" width="0.001" layer="21"/>
<wire x1="10.67395" y1="1.748709375" x2="10.633709375" y2="1.794059375" width="0.001" layer="21"/>
<wire x1="10.633709375" y1="1.794059375" x2="10.59708125" y2="1.835359375" width="0.001" layer="21"/>
<wire x1="10.59708125" y1="1.835359375" x2="10.438459375" y2="2.05796875" width="0.001" layer="21"/>
<wire x1="10.438459375" y1="2.05796875" x2="10.317309375" y2="2.303140625" width="0.001" layer="21"/>
<wire x1="10.317309375" y1="2.303140625" x2="10.2994" y2="2.35565" width="0.001" layer="21"/>
<wire x1="10.2994" y1="2.35565" x2="10.29176875" y2="2.37771875" width="0.001" layer="21"/>
<wire x1="10.29176875" y1="2.37771875" x2="10.2378" y2="2.605109375" width="0.001" layer="21"/>
<wire x1="10.2378" y1="2.605109375" x2="10.23448125" y2="2.62838125" width="0.001" layer="21"/>
<wire x1="10.23448125" y1="2.62838125" x2="10.231109375" y2="2.65081875" width="0.001" layer="21"/>
<wire x1="10.231109375" y1="2.65081875" x2="10.22131875" y2="2.874259375" width="0.001" layer="21"/>
<wire x1="10.22131875" y1="2.874259375" x2="10.221209375" y2="2.896559375" width="0.001" layer="21"/>
<wire x1="10.221209375" y1="2.896559375" x2="10.22096875" y2="2.940259375" width="0.001" layer="21"/>
<wire x1="10.22096875" y1="2.940259375" x2="10.25808125" y2="3.14771875" width="0.001" layer="21"/>
<wire x1="10.25808125" y1="3.14771875" x2="10.33948125" y2="3.342259375" width="0.001" layer="21"/>
<wire x1="10.33948125" y1="3.342259375" x2="10.36156875" y2="3.379509375" width="0.001" layer="21"/>
<wire x1="10.36156875" y1="3.379509375" x2="10.39606875" y2="3.4382" width="0.001" layer="21"/>
<wire x1="10.39606875" y1="3.4382" x2="10.61271875" y2="3.68458125" width="0.001" layer="21"/>
<wire x1="10.61271875" y1="3.68458125" x2="10.87648125" y2="3.88031875" width="0.001" layer="21"/>
<wire x1="10.87648125" y1="3.88031875" x2="10.93463125" y2="3.91373125" width="0.001" layer="21"/>
<wire x1="10.93463125" y1="3.91373125" x2="10.98581875" y2="3.943209375" width="0.001" layer="21"/>
<wire x1="10.98581875" y1="3.943209375" x2="11.25233125" y2="4.063640625" width="0.001" layer="21"/>
<wire x1="11.25233125" y1="4.063640625" x2="11.530209375" y2="4.154940625" width="0.001" layer="21"/>
<wire x1="11.530209375" y1="4.154940625" x2="11.58701875" y2="4.16976875" width="0.001" layer="21"/>
<wire x1="11.58701875" y1="4.16976875" x2="11.61603125" y2="4.1774" width="0.001" layer="21"/>
<wire x1="11.61603125" y1="4.1774" x2="11.91201875" y2="4.22943125" width="0.001" layer="21"/>
<wire x1="11.91201875" y1="4.22943125" x2="11.942009375" y2="4.23336875" width="0.001" layer="21"/>
<wire x1="11.942009375" y1="4.23336875" x2="11.97565" y2="4.2379" width="0.001" layer="21"/>
<wire x1="11.97565" y1="4.2379" x2="12.14356875" y2="4.244109375" width="0.001" layer="21"/>
<wire x1="12.14356875" y1="4.244109375" x2="12.31151875" y2="4.242790625" width="0.001" layer="21"/>
<wire x1="12.31151875" y1="4.242790625" x2="12.34518125" y2="4.2434" width="0.001" layer="21"/>
<wire x1="12.34518125" y1="4.2434" x2="12.353190625" y2="4.24365" width="0.001" layer="21"/>
<wire x1="12.353190625" y1="4.24365" x2="12.43553125" y2="4.230859375" width="0.001" layer="21"/>
<wire x1="12.43553125" y1="4.230859375" x2="12.444140625" y2="4.22956875" width="0.001" layer="21"/>
<wire x1="18.136040625" y1="2.62658125" x2="18.09833125" y2="2.61655" width="0.001" layer="21"/>
<wire x1="18.09833125" y1="2.61655" x2="17.732359375" y2="2.495059375" width="0.001" layer="21"/>
<wire x1="17.732359375" y1="2.495059375" x2="17.69691875" y2="2.48001875" width="0.001" layer="21"/>
<wire x1="17.69691875" y1="2.48001875" x2="17.66053125" y2="2.46461875" width="0.001" layer="21"/>
<wire x1="17.66053125" y1="2.46461875" x2="17.488540625" y2="2.3727" width="0.001" layer="21"/>
<wire x1="17.488540625" y1="2.3727" x2="17.330890625" y2="2.25788125" width="0.001" layer="21"/>
<wire x1="17.330890625" y1="2.25788125" x2="17.301759375" y2="2.231040625" width="0.001" layer="21"/>
<wire x1="17.301759375" y1="2.231040625" x2="17.265" y2="2.19738125" width="0.001" layer="21"/>
<wire x1="17.265" y1="2.19738125" x2="16.89616875" y2="1.861740625" width="0.001" layer="21"/>
<wire x1="16.89616875" y1="1.861740625" x2="16.85903125" y2="1.828440625" width="0.001" layer="21"/>
<wire x1="16.85903125" y1="1.828440625" x2="16.823959375" y2="1.79716875" width="0.001" layer="21"/>
<wire x1="16.823959375" y1="1.79716875" x2="16.47101875" y2="1.4866" width="0.001" layer="21"/>
<wire x1="16.47101875" y1="1.4866" x2="16.435440625" y2="1.4558" width="0.001" layer="21"/>
<wire x1="16.435440625" y1="1.4558" x2="16.40238125" y2="1.42728125" width="0.001" layer="21"/>
<wire x1="16.40238125" y1="1.42728125" x2="16.23388125" y2="1.288940625" width="0.001" layer="21"/>
<wire x1="16.23388125" y1="1.288940625" x2="16.05826875" y2="1.159559375" width="0.001" layer="21"/>
<wire x1="16.05826875" y1="1.159559375" x2="16.02175" y2="1.13556875" width="0.001" layer="21"/>
<wire x1="16.02175" y1="1.13556875" x2="15.97196875" y2="1.102990625" width="0.001" layer="21"/>
<wire x1="15.97196875" y1="1.102990625" x2="15.713309375" y2="0.9594" width="0.001" layer="21"/>
<wire x1="15.713309375" y1="0.9594" x2="15.43976875" y2="0.84731875" width="0.001" layer="21"/>
<wire x1="15.43976875" y1="0.84731875" x2="15.38248125" y2="0.83036875" width="0.001" layer="21"/>
<wire x1="15.38248125" y1="0.83036875" x2="15.3623" y2="0.82451875" width="0.001" layer="21"/>
<wire x1="15.3623" y1="0.82451875" x2="15.260859375" y2="0.79528125" width="0.001" layer="21"/>
<wire x1="15.260859375" y1="0.79528125" x2="15.15473125" y2="0.7726" width="0.001" layer="21"/>
<wire x1="15.15473125" y1="0.7726" x2="15.13231875" y2="0.76998125" width="0.001" layer="21"/>
<wire x1="15.13231875" y1="0.76998125" x2="15.13506875" y2="0.776540625" width="0.001" layer="21"/>
<wire x1="15.13506875" y1="0.776540625" x2="15.16155" y2="0.83765" width="0.001" layer="21"/>
<wire x1="15.16155" y1="0.83765" x2="15.16451875" y2="0.84421875" width="0.001" layer="21"/>
<wire x1="15.16451875" y1="0.84421875" x2="15.155109375" y2="0.854840625" width="0.001" layer="21"/>
<wire x1="15.155109375" y1="0.854840625" x2="15.060440625" y2="0.9625" width="0.001" layer="21"/>
<wire x1="15.060440625" y1="0.9625" x2="15.050540625" y2="0.97288125" width="0.001" layer="21"/>
<wire x1="15.050540625" y1="0.97288125" x2="15.00231875" y2="1.02325" width="0.001" layer="21"/>
<wire x1="15.00231875" y1="1.02325" x2="14.57441875" y2="1.568359375" width="0.001" layer="21"/>
<wire x1="14.57441875" y1="1.568359375" x2="14.5366" y2="1.626609375" width="0.001" layer="21"/>
<wire x1="14.5366" y1="1.626609375" x2="14.50078125" y2="1.68163125" width="0.001" layer="21"/>
<wire x1="14.50078125" y1="1.68163125" x2="14.34356875" y2="1.96725" width="0.001" layer="21"/>
<wire x1="14.34356875" y1="1.96725" x2="14.222090625" y2="2.2697" width="0.001" layer="21"/>
<wire x1="14.222090625" y1="2.2697" x2="14.204309375" y2="2.33308125" width="0.001" layer="21"/>
<wire x1="14.204309375" y1="2.33308125" x2="14.198440625" y2="2.35398125" width="0.001" layer="21"/>
<wire x1="14.198440625" y1="2.35398125" x2="14.15346875" y2="2.566190625" width="0.001" layer="21"/>
<wire x1="14.15346875" y1="2.566190625" x2="14.14903125" y2="2.587309375" width="0.001" layer="21"/>
<wire x1="14.14903125" y1="2.587309375" x2="14.1377" y2="2.6409" width="0.001" layer="21"/>
<wire x1="14.1377" y1="2.6409" x2="14.10761875" y2="2.91041875" width="0.001" layer="21"/>
<wire x1="14.10761875" y1="2.91041875" x2="14.105709375" y2="3.181490625" width="0.001" layer="21"/>
<wire x1="14.105709375" y1="3.181490625" x2="14.10856875" y2="3.23566875" width="0.001" layer="21"/>
<wire x1="14.10856875" y1="3.23566875" x2="14.11108125" y2="3.2846" width="0.001" layer="21"/>
<wire x1="14.11108125" y1="3.2846" x2="14.16096875" y2="3.51746875" width="0.001" layer="21"/>
<wire x1="14.16096875" y1="3.51746875" x2="14.27006875" y2="3.729090625" width="0.001" layer="21"/>
<wire x1="14.27006875" y1="3.729090625" x2="14.3023" y2="3.767409375" width="0.001" layer="21"/>
<wire x1="14.3023" y1="3.767409375" x2="14.309690625" y2="3.77636875" width="0.001" layer="21"/>
<wire x1="14.309690625" y1="3.77636875" x2="14.39848125" y2="3.8537" width="0.001" layer="21"/>
<wire x1="14.39848125" y1="3.8537" x2="14.40838125" y2="3.859659375" width="0.001" layer="21"/>
<wire x1="14.40838125" y1="3.859659375" x2="14.43478125" y2="3.87566875" width="0.001" layer="21"/>
<wire x1="14.43478125" y1="3.87566875" x2="14.57288125" y2="3.9406" width="0.001" layer="21"/>
<wire x1="14.57288125" y1="3.9406" x2="14.71981875" y2="3.98418125" width="0.001" layer="21"/>
<wire x1="14.71981875" y1="3.98418125" x2="14.75061875" y2="3.98951875" width="0.001" layer="21"/>
<wire x1="14.75061875" y1="3.98951875" x2="14.776859375" y2="3.994190625" width="0.001" layer="21"/>
<wire x1="14.776859375" y1="3.994190625" x2="15.03945" y2="4.00195" width="0.001" layer="21"/>
<wire x1="15.03945" y1="4.00195" x2="15.0657" y2="4.00028125" width="0.001" layer="21"/>
<wire x1="15.0657" y1="4.00028125" x2="15.10126875" y2="3.99813125" width="0.001" layer="21"/>
<wire x1="15.10126875" y1="3.99813125" x2="15.272190625" y2="3.96015" width="0.001" layer="21"/>
<wire x1="15.272190625" y1="3.96015" x2="15.433559375" y2="3.89131875" width="0.001" layer="21"/>
<wire x1="15.433559375" y1="3.89131875" x2="15.464359375" y2="3.87363125" width="0.001" layer="21"/>
<wire x1="15.464359375" y1="3.87363125" x2="15.502659375" y2="3.85166875" width="0.001" layer="21"/>
<wire x1="15.502659375" y1="3.85166875" x2="15.67563125" y2="3.71965" width="0.001" layer="21"/>
<wire x1="15.67563125" y1="3.71965" x2="15.82708125" y2="3.56283125" width="0.001" layer="21"/>
<wire x1="15.82708125" y1="3.56283125" x2="15.854640625" y2="3.528340625" width="0.001" layer="21"/>
<wire x1="15.854640625" y1="3.528340625" x2="15.85693125" y2="3.52548125" width="0.001" layer="21"/>
<wire x1="15.85693125" y1="3.52548125" x2="15.87603125" y2="3.49048125" width="0.001" layer="21"/>
<wire x1="15.87603125" y1="3.49048125" x2="15.878290625" y2="3.48645" width="0.001" layer="21"/>
<wire x1="15.878290625" y1="3.48645" x2="15.874490625" y2="3.48426875" width="0.001" layer="21"/>
<wire x1="15.874490625" y1="3.48426875" x2="15.84416875" y2="3.46568125" width="0.001" layer="21"/>
<wire x1="15.84416875" y1="3.46568125" x2="15.841290625" y2="3.464359375" width="0.001" layer="21"/>
<wire x1="15.841290625" y1="3.464359375" x2="15.80618125" y2="3.449340625" width="0.001" layer="21"/>
<wire x1="15.80618125" y1="3.449340625" x2="15.63516875" y2="3.365759375" width="0.001" layer="21"/>
<wire x1="15.63516875" y1="3.365759375" x2="15.472240625" y2="3.268009375" width="0.001" layer="21"/>
<wire x1="15.472240625" y1="3.268009375" x2="15.4412" y2="3.2457" width="0.001" layer="21"/>
<wire x1="15.4412" y1="3.2457" x2="15.416509375" y2="3.228040625" width="0.001" layer="21"/>
<wire x1="15.416509375" y1="3.228040625" x2="15.30036875" y2="3.131459375" width="0.001" layer="21"/>
<wire x1="15.30036875" y1="3.131459375" x2="15.2039" y2="3.015690625" width="0.001" layer="21"/>
<wire x1="15.2039" y1="3.015690625" x2="15.18923125" y2="2.98835" width="0.001" layer="21"/>
<wire x1="15.18923125" y1="2.98835" x2="15.17991875" y2="2.9713" width="0.001" layer="21"/>
<wire x1="15.17991875" y1="2.9713" x2="15.1002" y2="2.79331875" width="0.001" layer="21"/>
<wire x1="15.1002" y1="2.79331875" x2="15.093990625" y2="2.77481875" width="0.001" layer="21"/>
<wire x1="15.093990625" y1="2.77481875" x2="15.086359375" y2="2.75226875" width="0.001" layer="21"/>
<wire x1="15.086359375" y1="2.75226875" x2="15.02561875" y2="2.520959375" width="0.001" layer="21"/>
<wire x1="15.02561875" y1="2.520959375" x2="15.02023125" y2="2.49755" width="0.001" layer="21"/>
<wire x1="15.02023125" y1="2.49755" x2="15.01711875" y2="2.484059375" width="0.001" layer="21"/>
<wire x1="15.01711875" y1="2.484059375" x2="14.997190625" y2="2.346340625" width="0.001" layer="21"/>
<wire x1="14.997190625" y1="2.346340625" x2="14.99563125" y2="2.33248125" width="0.001" layer="21"/>
<wire x1="14.99563125" y1="2.33248125" x2="14.9942" y2="2.320909375" width="0.001" layer="21"/>
<wire x1="14.9942" y1="2.320909375" x2="14.98491875" y2="2.20418125" width="0.001" layer="21"/>
<wire x1="14.98491875" y1="2.20418125" x2="14.985140625" y2="2.19248125" width="0.001" layer="21"/>
<wire x1="14.985140625" y1="2.19248125" x2="14.98525" y2="2.177440625" width="0.001" layer="21"/>
<wire x1="14.98525" y1="2.177440625" x2="14.99625" y2="2.02716875" width="0.001" layer="21"/>
<wire x1="14.99625" y1="2.02716875" x2="14.998509375" y2="2.01225" width="0.001" layer="21"/>
<wire x1="14.998509375" y1="2.01225" x2="15.00136875" y2="1.991959375" width="0.001" layer="21"/>
<wire x1="15.00136875" y1="1.991959375" x2="15.041240625" y2="1.790240625" width="0.001" layer="21"/>
<wire x1="15.041240625" y1="1.790240625" x2="15.047790625" y2="1.77043125" width="0.001" layer="21"/>
<wire x1="15.047790625" y1="1.77043125" x2="15.06533125" y2="1.717440625" width="0.001" layer="21"/>
<wire x1="15.06533125" y1="1.717440625" x2="15.16011875" y2="1.45545" width="0.001" layer="21"/>
<wire x1="15.16011875" y1="1.45545" x2="15.28496875" y2="1.206709375" width="0.001" layer="21"/>
<wire x1="15.28496875" y1="1.206709375" x2="15.31753125" y2="1.16028125" width="0.001" layer="21"/>
<wire x1="15.31753125" y1="1.16028125" x2="15.32291875" y2="1.152640625" width="0.001" layer="21"/>
<wire x1="15.32291875" y1="1.152640625" x2="15.386659375" y2="1.07851875" width="0.001" layer="21"/>
<wire x1="15.386659375" y1="1.07851875" x2="15.39348125" y2="1.0704" width="0.001" layer="21"/>
<wire x1="15.39348125" y1="1.0704" x2="15.4214" y2="1.08591875" width="0.001" layer="21"/>
<wire x1="15.4214" y1="1.08591875" x2="15.565559375" y2="1.133659375" width="0.001" layer="21"/>
<wire x1="15.565559375" y1="1.133659375" x2="15.71633125" y2="1.144040625" width="0.001" layer="21"/>
<wire x1="15.71633125" y1="1.144040625" x2="15.7477" y2="1.140940625" width="0.001" layer="21"/>
<wire x1="15.7477" y1="1.140940625" x2="15.75631875" y2="1.15406875" width="0.001" layer="21"/>
<wire x1="15.75631875" y1="1.15406875" x2="15.840559375" y2="1.280709375" width="0.001" layer="21"/>
<wire x1="15.840559375" y1="1.280709375" x2="15.84905" y2="1.29311875" width="0.001" layer="21"/>
<wire x1="15.84905" y1="1.29311875" x2="15.87268125" y2="1.32845" width="0.001" layer="21"/>
<wire x1="15.87268125" y1="1.32845" x2="15.98976875" y2="1.50558125" width="0.001" layer="21"/>
<wire x1="15.98976875" y1="1.50558125" x2="16.11186875" y2="1.679359375" width="0.001" layer="21"/>
<wire x1="16.11186875" y1="1.679359375" x2="16.13813125" y2="1.7129" width="0.001" layer="21"/>
<wire x1="16.13813125" y1="1.7129" x2="16.15986875" y2="1.74095" width="0.001" layer="21"/>
<wire x1="16.15986875" y1="1.74095" x2="16.27646875" y2="1.872959375" width="0.001" layer="21"/>
<wire x1="16.27646875" y1="1.872959375" x2="16.403209375" y2="1.9953" width="0.001" layer="21"/>
<wire x1="16.403209375" y1="1.9953" x2="16.43018125" y2="2.018340625" width="0.001" layer="21"/>
<wire x1="16.43018125" y1="2.018340625" x2="16.46805" y2="2.0508" width="0.001" layer="21"/>
<wire x1="16.46805" y1="2.0508" x2="16.66305" y2="2.20536875" width="0.001" layer="21"/>
<wire x1="16.66305" y1="2.20536875" x2="16.86658125" y2="2.34813125" width="0.001" layer="21"/>
<wire x1="16.86658125" y1="2.34813125" x2="16.90881875" y2="2.37475" width="0.001" layer="21"/>
<wire x1="16.90881875" y1="2.37475" x2="16.93673125" y2="2.39251875" width="0.001" layer="21"/>
<wire x1="16.93673125" y1="2.39251875" x2="17.22831875" y2="2.54698125" width="0.001" layer="21"/>
<wire x1="17.22831875" y1="2.54698125" x2="17.25888125" y2="2.5595" width="0.001" layer="21"/>
<wire x1="17.25888125" y1="2.5595" x2="17.2903" y2="2.5725" width="0.001" layer="21"/>
<wire x1="17.2903" y1="2.5725" x2="17.45153125" y2="2.624559375" width="0.001" layer="21"/>
<wire x1="17.45153125" y1="2.624559375" x2="17.61721875" y2="2.662040625" width="0.001" layer="21"/>
<wire x1="17.61721875" y1="2.662040625" x2="17.65088125" y2="2.667759375" width="0.001" layer="21"/>
<wire x1="17.65088125" y1="2.667759375" x2="17.6738" y2="2.6717" width="0.001" layer="21"/>
<wire x1="17.6738" y1="2.6717" x2="17.9026" y2="2.679090625" width="0.001" layer="21"/>
<wire x1="17.9026" y1="2.679090625" x2="17.92551875" y2="2.677909375" width="0.001" layer="21"/>
<wire x1="17.92551875" y1="2.677909375" x2="17.943540625" y2="2.67706875" width="0.001" layer="21"/>
<wire x1="17.943540625" y1="2.67706875" x2="18.118990625" y2="2.63361875" width="0.001" layer="21"/>
<wire x1="18.118990625" y1="2.63361875" x2="18.136040625" y2="2.62658125" width="0.001" layer="21"/>
<wire x1="15.149040625" y1="0.33695" x2="15.134209375" y2="0.335159375" width="0.001" layer="21"/>
<wire x1="15.134209375" y1="0.335159375" x2="14.989559375" y2="0.317609375" width="0.001" layer="21"/>
<wire x1="14.989559375" y1="0.317609375" x2="14.975209375" y2="0.31581875" width="0.001" layer="21"/>
<wire x1="14.975209375" y1="0.31581875" x2="14.970809375" y2="0.315340625" width="0.001" layer="21"/>
<wire x1="14.970809375" y1="0.315340625" x2="14.927009375" y2="0.308659375" width="0.001" layer="21"/>
<wire x1="14.927009375" y1="0.308659375" x2="14.92256875" y2="0.3083" width="0.001" layer="21"/>
<wire x1="14.92256875" y1="0.3083" x2="14.85193125" y2="0.304240625" width="0.001" layer="21"/>
<wire x1="14.85193125" y1="0.304240625" x2="14.14556875" y2="0.29183125" width="0.001" layer="21"/>
<wire x1="14.14556875" y1="0.29183125" x2="14.074909375" y2="0.292190625" width="0.001" layer="21"/>
<wire x1="14.074909375" y1="0.292190625" x2="14.050690625" y2="0.292309375" width="0.001" layer="21"/>
<wire x1="14.050690625" y1="0.292309375" x2="13.809240625" y2="0.294809375" width="0.001" layer="21"/>
<wire x1="13.809240625" y1="0.294809375" x2="13.78536875" y2="0.2972" width="0.001" layer="21"/>
<wire x1="13.78536875" y1="0.2972" x2="13.75656875" y2="0.30018125" width="0.001" layer="21"/>
<wire x1="13.75656875" y1="0.30018125" x2="13.612509375" y2="0.31056875" width="0.001" layer="21"/>
<wire x1="13.612509375" y1="0.31056875" x2="13.468590625" y2="0.32525" width="0.001" layer="21"/>
<wire x1="13.468590625" y1="0.32525" x2="13.439809375" y2="0.33038125" width="0.001" layer="21"/>
<wire x1="13.439809375" y1="0.33038125" x2="13.39315" y2="0.33885" width="0.001" layer="21"/>
<wire x1="13.39315" y1="0.33885" x2="12.931" y2="0.4384" width="0.001" layer="21"/>
<wire x1="12.931" y1="0.4384" x2="12.88516875" y2="0.45021875" width="0.001" layer="21"/>
<wire x1="12.88516875" y1="0.45021875" x2="12.83201875" y2="0.463940625" width="0.001" layer="21"/>
<wire x1="12.83201875" y1="0.463940625" x2="12.313809375" y2="0.634740625" width="0.001" layer="21"/>
<wire x1="12.313809375" y1="0.634740625" x2="12.26305" y2="0.6548" width="0.001" layer="21"/>
<wire x1="12.26305" y1="0.6548" x2="12.25113125" y2="0.65956875" width="0.001" layer="21"/>
<wire x1="12.25113125" y1="0.65956875" x2="12.1283" y2="0.706840625" width="0.001" layer="21"/>
<wire x1="12.1283" y1="0.706840625" x2="12.115409375" y2="0.71185" width="0.001" layer="21"/>
<wire x1="12.115409375" y1="0.71185" x2="12.062440625" y2="0.82451875" width="0.001" layer="21"/>
<wire x1="12.062440625" y1="0.82451875" x2="11.86525" y2="1.40675" width="0.001" layer="21"/>
<wire x1="11.86525" y1="1.40675" x2="11.75793125" y2="2.01965" width="0.001" layer="21"/>
<wire x1="11.75793125" y1="2.01965" x2="11.74993125" y2="2.14748125" width="0.001" layer="21"/>
<wire x1="11.74993125" y1="2.14748125" x2="11.754940625" y2="2.13913125" width="0.001" layer="21"/>
<wire x1="11.754940625" y1="2.13913125" x2="11.79305" y2="2.075509375" width="0.001" layer="21"/>
<wire x1="11.79305" y1="2.075509375" x2="11.79636875" y2="2.07001875" width="0.001" layer="21"/>
<wire x1="11.79636875" y1="2.07001875" x2="11.83768125" y2="2.00198125" width="0.001" layer="21"/>
<wire x1="11.83768125" y1="2.00198125" x2="12.07258125" y2="1.685209375" width="0.001" layer="21"/>
<wire x1="12.07258125" y1="1.685209375" x2="12.342909375" y2="1.398390625" width="0.001" layer="21"/>
<wire x1="12.342909375" y1="1.398390625" x2="12.40186875" y2="1.345159375" width="0.001" layer="21"/>
<wire x1="12.40186875" y1="1.345159375" x2="12.44975" y2="1.30206875" width="0.001" layer="21"/>
<wire x1="12.44975" y1="1.30206875" x2="12.70123125" y2="1.101790625" width="0.001" layer="21"/>
<wire x1="12.70123125" y1="1.101790625" x2="12.97075" y2="0.92716875" width="0.001" layer="21"/>
<wire x1="12.97075" y1="0.92716875" x2="13.0278" y2="0.89685" width="0.001" layer="21"/>
<wire x1="13.0278" y1="0.89685" x2="13.05763125" y2="0.88098125" width="0.001" layer="21"/>
<wire x1="13.05763125" y1="0.88098125" x2="13.368309375" y2="0.743240625" width="0.001" layer="21"/>
<wire x1="13.368309375" y1="0.743240625" x2="13.40043125" y2="0.731540625" width="0.001" layer="21"/>
<wire x1="13.40043125" y1="0.731540625" x2="13.4366" y2="0.718409375" width="0.001" layer="21"/>
<wire x1="13.4366" y1="0.718409375" x2="13.804459375" y2="0.60836875" width="0.001" layer="21"/>
<wire x1="13.804459375" y1="0.60836875" x2="13.842040625" y2="0.600009375" width="0.001" layer="21"/>
<wire x1="13.842040625" y1="0.600009375" x2="13.873540625" y2="0.593090625" width="0.001" layer="21"/>
<wire x1="13.873540625" y1="0.593090625" x2="14.19105" y2="0.53591875" width="0.001" layer="21"/>
<wire x1="14.19105" y1="0.53591875" x2="14.223409375" y2="0.532340625" width="0.001" layer="21"/>
<wire x1="14.223409375" y1="0.532340625" x2="14.2579" y2="0.528640625" width="0.001" layer="21"/>
<wire x1="14.2579" y1="0.528640625" x2="14.603440625" y2="0.507390625" width="0.001" layer="21"/>
<wire x1="14.603440625" y1="0.507390625" x2="14.63828125" y2="0.50786875" width="0.001" layer="21"/>
<wire x1="14.63828125" y1="0.50786875" x2="14.68745" y2="0.5087" width="0.001" layer="21"/>
<wire x1="14.68745" y1="0.5087" x2="15.17458125" y2="0.563959375" width="0.001" layer="21"/>
<wire x1="15.17458125" y1="0.563959375" x2="15.22278125" y2="0.57435" width="0.001" layer="21"/>
<wire x1="15.22278125" y1="0.57435" x2="15.281390625" y2="0.58711875" width="0.001" layer="21"/>
<wire x1="15.281390625" y1="0.58711875" x2="15.56688125" y2="0.67281875" width="0.001" layer="21"/>
<wire x1="15.56688125" y1="0.67281875" x2="15.841290625" y2="0.78883125" width="0.001" layer="21"/>
<wire x1="15.841290625" y1="0.78883125" x2="15.89453125" y2="0.81676875" width="0.001" layer="21"/>
<wire x1="15.89453125" y1="0.81676875" x2="15.91028125" y2="0.82511875" width="0.001" layer="21"/>
<wire x1="15.91028125" y1="0.82511875" x2="16.06506875" y2="0.91488125" width="0.001" layer="21"/>
<wire x1="16.06506875" y1="0.91488125" x2="16.0806" y2="0.92383125" width="0.001" layer="21"/>
<wire x1="16.0806" y1="0.92383125" x2="16.08491875" y2="0.92633125" width="0.001" layer="21"/>
<wire x1="16.08491875" y1="0.92633125" x2="16.12883125" y2="0.95283125" width="0.001" layer="21"/>
<wire x1="16.12883125" y1="0.95283125" x2="16.133709375" y2="0.9557" width="0.001" layer="21"/>
<wire x1="16.133709375" y1="0.9557" x2="16.15506875" y2="0.93278125" width="0.001" layer="21"/>
<wire x1="16.15506875" y1="0.93278125" x2="16.235290625" y2="0.80805" width="0.001" layer="21"/>
<wire x1="16.235290625" y1="0.80805" x2="16.275959375" y2="0.667809375" width="0.001" layer="21"/>
<wire x1="16.275959375" y1="0.667809375" x2="16.27776875" y2="0.637009375" width="0.001" layer="21"/>
<wire x1="16.27776875" y1="0.637009375" x2="16.27898125" y2="0.615890625" width="0.001" layer="21"/>
<wire x1="16.27898125" y1="0.615890625" x2="16.278140625" y2="0.51036875" width="0.001" layer="21"/>
<wire x1="16.278140625" y1="0.51036875" x2="16.259509375" y2="0.406059375" width="0.001" layer="21"/>
<wire x1="16.259509375" y1="0.406059375" x2="16.25186875" y2="0.385409375" width="0.001" layer="21"/>
<wire x1="16.25186875" y1="0.385409375" x2="16.239709375" y2="0.3533" width="0.001" layer="21"/>
<wire x1="16.239709375" y1="0.3533" x2="16.15366875" y2="0.214609375" width="0.001" layer="21"/>
<wire x1="16.15366875" y1="0.214609375" x2="16.03261875" y2="0.10563125" width="0.001" layer="21"/>
<wire x1="16.03261875" y1="0.10563125" x2="16.003140625" y2="0.088209375" width="0.001" layer="21"/>
<wire x1="16.003140625" y1="0.088209375" x2="15.97961875" y2="0.07448125" width="0.001" layer="21"/>
<wire x1="15.97961875" y1="0.07448125" x2="15.85658125" y2="0.022559375" width="0.001" layer="21"/>
<wire x1="15.85658125" y1="0.022559375" x2="15.725959375" y2="-0.00048125" width="0.001" layer="21"/>
<wire x1="15.725959375" y1="-0.00048125" x2="15.69876875" y2="0.00011875" width="0.001" layer="21"/>
<wire x1="15.69876875" y1="0.00011875" x2="15.657209375" y2="0.00106875" width="0.001" layer="21"/>
<wire x1="15.657209375" y1="0.00106875" x2="15.533109375" y2="0.022440625" width="0.001" layer="21"/>
<wire x1="15.533109375" y1="0.022440625" x2="15.38821875" y2="0.08151875" width="0.001" layer="21"/>
<wire x1="15.38821875" y1="0.08151875" x2="15.26466875" y2="0.177840625" width="0.001" layer="21"/>
<wire x1="15.26466875" y1="0.177840625" x2="15.184590625" y2="0.276190625" width="0.001" layer="21"/>
<wire x1="15.184590625" y1="0.276190625" x2="15.16358125" y2="0.31211875" width="0.001" layer="21"/>
<wire x1="15.16358125" y1="0.31211875" x2="15.162740625" y2="0.31355" width="0.001" layer="21"/>
<wire x1="15.162740625" y1="0.31355" x2="15.15093125" y2="0.333609375" width="0.001" layer="21"/>
<wire x1="15.15093125" y1="0.333609375" x2="15.149040625" y2="0.33695" width="0.001" layer="21"/>
<wire x1="18.41368125" y1="1.006659375" x2="18.400440625" y2="1.02313125" width="0.001" layer="21"/>
<wire x1="18.400440625" y1="1.02313125" x2="18.275590625" y2="1.178659375" width="0.001" layer="21"/>
<wire x1="18.275590625" y1="1.178659375" x2="18.26318125" y2="1.19358125" width="0.001" layer="21"/>
<wire x1="18.26318125" y1="1.19358125" x2="18.23715" y2="1.22496875" width="0.001" layer="21"/>
<wire x1="18.23715" y1="1.22496875" x2="18.09401875" y2="1.365690625" width="0.001" layer="21"/>
<wire x1="18.09401875" y1="1.365690625" x2="17.93098125" y2="1.4829" width="0.001" layer="21"/>
<wire x1="17.93098125" y1="1.4829" x2="17.89508125" y2="1.502359375" width="0.001" layer="21"/>
<wire x1="17.89508125" y1="1.502359375" x2="17.8725" y2="1.51465" width="0.001" layer="21"/>
<wire x1="17.8725" y1="1.51465" x2="17.75471875" y2="1.55678125" width="0.001" layer="21"/>
<wire x1="17.75471875" y1="1.55678125" x2="17.63261875" y2="1.584590625" width="0.001" layer="21"/>
<wire x1="17.63261875" y1="1.584590625" x2="17.60801875" y2="1.5896" width="0.001" layer="21"/>
<wire x1="17.60801875" y1="1.5896" x2="17.56311875" y2="1.598790625" width="0.001" layer="21"/>
<wire x1="17.56311875" y1="1.598790625" x2="17.337440625" y2="1.616940625" width="0.001" layer="21"/>
<wire x1="17.337440625" y1="1.616940625" x2="17.11066875" y2="1.616459375" width="0.001" layer="21"/>
<wire x1="17.11066875" y1="1.616459375" x2="17.065409375" y2="1.616340625" width="0.001" layer="21"/>
<wire x1="17.065409375" y1="1.616340625" x2="17.05431875" y2="1.616340625" width="0.001" layer="21"/>
<wire x1="17.05431875" y1="1.616340625" x2="16.94298125" y2="1.61036875" width="0.001" layer="21"/>
<wire x1="16.94298125" y1="1.61036875" x2="16.93171875" y2="1.60978125" width="0.001" layer="21"/>
<wire x1="16.93171875" y1="1.60978125" x2="16.939859375" y2="1.618009375" width="0.001" layer="21"/>
<wire x1="16.939859375" y1="1.618009375" x2="17.021259375" y2="1.700009375" width="0.001" layer="21"/>
<wire x1="17.021259375" y1="1.700009375" x2="17.02973125" y2="1.708009375" width="0.001" layer="21"/>
<wire x1="17.02973125" y1="1.708009375" x2="17.03986875" y2="1.71766875" width="0.001" layer="21"/>
<wire x1="17.03986875" y1="1.71766875" x2="17.14298125" y2="1.812209375" width="0.001" layer="21"/>
<wire x1="17.14298125" y1="1.812209375" x2="17.15336875" y2="1.821640625" width="0.001" layer="21"/>
<wire x1="17.15336875" y1="1.821640625" x2="17.19586875" y2="1.86066875" width="0.001" layer="21"/>
<wire x1="17.19586875" y1="1.86066875" x2="17.41201875" y2="2.05091875" width="0.001" layer="21"/>
<wire x1="17.41201875" y1="2.05091875" x2="17.64238125" y2="2.223390625" width="0.001" layer="21"/>
<wire x1="17.64238125" y1="2.223390625" x2="17.692040625" y2="2.25348125" width="0.001" layer="21"/>
<wire x1="17.692040625" y1="2.25348125" x2="17.72273125" y2="2.272090625" width="0.001" layer="21"/>
<wire x1="17.72273125" y1="2.272090625" x2="17.8817" y2="2.352309375" width="0.001" layer="21"/>
<wire x1="17.8817" y1="2.352309375" x2="18.048440625" y2="2.416040625" width="0.001" layer="21"/>
<wire x1="18.048440625" y1="2.416040625" x2="18.08306875" y2="2.42641875" width="0.001" layer="21"/>
<wire x1="18.08306875" y1="2.42641875" x2="18.10885" y2="2.434190625" width="0.001" layer="21"/>
<wire x1="18.10885" y1="2.434190625" x2="18.37285" y2="2.48586875" width="0.001" layer="21"/>
<wire x1="18.37285" y1="2.48586875" x2="18.4002" y2="2.48966875" width="0.001" layer="21"/>
<wire x1="18.4002" y1="2.48966875" x2="18.44508125" y2="2.45555" width="0.001" layer="21"/>
<wire x1="18.44508125" y1="2.45555" x2="18.6055" y2="2.25156875" width="0.001" layer="21"/>
<wire x1="18.6055" y1="2.25156875" x2="18.67878125" y2="2.0021" width="0.001" layer="21"/>
<wire x1="18.67878125" y1="2.0021" x2="18.680209375" y2="1.945290625" width="0.001" layer="21"/>
<wire x1="18.680209375" y1="1.945290625" x2="18.680209375" y2="1.94421875" width="0.001" layer="21"/>
<wire x1="18.680209375" y1="1.94421875" x2="18.68008125" y2="1.933" width="0.001" layer="21"/>
<wire x1="18.68008125" y1="1.933" x2="18.680209375" y2="1.9318" width="0.001" layer="21"/>
<wire x1="18.680209375" y1="1.9318" x2="18.68271875" y2="1.8923" width="0.001" layer="21"/>
<wire x1="18.68271875" y1="1.8923" x2="18.67101875" y2="1.697740625" width="0.001" layer="21"/>
<wire x1="18.67101875" y1="1.697740625" x2="18.63355" y2="1.506290625" width="0.001" layer="21"/>
<wire x1="18.63355" y1="1.506290625" x2="18.62316875" y2="1.468340625" width="0.001" layer="21"/>
<wire x1="18.62316875" y1="1.468340625" x2="18.615159375" y2="1.43933125" width="0.001" layer="21"/>
<wire x1="18.615159375" y1="1.43933125" x2="18.570390625" y2="1.29575" width="0.001" layer="21"/>
<wire x1="18.570390625" y1="1.29575" x2="18.51515" y2="1.155859375" width="0.001" layer="21"/>
<wire x1="18.51515" y1="1.155859375" x2="18.502009375" y2="1.12865" width="0.001" layer="21"/>
<wire x1="18.502009375" y1="1.12865" x2="18.496509375" y2="1.117659375" width="0.001" layer="21"/>
<wire x1="18.496509375" y1="1.117659375" x2="18.46538125" y2="1.064309375" width="0.001" layer="21"/>
<wire x1="18.46538125" y1="1.064309375" x2="18.42406875" y2="1.0155" width="0.001" layer="21"/>
<wire x1="18.42406875" y1="1.0155" x2="18.41368125" y2="1.006659375" width="0.001" layer="21"/>
<wire x1="16.1" y1="0.8" x2="15.2" y2="0.4" width="0.1" layer="21"/>
<wire x1="15.2" y1="0.4" x2="15.4" y2="0.4" width="0.1" layer="21"/>
<wire x1="15.4" y1="0.4" x2="16.1" y2="0.7" width="0.1" layer="21"/>
<wire x1="16.1" y1="0.7" x2="16.1" y2="0.6" width="0.1" layer="21"/>
<wire x1="16.1" y1="0.6" x2="15.3" y2="0.3" width="0.1" layer="21"/>
<wire x1="15.3" y1="0.3" x2="15.5" y2="0.3" width="0.1" layer="21"/>
<wire x1="15.5" y1="0.3" x2="16.2" y2="0.6" width="0.1" layer="21"/>
<wire x1="16.2" y1="0.6" x2="16.2" y2="0.5" width="0.1" layer="21"/>
<wire x1="16.2" y1="0.5" x2="15.4" y2="0.2" width="0.1" layer="21"/>
<wire x1="15.4" y1="0.2" x2="15.6" y2="0.2" width="0.1" layer="21"/>
<wire x1="15.6" y1="0.2" x2="16.2" y2="0.4" width="0.1" layer="21"/>
<wire x1="16.2" y1="0.4" x2="15.5" y2="0.1" width="0.1" layer="21"/>
<wire x1="15.5" y1="0.1" x2="15.7" y2="0.1" width="0.1" layer="21"/>
<wire x1="15.7" y1="0.1" x2="16.1" y2="0.3" width="0.1" layer="21"/>
<wire x1="16.1" y1="0.3" x2="15.9" y2="0.1" width="0.1" layer="21"/>
<wire x1="15.9" y1="0.1" x2="15.7" y2="0.1" width="0.1" layer="21"/>
<wire x1="15.2" y1="0.4" x2="14.7" y2="0.4" width="0.1" layer="21"/>
<wire x1="14.7" y1="0.4" x2="14.2" y2="0.4" width="0.1" layer="21"/>
<wire x1="14.2" y1="0.4" x2="13.4" y2="0.4" width="0.1" layer="21"/>
<wire x1="13.4" y1="0.4" x2="13.4" y2="0.5" width="0.1" layer="21"/>
<wire x1="13.4" y1="0.5" x2="14" y2="0.5" width="0.1" layer="21"/>
<wire x1="14" y1="0.5" x2="14.1" y2="0.5" width="0.1" layer="21"/>
<wire x1="14.1" y1="0.5" x2="14.22" y2="0.48" width="0.1" layer="21"/>
<wire x1="14.22" y1="0.48" x2="14.7" y2="0.4" width="0.1" layer="21"/>
<wire x1="15.1" y1="0.5" x2="14.2" y2="0.4" width="0.1" layer="21"/>
<wire x1="15.1" y1="0.5" x2="15.2" y2="0.5" width="0.1" layer="21"/>
<wire x1="15.2" y1="0.5" x2="15.9" y2="0.7" width="0.1" layer="21"/>
<wire x1="15.2" y1="0.4" x2="15.5" y2="0.1" width="0.1" layer="21"/>
<wire x1="16.1" y1="0.8" x2="16.2" y2="0.6" width="0.1" layer="21"/>
<wire x1="14.1" y1="0.5" x2="13.5" y2="0.6" width="0.1" layer="21"/>
<wire x1="13.3" y1="0.7" x2="14" y2="0.5" width="0.1" layer="21"/>
<wire x1="13.5" y1="0.6" x2="13.06" y2="0.82" width="0.1" layer="21"/>
<wire x1="13.06" y1="0.82" x2="12.9" y2="0.9" width="0.1" layer="21"/>
<wire x1="12.9" y1="0.9" x2="12.75" y2="0.99" width="0.1" layer="21"/>
<wire x1="12.75" y1="0.99" x2="12.4" y2="1.2" width="0.1" layer="21"/>
<wire x1="13.01" y1="0.84" x2="12.64" y2="1.08" width="0.1" layer="21"/>
<wire x1="13.4" y1="0.67" x2="13.06" y2="0.82" width="0.1" layer="21"/>
<wire x1="15.15" y1="0.39" x2="14.92" y2="0.36" width="0.1" layer="21"/>
<wire x1="14.92" y1="0.36" x2="14.5" y2="0.35" width="0.1" layer="21"/>
<wire x1="14.5" y1="0.35" x2="13.77" y2="0.35" width="0.1" layer="21"/>
<wire x1="13.77" y1="0.35" x2="13.46" y2="0.38" width="0.1" layer="21"/>
<wire x1="13.46" y1="0.38" x2="12.99" y2="0.48" width="0.1" layer="21"/>
<wire x1="12.99" y1="0.48" x2="12.84" y2="0.52" width="0.1" layer="21"/>
<wire x1="12.84" y1="0.52" x2="12.34" y2="0.68" width="0.1" layer="21"/>
<wire x1="12.34" y1="0.68" x2="12.16" y2="0.75" width="0.1" layer="21"/>
<wire x1="12.16" y1="0.75" x2="12.12" y2="0.83" width="0.1" layer="21"/>
<wire x1="12.12" y1="0.83" x2="11.92" y2="1.41" width="0.1" layer="21"/>
<wire x1="11.92" y1="1.41" x2="11.83" y2="1.92" width="0.1" layer="21"/>
<wire x1="11.83" y1="1.92" x2="12.05" y2="1.63" width="0.1" layer="21"/>
<wire x1="12.05" y1="1.63" x2="12.34" y2="1.32" width="0.1" layer="21"/>
<wire x1="12.34" y1="1.32" x2="12.75" y2="0.99" width="0.1" layer="21"/>
<wire x1="11.9" y1="1.7" x2="12.2" y2="0.8" width="0.1" layer="21"/>
<wire x1="12.2" y1="0.8" x2="12" y2="1.6" width="0.1" layer="21"/>
<wire x1="12" y1="1.6" x2="12" y2="1.7" width="0.1" layer="21"/>
<wire x1="12.1" y1="1.5" x2="12.28" y2="0.79" width="0.1" layer="21"/>
<wire x1="12.28" y1="0.79" x2="13.34" y2="0.47" width="0.1" layer="21"/>
<wire x1="13.34" y1="0.47" x2="13.45" y2="0.55" width="0.1" layer="21"/>
<wire x1="13.45" y1="0.55" x2="13.31" y2="0.58" width="0.1" layer="21"/>
<wire x1="13.31" y1="0.58" x2="12.35" y2="0.87" width="0.1" layer="21"/>
<wire x1="12.35" y1="0.87" x2="12.21" y2="1.41" width="0.1" layer="21"/>
<wire x1="12.3" y1="1.28" x2="12.42" y2="0.95" width="0.1" layer="21"/>
<wire x1="12.42" y1="0.95" x2="13.32" y2="0.65" width="0.1" layer="21"/>
<wire x1="12.9" y1="0.85" x2="12.47" y2="1.03" width="0.1" layer="21"/>
<wire x1="12.47" y1="1.03" x2="12.42" y2="1.11" width="0.1" layer="21"/>
<wire x1="12.51" y1="1.07" x2="12.52" y2="1.07" width="0.1" layer="21"/>
<wire x1="15.47" y1="0.12" x2="15.41" y2="0.13" width="0.1" layer="21"/>
<wire x1="15.41" y1="0.13" x2="15.31" y2="0.21" width="0.1" layer="21"/>
<wire x1="15.31" y1="0.21" x2="15.2" y2="0.36" width="0.1" layer="21"/>
<wire x1="15.43" y1="0.12" x2="15.55" y2="0.07" width="0.1" layer="21"/>
<wire x1="15.55" y1="0.07" x2="15.67" y2="0.05" width="0.1" layer="21"/>
<wire x1="15.67" y1="0.05" x2="15.83" y2="0.07" width="0.1" layer="21"/>
<wire x1="15.83" y1="0.07" x2="15.95" y2="0.12" width="0.1" layer="21"/>
<wire x1="15.95" y1="0.12" x2="16" y2="0.15" width="0.1" layer="21"/>
<wire x1="16" y1="0.15" x2="16.11" y2="0.25" width="0.1" layer="21"/>
<wire x1="16.11" y1="0.25" x2="16.19" y2="0.37" width="0.1" layer="21"/>
<wire x1="16.19" y1="0.37" x2="16.21" y2="0.43" width="0.1" layer="21"/>
<wire x1="16.21" y1="0.43" x2="16.22" y2="0.5" width="0.1" layer="21"/>
<wire x1="16.22" y1="0.5" x2="16.22" y2="0.65" width="0.1" layer="21"/>
<wire x1="16.22" y1="0.65" x2="16.19" y2="0.78" width="0.1" layer="21"/>
<wire x1="16.19" y1="0.78" x2="16.12" y2="0.88" width="0.1" layer="21"/>
<wire x1="16.12" y1="0.88" x2="15.86" y2="0.74" width="0.1" layer="21"/>
<wire x1="15.86" y1="0.74" x2="15.58" y2="0.62" width="0.1" layer="21"/>
<wire x1="15.58" y1="0.62" x2="15.21" y2="0.51" width="0.1" layer="21"/>
<wire x1="15.21" y1="0.51" x2="15.15" y2="0.51" width="0.1" layer="21"/>
<wire x1="14.8" y1="0.44" x2="14.22" y2="0.48" width="0.1" layer="21"/>
<wire x1="17.07" y1="1.67" x2="17.08" y2="1.67" width="0.1" layer="21"/>
<wire x1="17.08" y1="1.67" x2="17.46" y2="2.02" width="0.1" layer="21"/>
<wire x1="17.46" y1="2.02" x2="17.67" y2="2.18" width="0.1" layer="21"/>
<wire x1="17.67" y1="2.18" x2="17.9" y2="2.3" width="0.1" layer="21"/>
<wire x1="17.9" y1="2.3" x2="18.11" y2="2.38" width="0.1" layer="21"/>
<wire x1="18.11" y1="2.38" x2="18.38" y2="2.43" width="0.1" layer="21"/>
<wire x1="18.38" y1="2.43" x2="18.41" y2="2.41" width="0.1" layer="21"/>
<wire x1="18.41" y1="2.41" x2="18.56" y2="2.22" width="0.1" layer="21"/>
<wire x1="18.56" y1="2.22" x2="18.62" y2="2" width="0.1" layer="21"/>
<wire x1="18.62" y1="2" x2="18.63" y2="1.89" width="0.1" layer="21"/>
<wire x1="18.63" y1="1.89" x2="18.62" y2="1.72" width="0.1" layer="21"/>
<wire x1="18.62" y1="1.72" x2="18.58" y2="1.52" width="0.1" layer="21"/>
<wire x1="18.58" y1="1.52" x2="18.49" y2="1.23" width="0.1" layer="21"/>
<wire x1="18.49" y1="1.23" x2="18.42" y2="1.09" width="0.1" layer="21"/>
<wire x1="18.42" y1="1.09" x2="18.31" y2="1.23" width="0.1" layer="21"/>
<wire x1="18.31" y1="1.23" x2="18.13" y2="1.41" width="0.1" layer="21"/>
<wire x1="18.13" y1="1.41" x2="17.97" y2="1.53" width="0.1" layer="21"/>
<wire x1="17.97" y1="1.53" x2="17.72" y2="1.63" width="0.1" layer="21"/>
<wire x1="17.81" y1="1.6" x2="17.58" y2="1.65" width="0.1" layer="21"/>
<wire x1="17.58" y1="1.65" x2="17.32" y2="1.67" width="0.1" layer="21"/>
<wire x1="17.32" y1="1.67" x2="17.08" y2="1.67" width="0.1" layer="21"/>
<wire x1="17.2" y1="1.7" x2="17.72" y2="2.14" width="0.1" layer="21"/>
<wire x1="17.72" y1="2.14" x2="18.36" y2="2.37" width="0.1" layer="21"/>
<wire x1="18.36" y1="2.37" x2="18.56" y2="2.01" width="0.1" layer="21"/>
<wire x1="18.56" y1="2.01" x2="18.49" y2="1.51" width="0.1" layer="21"/>
<wire x1="18.49" y1="1.51" x2="18.4" y2="1.23" width="0.1" layer="21"/>
<wire x1="18.4" y1="1.23" x2="18.35" y2="1.31" width="0.1" layer="21"/>
<wire x1="18.35" y1="1.31" x2="18.04" y2="1.6" width="0.1" layer="21"/>
<wire x1="18.04" y1="1.6" x2="17.64" y2="1.73" width="0.1" layer="21"/>
<wire x1="17.64" y1="1.73" x2="17.34" y2="1.74" width="0.1" layer="21"/>
<wire x1="17.34" y1="1.74" x2="17.76" y2="2.07" width="0.1" layer="21"/>
<wire x1="17.76" y1="2.07" x2="18.34" y2="2.27" width="0.1" layer="21"/>
<wire x1="18.34" y1="2.27" x2="18.46" y2="1.99" width="0.1" layer="21"/>
<wire x1="18.46" y1="1.99" x2="18.39" y2="1.51" width="0.1" layer="21"/>
<wire x1="18.39" y1="1.51" x2="18.38" y2="1.39" width="0.1" layer="21"/>
<wire x1="18.38" y1="1.39" x2="18.11" y2="1.66" width="0.1" layer="21"/>
<wire x1="18.11" y1="1.66" x2="17.66" y2="1.82" width="0.1" layer="21"/>
<wire x1="17.66" y1="1.82" x2="17.5" y2="1.82" width="0.1" layer="21"/>
<wire x1="17.62" y1="1.89" x2="17.8" y2="1.99" width="0.1" layer="21"/>
<wire x1="17.8" y1="1.99" x2="18.3" y2="2.16" width="0.1" layer="21"/>
<wire x1="18.3" y1="2.16" x2="18.36" y2="1.97" width="0.1" layer="21"/>
<wire x1="18.36" y1="1.97" x2="18.33" y2="1.55" width="0.1" layer="21"/>
<wire x1="18.33" y1="1.55" x2="18.18" y2="1.73" width="0.1" layer="21"/>
<wire x1="18.18" y1="1.73" x2="17.71" y2="1.9" width="0.1" layer="21"/>
<wire x1="17.79" y1="1.92" x2="18.26" y2="2.06" width="0.1" layer="21"/>
<wire x1="18.26" y1="2.06" x2="18.27" y2="1.71" width="0.1" layer="21"/>
<wire x1="18.21" y1="1.79" x2="17.9" y2="1.9" width="0.1" layer="21"/>
<wire x1="18" y1="1.93" x2="18.19" y2="1.96" width="0.1" layer="21"/>
<wire x1="18.19" y1="1.96" x2="18.18" y2="1.87" width="0.1" layer="21"/>
<wire x1="18.18" y1="1.87" x2="18.1" y2="1.88" width="0.1" layer="21"/>
<wire x1="17.03" y1="1.69" x2="16.97" y2="1.63" width="0.02" layer="21"/>
<wire x1="16.97" y1="1.63" x2="17.05" y2="1.63" width="0.02" layer="21"/>
<wire x1="17.05" y1="1.63" x2="17.02" y2="1.66" width="0.02" layer="21"/>
<wire x1="17.02" y1="1.66" x2="17" y2="1.64" width="0.02" layer="21"/>
<wire x1="17" y1="1.64" x2="17.02" y2="1.64" width="0.02" layer="21"/>
<wire x1="16.95" y1="1.62" x2="16.96" y2="1.63" width="0.01" layer="21"/>
<wire x1="16.95" y1="1.62" x2="17.02" y2="1.62" width="0.01" layer="21"/>
<wire x1="17.05" y1="1.72" x2="17.31" y2="1.95" width="0.01" layer="21"/>
<wire x1="17.31" y1="1.95" x2="17.42" y2="2.05" width="0.01" layer="21"/>
<wire x1="17.12" y1="1.78" x2="17.05" y2="1.71" width="0.01" layer="21"/>
<wire x1="17.05" y1="1.72" x2="17.02" y2="1.69" width="0.01" layer="21"/>
<wire x1="17.02" y1="1.62" x2="17.18" y2="1.63" width="0.01" layer="21"/>
<wire x1="18.41" y1="1.02" x2="18.26" y2="1.21" width="0.01" layer="21"/>
<wire x1="18.42" y1="1.02" x2="18.38" y2="1.07" width="0.01" layer="21"/>
<wire x1="18.41" y1="1.04" x2="18.43" y2="1.04" width="0.01" layer="21"/>
<wire x1="18.42" y1="1.03" x2="18.43" y2="1.03" width="0.01" layer="21"/>
<wire x1="18.42" y1="1.03" x2="18.41" y2="1.04" width="0.01" layer="21"/>
<wire x1="18.41" y1="1.02" x2="18.42" y2="1.02" width="0.01" layer="21"/>
<wire x1="18.46" y1="1.07" x2="18.42" y2="1.02" width="0.01" layer="21"/>
<wire x1="16.05" y1="0.9" x2="16.13" y2="0.94" width="0.01" layer="21"/>
<wire x1="16.13" y1="0.94" x2="16.14" y2="0.94" width="0.01" layer="21"/>
<wire x1="16.14" y1="0.94" x2="16.22" y2="0.82" width="0.01" layer="21"/>
<wire x1="16.15" y1="0.92" x2="16.14" y2="0.93" width="0.01" layer="21"/>
<wire x1="16.14" y1="0.93" x2="16.12" y2="0.93" width="0.01" layer="21"/>
<wire x1="15.23" y1="0.23" x2="15.17" y2="0.32" width="0.01" layer="21"/>
<wire x1="11.78" y1="1.93" x2="11.77" y2="1.99" width="0.01" layer="21"/>
<wire x1="11.77" y1="1.99" x2="11.76" y2="2.12" width="0.01" layer="21"/>
<wire x1="11.76" y1="2.12" x2="11.85" y2="1.97" width="0.01" layer="21"/>
<wire x1="11.85" y1="1.97" x2="11.87" y2="1.95" width="0.01" layer="21"/>
<wire x1="11.84" y1="1.97" x2="11.76" y2="2.1" width="0.01" layer="21"/>
<wire x1="11.85" y1="1.97" x2="11.84" y2="1.96" width="0.01" layer="21"/>
<wire x1="11.78" y1="1.93" x2="11.77" y2="2.08" width="0.01" layer="21"/>
<wire x1="11.84" y1="1.96" x2="11.77" y2="2.07" width="0.01" layer="21"/>
<wire x1="11.78" y1="2.05" x2="11.79" y2="1.91" width="0.01" layer="21"/>
<wire x1="11.78" y1="2.04" x2="11.83" y2="1.96" width="0.01" layer="21"/>
<wire x1="11.78" y1="2.03" x2="11.82" y2="1.96" width="0.01" layer="21"/>
<wire x1="11.79" y1="1.95" x2="11.79" y2="1.96" width="0.01" layer="21"/>
<wire x1="11.79" y1="1.96" x2="11.79" y2="2" width="0.01" layer="21"/>
<wire x1="11.79" y1="2" x2="11.8" y2="1.98" width="0.01" layer="21"/>
<wire x1="11.8" y1="1.98" x2="11.81" y2="1.96" width="0.01" layer="21"/>
<wire x1="11.81" y1="1.96" x2="11.8" y2="1.96" width="0.01" layer="21"/>
<wire x1="11.8" y1="1.96" x2="11.79" y2="1.96" width="0.01" layer="21"/>
<wire x1="11.79" y1="1.96" x2="11.8" y2="1.98" width="0.01" layer="21"/>
<wire x1="11.8" y1="1.98" x2="11.8" y2="1.96" width="0.01" layer="21"/>
<wire x1="15.23" y1="0.85" x2="15.42" y2="0.9" width="0.1" layer="21"/>
<wire x1="15.42" y1="0.9" x2="15.68" y2="1" width="0.1" layer="21"/>
<wire x1="15.68" y1="1" x2="15.95" y2="1.15" width="0.1" layer="21"/>
<wire x1="15.95" y1="1.15" x2="16.2" y2="1.33" width="0.1" layer="21"/>
<wire x1="16.2" y1="1.33" x2="16.53" y2="1.61" width="0.1" layer="21"/>
<wire x1="16.53" y1="1.61" x2="16.65" y2="1.72" width="0.1" layer="21"/>
<wire x1="16.65" y1="1.72" x2="16.92" y2="1.96" width="0.1" layer="21"/>
<wire x1="16.92" y1="1.96" x2="17.29" y2="2.29" width="0.1" layer="21"/>
<wire x1="17.29" y1="2.29" x2="17.44" y2="2.41" width="0.1" layer="21"/>
<wire x1="17.44" y1="2.41" x2="17.61" y2="2.5" width="0.1" layer="21"/>
<wire x1="17.61" y1="2.5" x2="17.72" y2="2.55" width="0.1" layer="21"/>
<wire x1="17.72" y1="2.55" x2="17.95" y2="2.62" width="0.1" layer="21"/>
<wire x1="17.95" y1="2.62" x2="17.69" y2="2.62" width="0.1" layer="21"/>
<wire x1="17.69" y1="2.62" x2="17.46" y2="2.57" width="0.1" layer="21"/>
<wire x1="17.46" y1="2.57" x2="17.3" y2="2.52" width="0.1" layer="21"/>
<wire x1="17.3" y1="2.52" x2="17.1" y2="2.42" width="0.1" layer="21"/>
<wire x1="17.1" y1="2.42" x2="16.95" y2="2.34" width="0.1" layer="21"/>
<wire x1="16.95" y1="2.34" x2="16.72" y2="2.18" width="0.1" layer="21"/>
<wire x1="16.72" y1="2.18" x2="16.5" y2="2.01" width="0.1" layer="21"/>
<wire x1="16.5" y1="2.01" x2="16.4" y2="1.92" width="0.1" layer="21"/>
<wire x1="16.4" y1="1.92" x2="16.32" y2="1.84" width="0.1" layer="21"/>
<wire x1="16.32" y1="1.84" x2="16.2" y2="1.7" width="0.1" layer="21"/>
<wire x1="16.2" y1="1.7" x2="16.12" y2="1.6" width="0.1" layer="21"/>
<wire x1="16.12" y1="1.6" x2="15.94" y2="1.33" width="0.1" layer="21"/>
<wire x1="15.94" y1="1.33" x2="15.79" y2="1.11" width="0.1" layer="21"/>
<wire x1="15.79" y1="1.11" x2="15.78" y2="1.09" width="0.1" layer="21"/>
<wire x1="15.78" y1="1.09" x2="15.58" y2="1.08" width="0.1" layer="21"/>
<wire x1="15.58" y1="1.08" x2="15.43" y2="1.03" width="0.1" layer="21"/>
<wire x1="15.43" y1="1.03" x2="15.4" y2="1.01" width="0.1" layer="21"/>
<wire x1="15.4" y1="1.01" x2="15.37" y2="1.02" width="0.1" layer="21"/>
<wire x1="15.37" y1="1.02" x2="15.28" y2="1.12" width="0.1" layer="21"/>
<wire x1="15.28" y1="1.12" x2="15.22" y2="1.21" width="0.1" layer="21"/>
<wire x1="15.22" y1="1.21" x2="15.11" y2="1.44" width="0.1" layer="21"/>
<wire x1="15.11" y1="1.44" x2="14.99" y2="1.77" width="0.1" layer="21"/>
<wire x1="14.99" y1="1.77" x2="14.94" y2="2.02" width="0.1" layer="21"/>
<wire x1="14.94" y1="2.02" x2="14.93" y2="2.22" width="0.1" layer="21"/>
<wire x1="14.93" y1="2.22" x2="14.96" y2="2.47" width="0.1" layer="21"/>
<wire x1="14.96" y1="2.47" x2="15.06" y2="2.86" width="0.1" layer="21"/>
<wire x1="15.06" y1="2.86" x2="15.19" y2="3.1" width="0.1" layer="21"/>
<wire x1="15.19" y1="3.1" x2="15.3" y2="3.2" width="0.1" layer="21"/>
<wire x1="15.3" y1="3.2" x2="15.45" y2="3.32" width="0.1" layer="21"/>
<wire x1="15.45" y1="3.32" x2="15.62" y2="3.42" width="0.1" layer="21"/>
<wire x1="15.62" y1="3.42" x2="15.8" y2="3.51" width="0.1" layer="21"/>
<wire x1="15.8" y1="3.51" x2="15.64" y2="3.67" width="0.1" layer="21"/>
<wire x1="15.64" y1="3.67" x2="15.47" y2="3.81" width="0.1" layer="21"/>
<wire x1="15.47" y1="3.81" x2="15.26" y2="3.91" width="0.1" layer="21"/>
<wire x1="15.26" y1="3.91" x2="15.06" y2="3.95" width="0.1" layer="21"/>
<wire x1="15.06" y1="3.95" x2="14.79" y2="3.94" width="0.1" layer="21"/>
<wire x1="14.79" y1="3.94" x2="14.73" y2="3.93" width="0.1" layer="21"/>
<wire x1="14.73" y1="3.93" x2="14.6" y2="3.89" width="0.1" layer="21"/>
<wire x1="14.6" y1="3.89" x2="14.45" y2="3.82" width="0.1" layer="21"/>
<wire x1="14.45" y1="3.82" x2="14.36" y2="3.75" width="0.1" layer="21"/>
<wire x1="14.36" y1="3.75" x2="14.32" y2="3.7" width="0.1" layer="21"/>
<wire x1="14.32" y1="3.7" x2="14.21" y2="3.5" width="0.1" layer="21"/>
<wire x1="14.21" y1="3.5" x2="14.17" y2="3.29" width="0.1" layer="21"/>
<wire x1="14.17" y1="3.29" x2="14.16" y2="2.91" width="0.1" layer="21"/>
<wire x1="14.16" y1="2.91" x2="14.19" y2="2.65" width="0.1" layer="21"/>
<wire x1="14.19" y1="2.65" x2="14.25" y2="2.37" width="0.1" layer="21"/>
<wire x1="14.25" y1="2.37" x2="14.27" y2="2.29" width="0.1" layer="21"/>
<wire x1="14.27" y1="2.29" x2="14.39" y2="2" width="0.1" layer="21"/>
<wire x1="14.39" y1="2" x2="14.57" y2="1.67" width="0.1" layer="21"/>
<wire x1="14.57" y1="1.67" x2="14.67" y2="1.53" width="0.1" layer="21"/>
<wire x1="14.67" y1="1.53" x2="15" y2="1.11" width="0.1" layer="21"/>
<wire x1="15" y1="1.11" x2="15.04" y2="1.06" width="0.1" layer="21"/>
<wire x1="15.04" y1="1.06" x2="15.13" y2="0.97" width="0.1" layer="21"/>
<wire x1="15.13" y1="0.97" x2="15.23" y2="0.85" width="0.1" layer="21"/>
<wire x1="15.61" y1="1.03" x2="15.25" y2="0.94" width="0.1" layer="21"/>
<wire x1="15.92" y1="1.21" x2="17.55" y2="2.54" width="0.1" layer="21"/>
<wire x1="17.4" y1="2.5" x2="16.03" y2="1.39" width="0.1" layer="21"/>
<wire x1="16.15" y1="1.57" x2="17.21" y2="2.43" width="0.1" layer="21"/>
<wire x1="16.35" y1="1.81" x2="16.89" y2="2.22" width="0.1" layer="21"/>
<wire x1="15.21" y1="0.99" x2="14.43" y2="2" width="0.1" layer="21"/>
<wire x1="14.43" y1="2" x2="14.2" y2="3.03" width="0.1" layer="21"/>
<wire x1="14.2" y1="3.03" x2="14.36" y2="3.68" width="0.1" layer="21"/>
<wire x1="14.36" y1="3.68" x2="14.77" y2="3.86" width="0.1" layer="21"/>
<wire x1="14.77" y1="3.86" x2="15.17" y2="3.85" width="0.1" layer="21"/>
<wire x1="15.17" y1="3.85" x2="15.47" y2="3.7" width="0.1" layer="21"/>
<wire x1="15.47" y1="3.7" x2="15.67" y2="3.52" width="0.1" layer="21"/>
<wire x1="15.6" y1="3.49" x2="15.15" y2="3.79" width="0.1" layer="21"/>
<wire x1="15.15" y1="3.79" x2="14.69" y2="3.76" width="0.1" layer="21"/>
<wire x1="14.69" y1="3.76" x2="14.41" y2="3.6" width="0.1" layer="21"/>
<wire x1="14.41" y1="3.6" x2="14.28" y2="3.02" width="0.1" layer="21"/>
<wire x1="14.28" y1="3.02" x2="15.52" y2="3.46" width="0.1" layer="21"/>
<wire x1="15.52" y1="3.46" x2="15.11" y2="3.71" width="0.1" layer="21"/>
<wire x1="15.36" y1="3.45" x2="14.98" y2="3.74" width="0.1" layer="21"/>
<wire x1="14.98" y1="3.74" x2="14.46" y2="3.59" width="0.1" layer="21"/>
<wire x1="14.35" y1="3.14" x2="15.26" y2="3.47" width="0.1" layer="21"/>
<wire x1="15.17" y1="3.54" x2="14.38" y2="3.25" width="0.1" layer="21"/>
<wire x1="14.41" y1="3.36" x2="15.07" y2="3.59" width="0.1" layer="21"/>
<wire x1="14.41" y1="3.46" x2="15.01" y2="3.66" width="0.1" layer="21"/>
<wire x1="14.46" y1="3.54" x2="14.56" y2="3.58" width="0.1" layer="21"/>
<wire x1="14.29" y1="2.95" x2="15.44" y2="3.39" width="0.1" layer="21"/>
<wire x1="15.3" y1="3.28" x2="14.32" y2="2.87" width="0.1" layer="21"/>
<wire x1="14.32" y1="2.87" x2="14.52" y2="2.04" width="0.1" layer="21"/>
<wire x1="14.52" y1="2.04" x2="15.28" y2="1.02" width="0.1" layer="21"/>
<wire x1="15.08" y1="1.37" x2="14.57" y2="2.14" width="0.1" layer="21"/>
<wire x1="14.57" y1="2.14" x2="14.43" y2="2.85" width="0.1" layer="21"/>
<wire x1="14.43" y1="2.85" x2="15.17" y2="3.17" width="0.1" layer="21"/>
<wire x1="15.1" y1="3.07" x2="14.51" y2="2.81" width="0.1" layer="21"/>
<wire x1="14.51" y1="2.81" x2="14.66" y2="2.14" width="0.1" layer="21"/>
<wire x1="14.66" y1="2.14" x2="14.99" y2="1.62" width="0.1" layer="21"/>
<wire x1="14.91" y1="1.84" x2="14.74" y2="2.17" width="0.1" layer="21"/>
<wire x1="14.74" y1="2.17" x2="14.6" y2="2.77" width="0.1" layer="21"/>
<wire x1="14.6" y1="2.77" x2="15.05" y2="2.99" width="0.1" layer="21"/>
<wire x1="14.9" y1="1.99" x2="14.8" y2="2.24" width="0.1" layer="21"/>
<wire x1="14.8" y1="2.24" x2="14.7" y2="2.74" width="0.1" layer="21"/>
<wire x1="14.7" y1="2.74" x2="15" y2="2.92" width="0.1" layer="21"/>
<wire x1="15" y1="2.92" x2="14.86" y2="2.22" width="0.1" layer="21"/>
<wire x1="14.86" y1="2.22" x2="14.8" y2="2.72" width="0.1" layer="21"/>
<wire x1="14.8" y1="2.72" x2="14.91" y2="2.79" width="0.1" layer="21"/>
<wire x1="14.91" y1="2.79" x2="14.87" y2="2.58" width="0.1" layer="21"/>
<wire x1="11.67" y1="1.02" x2="11.17" y2="1.37" width="0.1" layer="21"/>
<wire x1="11.17" y1="1.37" x2="10.71" y2="1.79" width="0.1" layer="21"/>
<wire x1="10.71" y1="1.79" x2="10.49" y2="2.08" width="0.1" layer="21"/>
<wire x1="10.49" y1="2.08" x2="10.37" y2="2.32" width="0.1" layer="21"/>
<wire x1="10.37" y1="2.32" x2="10.29" y2="2.61" width="0.1" layer="21"/>
<wire x1="10.29" y1="2.61" x2="10.28" y2="2.93" width="0.1" layer="21"/>
<wire x1="10.28" y1="2.93" x2="10.31" y2="3.13" width="0.1" layer="21"/>
<wire x1="10.31" y1="3.13" x2="10.39" y2="3.32" width="0.1" layer="21"/>
<wire x1="10.39" y1="3.32" x2="10.44" y2="3.4" width="0.1" layer="21"/>
<wire x1="10.44" y1="3.4" x2="10.64" y2="3.63" width="0.1" layer="21"/>
<wire x1="10.64" y1="3.63" x2="10.91" y2="3.83" width="0.1" layer="21"/>
<wire x1="10.91" y1="3.83" x2="11.02" y2="3.9" width="0.1" layer="21"/>
<wire x1="11.02" y1="3.9" x2="11.26" y2="4.01" width="0.1" layer="21"/>
<wire x1="11.26" y1="4.01" x2="11.53" y2="4.1" width="0.1" layer="21"/>
<wire x1="11.53" y1="4.1" x2="11.61" y2="4.12" width="0.1" layer="21"/>
<wire x1="11.61" y1="4.12" x2="11.96" y2="4.18" width="0.1" layer="21"/>
<wire x1="11.96" y1="4.18" x2="12.06" y2="4.19" width="0.1" layer="21"/>
<wire x1="12.06" y1="4.19" x2="12.36" y2="4.19" width="0.1" layer="21"/>
<wire x1="12.36" y1="4.19" x2="12.19" y2="3.8" width="0.1" layer="21"/>
<wire x1="12.19" y1="3.8" x2="12.12" y2="3.48" width="0.1" layer="21"/>
<wire x1="12.12" y1="3.48" x2="12.11" y2="3.42" width="0.1" layer="21"/>
<wire x1="12.11" y1="3.42" x2="12.09" y2="3.19" width="0.1" layer="21"/>
<wire x1="12.09" y1="3.19" x2="12.11" y2="2.93" width="0.1" layer="21"/>
<wire x1="12.11" y1="2.93" x2="12.19" y2="2.64" width="0.1" layer="21"/>
<wire x1="12.19" y1="2.64" x2="12.36" y2="2.27" width="0.1" layer="21"/>
<wire x1="12.36" y1="2.27" x2="12.68" y2="1.79" width="0.1" layer="21"/>
<wire x1="12.68" y1="1.79" x2="12.86" y2="1.58" width="0.1" layer="21"/>
<wire x1="12.86" y1="1.58" x2="13.09" y2="1.35" width="0.1" layer="21"/>
<wire x1="13.09" y1="1.35" x2="13.11" y2="1.35" width="0.1" layer="21"/>
<wire x1="13.11" y1="1.35" x2="13.34" y2="1.16" width="0.1" layer="21"/>
<wire x1="13.36" y1="1.14" x2="13.35" y2="1.17" width="0.1" layer="21"/>
<wire x1="13.35" y1="1.17" x2="13.53" y2="1.05" width="0.1" layer="21"/>
<wire x1="13.53" y1="1.05" x2="13.79" y2="0.92" width="0.1" layer="21"/>
<wire x1="13.79" y1="0.92" x2="13.92" y2="0.86" width="0.1" layer="21"/>
<wire x1="13.92" y1="0.86" x2="13.97" y2="0.84" width="0.1" layer="21"/>
<wire x1="13.87" y1="0.86" x2="13.46" y2="0.99" width="0.1" layer="21"/>
<wire x1="13.46" y1="0.99" x2="13.15" y2="1.13" width="0.1" layer="21"/>
<wire x1="13.15" y1="1.13" x2="12.95" y2="1.25" width="0.1" layer="21"/>
<wire x1="12.95" y1="1.25" x2="12.77" y2="1.38" width="0.1" layer="21"/>
<wire x1="12.77" y1="1.38" x2="12.61" y2="1.52" width="0.1" layer="21"/>
<wire x1="12.61" y1="1.52" x2="12.47" y2="1.64" width="0.1" layer="21"/>
<wire x1="12.47" y1="1.64" x2="12.24" y2="1.89" width="0.1" layer="21"/>
<wire x1="12.24" y1="1.89" x2="12.11" y2="2.07" width="0.1" layer="21"/>
<wire x1="12.11" y1="2.07" x2="11.95" y2="2.33" width="0.1" layer="21"/>
<wire x1="11.95" y1="2.33" x2="11.85" y2="2.54" width="0.1" layer="21"/>
<wire x1="11.85" y1="2.54" x2="11.8" y2="2.63" width="0.1" layer="21"/>
<wire x1="11.8" y1="2.63" x2="11.75" y2="2.68" width="0.1" layer="21"/>
<wire x1="11.75" y1="2.68" x2="11.69" y2="2.72" width="0.1" layer="21"/>
<wire x1="11.69" y1="2.72" x2="11.58" y2="2.69" width="0.1" layer="21"/>
<wire x1="11.58" y1="2.69" x2="11.51" y2="2.62" width="0.1" layer="21"/>
<wire x1="11.51" y1="2.62" x2="11.5" y2="2.54" width="0.1" layer="21"/>
<wire x1="11.5" y1="2.54" x2="11.49" y2="2.43" width="0.1" layer="21"/>
<wire x1="11.49" y1="2.43" x2="11.49" y2="2.16" width="0.1" layer="21"/>
<wire x1="11.49" y1="2.16" x2="11.51" y2="1.88" width="0.1" layer="21"/>
<wire x1="11.51" y1="1.88" x2="11.53" y2="1.72" width="0.1" layer="21"/>
<wire x1="11.53" y1="1.72" x2="11.69" y2="1.01" width="0.1" layer="21"/>
<wire x1="11.69" y1="1.01" x2="11.72" y2="0.99" width="0.1" layer="21"/>
<wire x1="10.54" y1="3.06" x2="11.06" y2="3.66" width="0.5" layer="21"/>
<wire x1="11.06" y1="3.66" x2="11.98" y2="3.96" width="0.5" layer="21"/>
<wire x1="11.98" y1="3.96" x2="11.72" y2="2.96" width="0.5" layer="21"/>
<wire x1="11.72" y1="2.96" x2="11.43" y2="3.43" width="0.5" layer="21"/>
<wire x1="11.43" y1="3.43" x2="10.6" y2="2.49" width="0.5" layer="21"/>
<wire x1="10.6" y1="2.49" x2="10.96" y2="1.86" width="0.5" layer="21"/>
<wire x1="10.96" y1="1.86" x2="11.38" y2="1.47" width="0.5" layer="21"/>
<wire x1="11.38" y1="1.47" x2="11.12" y2="2.43" width="0.5" layer="21"/>
<wire x1="11.12" y1="2.43" x2="11.35" y2="2.79" width="0.5" layer="21"/>
<wire x1="10.35" y1="2.58" x2="10.36" y2="2.89" width="0.1" layer="21"/>
<wire x1="10.36" y1="2.89" x2="10.51" y2="2.8" width="0.1" layer="21"/>
<wire x1="10.51" y1="2.8" x2="10.42" y2="2.69" width="0.1" layer="21"/>
<wire x1="10.42" y1="2.69" x2="10.43" y2="2.78" width="0.1" layer="21"/>
<wire x1="11.44" y1="2.45" x2="11.41" y2="2.25" width="0.1" layer="21"/>
<wire x1="11.55" y1="1.34" x2="11.59" y2="1.16" width="0.1" layer="21"/>
<wire x1="11.59" y1="1.16" x2="11.5" y2="1.23" width="0.1" layer="21"/>
<wire x1="12.16" y1="4.13" x2="12.25" y2="4.13" width="0.1" layer="21"/>
<wire x1="12.25" y1="4.13" x2="12.23" y2="4.05" width="0.1" layer="21"/>
<wire x1="11.98" y1="3.2" x2="11.91" y2="2.74" width="0.3" layer="21"/>
<wire x1="11.91" y1="2.74" x2="12.42" y2="1.88" width="0.3" layer="21"/>
<wire x1="12.42" y1="1.88" x2="12.82" y2="1.47" width="0.3" layer="21"/>
<wire x1="12.82" y1="1.47" x2="13.38" y2="1.07" width="0.1" layer="21"/>
<wire x1="12.9" y1="1.36" x2="12.97" y2="1.29" width="0.1" layer="21"/>
<wire x1="12.12" y1="2.66" x2="12.06" y2="2.82" width="0.1" layer="21"/>
<wire x1="13.89" y1="0.82" x2="14.32" y2="0.74" width="0.02" layer="21"/>
<wire x1="14.32" y1="0.74" x2="14.37" y2="0.74" width="0.02" layer="21"/>
<wire x1="14.37" y1="0.74" x2="14.14" y2="0.81" width="0.02" layer="21"/>
<wire x1="14.14" y1="0.81" x2="14.16" y2="0.81" width="0.02" layer="21"/>
<wire x1="14.16" y1="0.81" x2="14" y2="0.87" width="0.02" layer="21"/>
<wire x1="14" y1="0.87" x2="14.13" y2="0.8" width="0.02" layer="21"/>
<wire x1="14.13" y1="0.8" x2="14.01" y2="0.84" width="0.02" layer="21"/>
<wire x1="14.27" y1="0.76" x2="14.01" y2="0.82" width="0.02" layer="21"/>
<wire x1="14.01" y1="0.82" x2="14.01" y2="0.81" width="0.02" layer="21"/>
<wire x1="14.01" y1="0.81" x2="14.05" y2="0.8" width="0.02" layer="21"/>
<wire x1="13.88" y1="0.82" x2="13.96" y2="0.8" width="0.02" layer="21"/>
<wire x1="13.96" y1="0.8" x2="14.14" y2="0.77" width="0.02" layer="21"/>
<wire x1="14.37" y1="0.74" x2="14.38" y2="0.74" width="0.01" layer="21"/>
<wire x1="14.38" y1="0.74" x2="14.39" y2="0.74" width="0.01" layer="21"/>
<wire x1="14.39" y1="0.74" x2="14.44" y2="0.73" width="0.005" layer="21"/>
<wire x1="14.38" y1="0.74" x2="14.42" y2="0.73" width="0.005" layer="21"/>
<wire x1="14.42" y1="0.73" x2="14.3" y2="0.74" width="0.005" layer="21"/>
<wire x1="14.16" y1="0.82" x2="14.19" y2="0.8" width="0.005" layer="21"/>
<wire x1="14.16" y1="0.82" x2="14.29" y2="0.77" width="0.005" layer="21"/>
<wire x1="14.18" y1="0.81" x2="14.2" y2="0.8" width="0.005" layer="21"/>
<wire x1="15.18" y1="0.84" x2="15.16" y2="0.79" width="0.02" layer="21"/>
<wire x1="15.16" y1="0.79" x2="15.22" y2="0.8" width="0.02" layer="21"/>
<wire x1="15.22" y1="0.8" x2="15.19" y2="0.82" width="0.02" layer="21"/>
<wire x1="15.19" y1="0.82" x2="15.18" y2="0.81" width="0.02" layer="21"/>
<wire x1="15.19" y1="0.81" x2="15.19" y2="0.8" width="0.02" layer="21"/>
<wire x1="15.15" y1="0.78" x2="15.15" y2="0.79" width="0.01" layer="21"/>
<wire x1="15.15" y1="0.79" x2="15.24" y2="0.8" width="0.01" layer="21"/>
<wire x1="15.24" y1="0.8" x2="15.42" y2="0.85" width="0.01" layer="21"/>
<wire x1="17.98" y1="2.59" x2="18.11" y2="2.63" width="0.01" layer="21"/>
<wire x1="18.11" y1="2.63" x2="17.94" y2="2.67" width="0.01" layer="21"/>
<wire x1="17.94" y1="2.67" x2="17.79" y2="2.67" width="0.01" layer="21"/>
<wire x1="17.79" y1="2.67" x2="17.66" y2="2.66" width="0.01" layer="21"/>
<wire x1="18.08" y1="2.63" x2="18" y2="2.61" width="0.02" layer="21"/>
<wire x1="18" y1="2.61" x2="17.99" y2="2.65" width="0.02" layer="21"/>
<wire x1="17.99" y1="2.65" x2="18.06" y2="2.63" width="0.02" layer="21"/>
<wire x1="18.06" y1="2.63" x2="18.01" y2="2.63" width="0.02" layer="21"/>
<wire x1="15.83" y1="3.47" x2="15.87" y2="3.49" width="0.005" layer="21"/>
<wire x1="15.87" y1="3.49" x2="15.84" y2="3.54" width="0.005" layer="21"/>
<wire x1="15.57" y1="3.45" x2="15.58" y2="3.45" width="0.02" layer="21"/>
<wire x1="15.84" y1="3.48" x2="15.86" y2="3.49" width="0.02" layer="21"/>
<wire x1="15.86" y1="3.49" x2="15.84" y2="3.52" width="0.02" layer="21"/>
<wire x1="12.39" y1="4.19" x2="12.42" y2="4.22" width="0.02" layer="21"/>
<wire x1="12.42" y1="4.22" x2="12.37" y2="4.23" width="0.02" layer="21"/>
<wire x1="12.4" y1="4.18" x2="12.43" y2="4.23" width="0.005" layer="21"/>
<wire x1="12.43" y1="4.23" x2="12.43" y2="4.21" width="0.005" layer="21"/>
<wire x1="12.43" y1="4.21" x2="12.42" y2="4.21" width="0.005" layer="21"/>
<wire x1="12.42" y1="4.21" x2="12.41" y2="4.19" width="0.005" layer="21"/>
<wire x1="11.7" y1="0.94" x2="11.81" y2="0.87" width="0.005" layer="21"/>
<wire x1="11.81" y1="0.87" x2="11.8" y2="0.91" width="0.005" layer="21"/>
<wire x1="11.8" y1="0.91" x2="11.77" y2="0.99" width="0.005" layer="21"/>
<wire x1="11.65" y1="0.98" x2="11.7" y2="0.94" width="0.005" layer="21"/>
<wire x1="11.69" y1="0.96" x2="11.79" y2="0.89" width="0.02" layer="21"/>
<wire x1="11.79" y1="0.89" x2="11.8" y2="0.89" width="0.02" layer="21"/>
<wire x1="11.8" y1="0.89" x2="11.76" y2="0.98" width="0.02" layer="21"/>
<wire x1="11.76" y1="0.98" x2="11.77" y2="0.91" width="0.02" layer="21"/>
<wire x1="11.77" y1="0.91" x2="11.75" y2="0.95" width="0.02" layer="21"/>
<wire x1="11.75" y1="0.95" x2="11.74" y2="0.94" width="0.02" layer="21"/>
<wire x1="11.76" y1="0.98" x2="11.7" y2="1.17" width="0.02" layer="21"/>
<wire x1="11.72" y1="2.66" x2="11.62" y2="2.67" width="0.02" layer="21"/>
<wire x1="11.53" y1="2.55" x2="11.58" y2="2.64" width="0.02" layer="21"/>
<wire x1="11.59" y1="2.65" x2="11.67" y2="2.67" width="0.02" layer="21"/>
</package>
<package name="0805-MMGRID">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-0.5" y1="0.575" x2="0.5" y2="0.575" width="0.1" layer="51"/>
<wire x1="-0.5" y1="-0.575" x2="0.5" y2="-0.575" width="0.1" layer="51"/>
<wire x1="-1.77" y1="0.97" x2="1.77" y2="0.97" width="0.0508" layer="39"/>
<wire x1="1.77" y1="0.97" x2="1.77" y2="-0.97" width="0.0508" layer="39"/>
<wire x1="1.77" y1="-0.97" x2="-1.77" y2="-0.97" width="0.0508" layer="39"/>
<wire x1="-1.77" y1="-0.97" x2="-1.77" y2="0.97" width="0.05" layer="39"/>
<smd name="1" x="-0.9" y="0" dx="1.15" dy="1.45" layer="1"/>
<smd name="2" x="0.9" y="0" dx="1.15" dy="1.45" layer="1"/>
<text x="2.8" y="0" size="1" layer="25" font="vector" align="center">&gt;NAME</text>
<text x="-0.6" y="-2.5" size="1" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="0.5" y1="-0.625" x2="1" y2="0.625" layer="51"/>
<rectangle x1="-1" y1="-0.625" x2="-0.5" y2="0.625" layer="51"/>
<rectangle x1="-0.2" y1="-0.5" x2="0.2" y2="0.5" layer="35"/>
</package>
<package name="SOD523">
<description>&lt;B&gt;DIODE&lt;/B&gt;</description>
<smd name="A" x="0.7" y="0" dx="0.7" dy="0.5" layer="1"/>
<smd name="C" x="-0.7" y="0" dx="0.7" dy="0.5" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<rectangle x1="-0.75" y1="-0.17" x2="-0.54" y2="0.17" layer="51"/>
<rectangle x1="0.54" y1="-0.17" x2="0.75" y2="0.17" layer="51"/>
<wire x1="-0.65" y1="0.35" x2="0.65" y2="0.35" width="0.1" layer="51"/>
<wire x1="0.65" y1="0.35" x2="0.65" y2="-0.35" width="0.1" layer="51"/>
<wire x1="0.65" y1="-0.35" x2="-0.65" y2="-0.35" width="0.1" layer="51"/>
<wire x1="-0.65" y1="-0.35" x2="-0.65" y2="0.35" width="0.1" layer="51"/>
<wire x1="-0.5" y1="0" x2="-0.1" y2="0" width="0.1" layer="51"/>
<wire x1="-0.1" y1="0" x2="0.5" y2="0" width="0.1" layer="51"/>
<wire x1="-0.2" y1="0.2" x2="-0.2" y2="-0.2" width="0.1" layer="51"/>
<wire x1="-0.2" y1="-0.2" x2="-0.1" y2="-0.2" width="0.1" layer="51"/>
<wire x1="-0.2" y1="0.2" x2="-0.3" y2="0.2" width="0.1" layer="51"/>
<wire x1="0.1" y1="0.2" x2="0.1" y2="-0.2" width="0.1" layer="51"/>
<wire x1="0.1" y1="-0.2" x2="0" y2="-0.1" width="0.1" layer="51"/>
<wire x1="0" y1="-0.1" x2="-0.1" y2="0" width="0.1" layer="51"/>
<wire x1="-0.1" y1="0" x2="0" y2="0.1" width="0.1" layer="51"/>
<wire x1="0" y1="0.1" x2="0.1" y2="0.2" width="0.1" layer="51"/>
<wire x1="0" y1="-0.1" x2="0" y2="0.1" width="0.1" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="STM32L011F4">
<wire x1="-15.24" y1="27.94" x2="15.24" y2="27.94" width="0.254" layer="94"/>
<wire x1="15.24" y1="27.94" x2="15.24" y2="-27.94" width="0.254" layer="94"/>
<wire x1="15.24" y1="-27.94" x2="-15.24" y2="-27.94" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-27.94" x2="-15.24" y2="27.94" width="0.254" layer="94"/>
<pin name="PB9" x="-20.32" y="22.86" visible="pin" length="middle"/>
<pin name="PC14" x="-20.32" y="17.78" visible="pin" length="middle"/>
<pin name="PC15" x="-20.32" y="12.7" visible="pin" length="middle"/>
<pin name="_RST" x="-20.32" y="7.62" visible="pin" length="middle"/>
<pin name="VDDA" x="-20.32" y="2.54" visible="pin" length="middle" direction="pwr"/>
<pin name="PA0" x="-20.32" y="-2.54" visible="pin" length="middle"/>
<pin name="PA1" x="-20.32" y="-7.62" visible="pin" length="middle"/>
<pin name="PA2" x="-20.32" y="-12.7" visible="pin" length="middle"/>
<pin name="PA3" x="-20.32" y="-17.78" visible="pin" length="middle"/>
<pin name="PA4" x="-20.32" y="-22.86" visible="pin" length="middle"/>
<pin name="PA5" x="20.32" y="-22.86" visible="pin" length="middle" rot="R180"/>
<pin name="PA6" x="20.32" y="-17.78" visible="pin" length="middle" rot="R180"/>
<pin name="PA7" x="20.32" y="-12.7" visible="pin" length="middle" rot="R180"/>
<pin name="PB1" x="20.32" y="-7.62" visible="pin" length="middle" rot="R180"/>
<pin name="VSS" x="20.32" y="-2.54" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="VDD" x="20.32" y="2.54" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="PA9" x="20.32" y="7.62" visible="pin" length="middle" rot="R180"/>
<pin name="PA10" x="20.32" y="12.7" visible="pin" length="middle" rot="R180"/>
<pin name="PA13" x="20.32" y="17.78" visible="pin" length="middle" rot="R180"/>
<pin name="PA14" x="20.32" y="22.86" visible="pin" length="middle" rot="R180"/>
<text x="-15.24" y="30.48" size="3.81" layer="95">STM32L011F4</text>
<text x="5.08" y="-33.02" size="3.81" layer="95">&gt;NAME</text>
</symbol>
<symbol name="R-EU">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="MIC550X">
<wire x1="-7.62" y1="12.7" x2="12.7" y2="12.7" width="0.254" layer="94"/>
<wire x1="12.7" y1="12.7" x2="12.7" y2="0" width="0.254" layer="94"/>
<wire x1="12.7" y1="0" x2="-7.62" y2="0" width="0.254" layer="94"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="12.7" width="0.254" layer="94"/>
<pin name="VIN" x="-12.7" y="10.16" length="middle"/>
<pin name="EN" x="-12.7" y="5.08" length="middle"/>
<pin name="GND" x="2.54" y="-5.08" length="middle" rot="R90"/>
<pin name="VOUT" x="17.78" y="10.16" length="middle" rot="R180"/>
<text x="7.62" y="-2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="15.24" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="C-EU">
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<text x="1.524" y="0.381" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-4.699" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="LED-DUAL">
<wire x1="-1.27" y1="5.08" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-3.81" y2="5.08" width="0.254" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-3.81" y2="2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-3.81" y2="5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-4.572" y1="4.318" x2="-5.969" y2="2.921" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="3.175" x2="-5.842" y2="1.778" width="0.1524" layer="94"/>
<text x="9.652" y="0" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<pin name="C0" x="-2.54" y="0" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A0" x="-2.54" y="7.62" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="-5.969" y="2.921"/>
<vertex x="-5.588" y="3.81"/>
<vertex x="-5.08" y="3.302"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-5.842" y="1.778"/>
<vertex x="-5.461" y="2.667"/>
<vertex x="-4.953" y="2.159"/>
</polygon>
<wire x1="6.35" y1="5.08" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="3.81" y2="5.08" width="0.254" layer="94"/>
<wire x1="6.35" y1="2.54" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="3.81" y2="2.54" width="0.254" layer="94"/>
<wire x1="6.35" y1="5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="3.81" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="2.54" width="0.1524" layer="94"/>
<wire x1="3.048" y1="4.318" x2="1.651" y2="2.921" width="0.1524" layer="94"/>
<wire x1="3.175" y1="3.175" x2="1.778" y2="1.778" width="0.1524" layer="94"/>
<pin name="C1" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A1" x="5.08" y="7.62" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="1.651" y="2.921"/>
<vertex x="2.032" y="3.81"/>
<vertex x="2.54" y="3.302"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="1.778" y="1.778"/>
<vertex x="2.159" y="2.667"/>
<vertex x="2.667" y="2.159"/>
</polygon>
</symbol>
<symbol name="SWITCH-NO">
<wire x1="-2.54" y1="0" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<circle x="-2.54" y="0" radius="0.2839" width="0" layer="94"/>
<circle x="2.54" y="0" radius="0.2839" width="0" layer="94"/>
<text x="-3.81" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas"/>
<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="GPX_LOGO">
<wire x1="-12.7" y1="5.08" x2="10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="5.08" x2="10.16" y2="-2.54" width="0.254" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="-12.7" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-2.54" x2="-12.7" y2="5.08" width="0.254" layer="94"/>
<text x="-10.16" y="0" size="2.1844" layer="94" font="vector">GPX LOGO</text>
</symbol>
<symbol name="D-ZENER">
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.905" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.397" y1="1.905" x2="1.397" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.397" y1="-1.905" x2="2.032" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.397" y1="1.905" x2="0.762" y2="1.905" width="0.254" layer="94"/>
<text x="-2.9464" y="2.6416" size="1.778" layer="95">&gt;NAME</text>
<pin name="A" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="C" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="STM32L011F4" prefix="U">
<gates>
<gate name="G$1" symbol="STM32L011F4" x="0" y="0"/>
</gates>
<devices>
<device name="PX" package="TSSOP-20">
<connects>
<connect gate="G$1" pin="PA0" pad="P$6"/>
<connect gate="G$1" pin="PA1" pad="P$7"/>
<connect gate="G$1" pin="PA10" pad="P$18"/>
<connect gate="G$1" pin="PA13" pad="P$19"/>
<connect gate="G$1" pin="PA14" pad="P$20"/>
<connect gate="G$1" pin="PA2" pad="P$8"/>
<connect gate="G$1" pin="PA3" pad="P$9"/>
<connect gate="G$1" pin="PA4" pad="P$10"/>
<connect gate="G$1" pin="PA5" pad="P$11"/>
<connect gate="G$1" pin="PA6" pad="P$12"/>
<connect gate="G$1" pin="PA7" pad="P$13"/>
<connect gate="G$1" pin="PA9" pad="P$17"/>
<connect gate="G$1" pin="PB1" pad="P$14"/>
<connect gate="G$1" pin="PB9" pad="P$1"/>
<connect gate="G$1" pin="PC14" pad="P$2"/>
<connect gate="G$1" pin="PC15" pad="P$3"/>
<connect gate="G$1" pin="VDD" pad="P$16"/>
<connect gate="G$1" pin="VDDA" pad="P$5"/>
<connect gate="G$1" pin="VSS" pad="P$15"/>
<connect gate="G$1" pin="_RST" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="R-EU" prefix="R" uservalue="yes">
<gates>
<gate name="G$1" symbol="R-EU" x="0" y="0"/>
</gates>
<devices>
<device name="-0603" package="0603-MMGRID">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-0805" package="0805-MMGRID">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MIC550X" prefix="U" uservalue="yes">
<gates>
<gate name="G$1" symbol="MIC550X" x="-2.54" y="-7.62"/>
</gates>
<devices>
<device name="" package="SOT23-5">
<connects>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="VIN" pad="1"/>
<connect gate="G$1" pin="VOUT" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="C-EU" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="C-EU" x="0" y="0"/>
</gates>
<devices>
<device name="-0603" package="0603-MMGRID">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-0805" package="0805-MMGRID">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LED-DUAL" prefix="D">
<gates>
<gate name="G$1" symbol="LED-DUAL" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="LED-1210">
<connects>
<connect gate="G$1" pin="A0" pad="2"/>
<connect gate="G$1" pin="A1" pad="4"/>
<connect gate="G$1" pin="C0" pad="1"/>
<connect gate="G$1" pin="C1" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SW-SPST" prefix="SW">
<gates>
<gate name="G$1" symbol="SWITCH-NO" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TL3330">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GPX_LOGO">
<gates>
<gate name="G$1" symbol="GPX_LOGO" x="0" y="0"/>
</gates>
<devices>
<device name="" package="GPX_LOGO">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="UCLAMP3301H" prefix="D">
<gates>
<gate name="G$1" symbol="D-ZENER" x="0" y="0"/>
</gates>
<devices>
<device name="SOD523" package="SOD523">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+5V" urn="urn:adsk.eagle:symbol:26929/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+3V3" urn="urn:adsk.eagle:symbol:26950/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+3V3" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+5V" urn="urn:adsk.eagle:component:26963/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+3V3" urn="urn:adsk.eagle:component:26981/1" prefix="+3V3" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="+3V3" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-tycoelectronics" urn="urn:adsk.eagle:library:193">
<description>&lt;b&gt;Tyco Electronics Connector&lt;/b&gt;&lt;p&gt;
http://catalog.tycoelectronics.com&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="RJ11-NO_SHIELD" urn="urn:adsk.eagle:footprint:10643/1" library_version="1">
<description>&lt;b&gt;RJ11 Low Profile&lt;/b&gt; No Shield&lt;/b&gt;&lt;p&gt;
For all RJ11 N and Z Series Models&lt;br&gt;
Source: www.tycoelectronics.com .. ENG_DS_1654001_1099_RJ_L_0507.pdf</description>
<wire x1="-6.877" y1="10.819" x2="6.877" y2="10.819" width="0.2032" layer="21"/>
<wire x1="7.8105" y1="-5.51" x2="-7.8105" y2="-5.51" width="0.01" layer="20"/>
<wire x1="6.877" y1="-7.782" x2="-6.877" y2="-7.782" width="0.2032" layer="21"/>
<wire x1="-6.877" y1="-7.782" x2="-6.877" y2="10.819" width="0.2032" layer="21"/>
<wire x1="6.877" y1="10.819" x2="6.877" y2="-7.782" width="0.2032" layer="21"/>
<pad name="4" x="0.635" y="6.35" drill="0.9" diameter="1.4"/>
<pad name="3" x="-0.635" y="8.89" drill="0.9" diameter="1.4"/>
<pad name="2" x="-1.905" y="6.35" drill="0.9" diameter="1.4"/>
<pad name="5" x="1.905" y="8.89" drill="0.9" diameter="1.4"/>
<pad name="1" x="-3.175" y="8.89" drill="0.9" diameter="1.4"/>
<pad name="6" x="3.175" y="6.35" drill="0.9" diameter="1.4"/>
<text x="-7.62" y="-0.635" size="1.778" layer="25" rot="R90">&gt;NAME</text>
<text x="-5.715" y="2.54" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="6.95" y1="-5.485" x2="7.875" y2="-4.342" layer="21"/>
<rectangle x1="-7.875" y1="-5.485" x2="-6.95" y2="-4.342" layer="21"/>
<hole x="-5.08" y="0" drill="3.2512"/>
<hole x="5.08" y="0" drill="3.2512"/>
</package>
</packages>
<packages3d>
<package3d name="RJ11-NO_SHIELD" urn="urn:adsk.eagle:package:10656/1" type="box" library_version="1">
<description>RJ11 Low Profile No Shield
For all RJ11 N and Z Series Models
Source: www.tycoelectronics.com .. ENG_DS_1654001_1099_RJ_L_0507.pdf</description>
</package3d>
</packages3d>
<symbols>
<symbol name="JACK6" urn="urn:adsk.eagle:symbol:10642/1" library_version="1">
<wire x1="1.524" y1="5.588" x2="0" y2="5.588" width="0.254" layer="94"/>
<wire x1="0" y1="5.588" x2="0" y2="4.572" width="0.254" layer="94"/>
<wire x1="0" y1="4.572" x2="1.524" y2="4.572" width="0.254" layer="94"/>
<wire x1="1.524" y1="3.048" x2="0" y2="3.048" width="0.254" layer="94"/>
<wire x1="0" y1="3.048" x2="0" y2="2.032" width="0.254" layer="94"/>
<wire x1="0" y1="2.032" x2="1.524" y2="2.032" width="0.254" layer="94"/>
<wire x1="1.524" y1="0.508" x2="0" y2="0.508" width="0.254" layer="94"/>
<wire x1="0" y1="0.508" x2="0" y2="-0.508" width="0.254" layer="94"/>
<wire x1="0" y1="-0.508" x2="1.524" y2="-0.508" width="0.254" layer="94"/>
<wire x1="1.524" y1="-2.032" x2="0" y2="-2.032" width="0.254" layer="94"/>
<wire x1="0" y1="-2.032" x2="0" y2="-3.048" width="0.254" layer="94"/>
<wire x1="0" y1="-3.048" x2="1.524" y2="-3.048" width="0.254" layer="94"/>
<wire x1="1.524" y1="-4.572" x2="0" y2="-4.572" width="0.254" layer="94"/>
<wire x1="0" y1="-4.572" x2="0" y2="-5.588" width="0.254" layer="94"/>
<wire x1="0" y1="-5.588" x2="1.524" y2="-5.588" width="0.254" layer="94"/>
<wire x1="1.524" y1="-7.112" x2="0" y2="-7.112" width="0.254" layer="94"/>
<wire x1="0" y1="-7.112" x2="0" y2="-8.128" width="0.254" layer="94"/>
<wire x1="0" y1="-8.128" x2="1.524" y2="-8.128" width="0.254" layer="94"/>
<wire x1="4.318" y1="-3.556" x2="6.858" y2="-3.556" width="0.1998" layer="94"/>
<wire x1="6.858" y1="-3.556" x2="6.858" y2="-2.286" width="0.1998" layer="94"/>
<wire x1="6.858" y1="-2.286" x2="7.874" y2="-2.286" width="0.1998" layer="94"/>
<wire x1="7.874" y1="-2.286" x2="7.874" y2="-0.254" width="0.1998" layer="94"/>
<wire x1="7.874" y1="-0.254" x2="6.858" y2="-0.254" width="0.1998" layer="94"/>
<wire x1="6.858" y1="-0.254" x2="6.858" y2="1.016" width="0.1998" layer="94"/>
<wire x1="6.858" y1="1.016" x2="4.318" y2="1.016" width="0.1998" layer="94"/>
<wire x1="4.318" y1="1.016" x2="4.318" y2="0" width="0.1998" layer="94"/>
<wire x1="4.318" y1="0" x2="4.318" y2="-0.508" width="0.1998" layer="94"/>
<wire x1="4.318" y1="-0.508" x2="4.318" y2="-1.016" width="0.1998" layer="94"/>
<wire x1="4.318" y1="-1.016" x2="4.318" y2="-1.524" width="0.1998" layer="94"/>
<wire x1="4.318" y1="-1.524" x2="4.318" y2="-2.032" width="0.1998" layer="94"/>
<wire x1="4.318" y1="-2.032" x2="4.318" y2="-2.54" width="0.1998" layer="94"/>
<wire x1="4.318" y1="-2.54" x2="4.318" y2="-3.556" width="0.1998" layer="94"/>
<wire x1="4.318" y1="0" x2="5.08" y2="0" width="0.1998" layer="94"/>
<wire x1="4.318" y1="-0.508" x2="5.08" y2="-0.508" width="0.1998" layer="94"/>
<wire x1="4.318" y1="-1.016" x2="5.08" y2="-1.016" width="0.1998" layer="94"/>
<wire x1="4.318" y1="-1.524" x2="5.08" y2="-1.524" width="0.1998" layer="94"/>
<wire x1="4.318" y1="-2.032" x2="5.08" y2="-2.032" width="0.1998" layer="94"/>
<wire x1="4.318" y1="-2.54" x2="5.08" y2="-2.54" width="0.1998" layer="94"/>
<text x="-2.54" y="7.62" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-10.668" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="5.08" visible="pin" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="-2.54" y="2.54" visible="pin" length="short" direction="pas" swaplevel="1"/>
<pin name="3" x="-2.54" y="0" visible="pin" length="short" direction="pas" swaplevel="1"/>
<pin name="4" x="-2.54" y="-2.54" visible="pin" length="short" direction="pas" swaplevel="1"/>
<pin name="5" x="-2.54" y="-5.08" visible="pin" length="short" direction="pas" swaplevel="1"/>
<pin name="6" x="-2.54" y="-7.62" visible="pin" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RJ11" urn="urn:adsk.eagle:component:10665/1" prefix="J" library_version="1">
<description>&lt;b&gt;CORCOM Modular RJ Jacks&lt;/b&gt; No Shield&lt;p&gt;
Source: www.tycoelectronics.com .. ENG_DS_1654001_1099_RJ_L_0507.pdf</description>
<gates>
<gate name="G$1" symbol="JACK6" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RJ11-NO_SHIELD">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10656/1"/>
</package3dinstances>
<technologies>
<technology name="-2L-B">
<attribute name="MF" value="TYCO ELECTRONICS" constant="no"/>
<attribute name="MPN" value="RJ11-2L-B" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="83F4463" constant="no"/>
</technology>
<technology name="-2L-S">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="RJ11-2L-S" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="73K3294" constant="no"/>
</technology>
<technology name="-2X">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="-4L-B">
<attribute name="MF" value="TYCO ELECTRONICS" constant="no"/>
<attribute name="MPN" value="RJ11-4L-B" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="52K3315" constant="no"/>
</technology>
<technology name="-4L-S">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="RJ11-4L-S" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="69K7126" constant="no"/>
</technology>
<technology name="-4X">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="6609214-3" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="19R7022" constant="no"/>
</technology>
<technology name="-6L-B">
<attribute name="MF" value="TYCO ELECTRONICS" constant="no"/>
<attribute name="MPN" value="RJ11-6L-B" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="52K3613" constant="no"/>
</technology>
<technology name="-6L-S">
<attribute name="MF" value="TYCO ELECTRONICS" constant="no"/>
<attribute name="MPN" value="RJ11-6L-S" constant="no"/>
<attribute name="OC_FARNELL" value="1654827" constant="no"/>
<attribute name="OC_NEWARK" value="50F1358" constant="no"/>
</technology>
<technology name="-6X">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="RJ11-6X" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="16R6089" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="2X04" urn="urn:adsk.eagle:footprint:22351/1" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-5.08" y1="-1.905" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="1.905" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="2.54" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.905" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.08" y2="1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-3.81" y="1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="1.27" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="1.27" y="1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="3.81" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="3.81" y="1.27" drill="1.016" shape="octagon"/>
<text x="-5.08" y="3.175" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-4.445" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-4.064" y1="-1.524" x2="-3.556" y2="-1.016" layer="51"/>
<rectangle x1="-4.064" y1="1.016" x2="-3.556" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="1.016" x2="-1.016" y2="1.524" layer="51"/>
<rectangle x1="-1.524" y1="-1.524" x2="-1.016" y2="-1.016" layer="51"/>
<rectangle x1="1.016" y1="1.016" x2="1.524" y2="1.524" layer="51"/>
<rectangle x1="1.016" y1="-1.524" x2="1.524" y2="-1.016" layer="51"/>
<rectangle x1="3.556" y1="1.016" x2="4.064" y2="1.524" layer="51"/>
<rectangle x1="3.556" y1="-1.524" x2="4.064" y2="-1.016" layer="51"/>
</package>
<package name="2X04/90" urn="urn:adsk.eagle:footprint:22352/1" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<pad name="2" x="-3.81" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="4" x="-1.27" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="6" x="1.27" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="8" x="3.81" y="-3.81" drill="1.016" shape="octagon"/>
<pad name="1" x="-3.81" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="3" x="-1.27" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="5" x="1.27" y="-6.35" drill="1.016" shape="octagon"/>
<pad name="7" x="3.81" y="-6.35" drill="1.016" shape="octagon"/>
<text x="-5.715" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="6.985" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="-4.191" y1="-5.461" x2="-3.429" y2="-4.699" layer="21"/>
<rectangle x1="-4.191" y1="-4.699" x2="-3.429" y2="-2.921" layer="51"/>
<rectangle x1="-1.651" y1="-4.699" x2="-0.889" y2="-2.921" layer="51"/>
<rectangle x1="-1.651" y1="-5.461" x2="-0.889" y2="-4.699" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-5.461" x2="1.651" y2="-4.699" layer="21"/>
<rectangle x1="0.889" y1="-4.699" x2="1.651" y2="-2.921" layer="51"/>
<rectangle x1="3.429" y1="-4.699" x2="4.191" y2="-2.921" layer="51"/>
<rectangle x1="3.429" y1="-5.461" x2="4.191" y2="-4.699" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="2X04" urn="urn:adsk.eagle:package:22461/2" type="model" library_version="2">
<description>PIN HEADER</description>
</package3d>
<package3d name="2X04/90" urn="urn:adsk.eagle:package:22465/1" type="box" library_version="2">
<description>PIN HEADER</description>
</package3d>
</packages3d>
<symbols>
<symbol name="PINH2X4" urn="urn:adsk.eagle:symbol:22350/1" library_version="2">
<wire x1="-6.35" y1="-5.08" x2="8.89" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="8.89" y1="-5.08" x2="8.89" y2="7.62" width="0.4064" layer="94"/>
<wire x1="8.89" y1="7.62" x2="-6.35" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="7.62" x2="-6.35" y2="-5.08" width="0.4064" layer="94"/>
<text x="-6.35" y="8.255" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="5.08" y="5.08" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="3" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="5.08" y="2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="5" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="5.08" y="0" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="7" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="5.08" y="-2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-2X4" urn="urn:adsk.eagle:component:22527/2" prefix="JP" uservalue="yes" library_version="2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINH2X4" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2X04">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22461/2"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="2X04/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22465/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="testpad" urn="urn:adsk.eagle:library:385">
<description>&lt;b&gt;Test Pins/Pads&lt;/b&gt;&lt;p&gt;
Cream on SMD OFF.&lt;br&gt;
new: Attribute TP_SIGNAL_NAME&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="B1,27" urn="urn:adsk.eagle:footprint:27900/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<wire x1="-0.635" y1="0" x2="0.635" y2="0" width="0.0024" layer="37"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.0024" layer="37"/>
<smd name="TP" x="0" y="0" dx="1.27" dy="1.27" layer="1" roundness="100" cream="no"/>
<text x="-0.635" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.635" y="-0.762" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-0.635" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="B2,54" urn="urn:adsk.eagle:footprint:27901/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<wire x1="-0.635" y1="0" x2="0.635" y2="0" width="0.0024" layer="37"/>
<wire x1="0" y1="-0.635" x2="0" y2="0.635" width="0.0024" layer="37"/>
<circle x="0" y="0" radius="0.635" width="0.254" layer="37"/>
<smd name="TP" x="0" y="0" dx="2.54" dy="2.54" layer="1" roundness="100" cream="no"/>
<text x="-1.27" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-1.397" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-3.175" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="P1-13" urn="urn:adsk.eagle:footprint:27902/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<circle x="0" y="0" radius="0.762" width="0.1524" layer="51"/>
<pad name="TP" x="0" y="0" drill="1.3208" diameter="2.159" shape="octagon"/>
<text x="-1.016" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
<rectangle x1="-0.3302" y1="-0.3302" x2="0.3302" y2="0.3302" layer="51"/>
</package>
<package name="P1-13Y" urn="urn:adsk.eagle:footprint:27903/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<circle x="0" y="0" radius="0.762" width="0.1524" layer="51"/>
<pad name="TP" x="0" y="0" drill="1.3208" diameter="1.905" shape="long" rot="R90"/>
<text x="-0.889" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-3.81" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
<rectangle x1="-0.3302" y1="-0.3302" x2="0.3302" y2="0.3302" layer="51"/>
</package>
<package name="P1-17" urn="urn:adsk.eagle:footprint:27904/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<circle x="0" y="0" radius="0.8128" width="0.1524" layer="51"/>
<pad name="TP" x="0" y="0" drill="1.7018" diameter="2.54" shape="octagon"/>
<text x="-1.143" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-3.175" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
<rectangle x1="-0.3302" y1="-0.3302" x2="0.3302" y2="0.3302" layer="51"/>
</package>
<package name="P1-17Y" urn="urn:adsk.eagle:footprint:27905/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<circle x="0" y="0" radius="0.8128" width="0.1524" layer="51"/>
<pad name="TP" x="0" y="0" drill="1.7018" diameter="2.1208" shape="long" rot="R90"/>
<text x="-1.143" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-3.81" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
<rectangle x1="-0.3302" y1="-0.3302" x2="0.3302" y2="0.3302" layer="51"/>
</package>
<package name="P1-20" urn="urn:adsk.eagle:footprint:27906/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="TP" x="0" y="0" drill="2.0066" diameter="3.1496" shape="octagon"/>
<text x="-1.524" y="1.778" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-3.175" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
<rectangle x1="-0.3302" y1="-0.3302" x2="0.3302" y2="0.3302" layer="51"/>
</package>
<package name="P1-20Y" urn="urn:adsk.eagle:footprint:27907/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="TP" x="0" y="0" drill="2.0066" diameter="2.54" shape="long" rot="R90"/>
<text x="-1.27" y="2.794" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-4.445" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
<rectangle x1="-0.3302" y1="-0.3302" x2="0.3302" y2="0.3302" layer="51"/>
</package>
<package name="TP06R" urn="urn:adsk.eagle:footprint:27908/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.6" dy="0.6" layer="1" roundness="100" cream="no"/>
<text x="-0.3" y="0.4001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.254" y="-0.381" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP06SQ" urn="urn:adsk.eagle:footprint:27909/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.5996" dy="0.5996" layer="1" cream="no"/>
<text x="-0.3" y="0.4001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.254" y="-0.381" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP07R" urn="urn:adsk.eagle:footprint:27910/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.7" dy="0.7" layer="1" roundness="100" cream="no"/>
<text x="-0.3" y="0.4001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.254" y="-0.508" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP07SQ" urn="urn:adsk.eagle:footprint:27911/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.7" dy="0.7" layer="1" cream="no"/>
<text x="-0.3" y="0.4001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.381" y="-0.381" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP08R" urn="urn:adsk.eagle:footprint:27912/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.8" dy="0.8" layer="1" roundness="100" cream="no"/>
<text x="-0.3" y="0.4001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.381" y="-0.381" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP08SQ" urn="urn:adsk.eagle:footprint:27913/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.8" dy="0.8" layer="1" cream="no"/>
<text x="-0.3" y="0.4001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.381" y="-0.508" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP09R" urn="urn:adsk.eagle:footprint:27914/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.9" dy="0.9" layer="1" roundness="100" cream="no"/>
<text x="-0.4501" y="0.5001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.381" y="-0.508" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP09SQ" urn="urn:adsk.eagle:footprint:27915/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="0.8998" dy="0.8998" layer="1" cream="no"/>
<text x="-0.4501" y="0.5001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.381" y="-0.508" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP10R" urn="urn:adsk.eagle:footprint:27916/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1" dy="1" layer="1" roundness="100" cream="no"/>
<text x="-0.5001" y="0.5499" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.381" y="-0.508" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP10SQ" urn="urn:adsk.eagle:footprint:27917/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1" dy="1" layer="1" cream="no"/>
<text x="-0.5001" y="0.5499" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.635" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP11R" urn="urn:adsk.eagle:footprint:27918/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.1" dy="1.1" layer="1" roundness="100" cream="no"/>
<text x="-0.5499" y="0.5999" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.508" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-1.905" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP11SQ" urn="urn:adsk.eagle:footprint:27919/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.1" dy="1.1" layer="1" cream="no"/>
<text x="-0.5499" y="0.5999" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.635" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP12SQ" urn="urn:adsk.eagle:footprint:27920/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.1998" dy="1.1998" layer="1" cream="no"/>
<text x="-0.5999" y="0.65" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.635" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP12R" urn="urn:adsk.eagle:footprint:27921/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.2" dy="1.2" layer="1" roundness="100" cream="no"/>
<text x="-0.5999" y="0.65" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.635" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP13R" urn="urn:adsk.eagle:footprint:27922/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.3" dy="1.3" layer="1" roundness="100" cream="no"/>
<text x="-0.65" y="0.7" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.635" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP14R" urn="urn:adsk.eagle:footprint:27923/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.4" dy="1.4" layer="1" roundness="100" cream="no"/>
<text x="-0.7" y="0.7501" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.508" y="-0.762" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP15R" urn="urn:adsk.eagle:footprint:27924/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.5" dy="1.5" layer="1" roundness="100" cream="no"/>
<text x="-0.7501" y="0.8001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-0.762" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP16R" urn="urn:adsk.eagle:footprint:27925/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.6" dy="1.6" layer="1" roundness="100" cream="no"/>
<text x="-0.8001" y="0.8499" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-0.762" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP17R" urn="urn:adsk.eagle:footprint:27926/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.7" dy="1.7" layer="1" roundness="100" cream="no"/>
<text x="-0.8499" y="0.8999" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-0.889" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP18R" urn="urn:adsk.eagle:footprint:27927/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.8" dy="1.8" layer="1" roundness="100" cream="no"/>
<text x="-0.8999" y="0.95" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-0.889" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP19R" urn="urn:adsk.eagle:footprint:27928/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.9" dy="1.9" layer="1" roundness="100" cream="no"/>
<text x="-0.95" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-0.889" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP20R" urn="urn:adsk.eagle:footprint:27929/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="2" dy="2" layer="1" roundness="100" cream="no"/>
<text x="-1" y="1.05" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-1.016" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP13SQ" urn="urn:adsk.eagle:footprint:27930/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.3" dy="1.3" layer="1" cream="no"/>
<text x="-0.65" y="0.7" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-0.762" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP14SQ" urn="urn:adsk.eagle:footprint:27931/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.4" dy="1.4" layer="1" cream="no"/>
<text x="-0.7" y="0.7501" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-0.762" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP15SQ" urn="urn:adsk.eagle:footprint:27932/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.5" dy="1.5" layer="1" cream="no"/>
<text x="-0.7501" y="0.8001" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-0.889" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP16SQ" urn="urn:adsk.eagle:footprint:27933/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.5996" dy="1.5996" layer="1" cream="no"/>
<text x="-0.8001" y="0.8499" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-0.889" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP17SQ" urn="urn:adsk.eagle:footprint:27934/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.7" dy="1.7" layer="1" cream="no"/>
<text x="-0.8499" y="0.8999" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-0.889" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP18SQ" urn="urn:adsk.eagle:footprint:27935/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.8" dy="1.8" layer="1" cream="no"/>
<text x="-0.8999" y="0.95" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.889" y="-1.016" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP19SQ" urn="urn:adsk.eagle:footprint:27936/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="1.8998" dy="1.8998" layer="1" cream="no"/>
<text x="-0.95" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.889" y="-1.016" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
<package name="TP20SQ" urn="urn:adsk.eagle:footprint:27937/1" library_version="1">
<description>&lt;b&gt;TEST PAD&lt;/b&gt;</description>
<smd name="TP" x="0" y="0" dx="2" dy="2" layer="1" cream="no"/>
<text x="-1" y="1.05" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.0254" layer="27">&gt;VALUE</text>
<text x="0" y="-2.54" size="1" layer="37">&gt;TP_SIGNAL_NAME</text>
</package>
</packages>
<packages3d>
<package3d name="B1,27" urn="urn:adsk.eagle:package:27944/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="B2,54" urn="urn:adsk.eagle:package:27948/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="P1-13" urn="urn:adsk.eagle:package:27946/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="P1-13Y" urn="urn:adsk.eagle:package:27947/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="P1-17" urn="urn:adsk.eagle:package:27949/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="P1-17Y" urn="urn:adsk.eagle:package:27953/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="P1-20" urn="urn:adsk.eagle:package:27950/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="P1-20Y" urn="urn:adsk.eagle:package:27951/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP06R" urn="urn:adsk.eagle:package:27954/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP06SQ" urn="urn:adsk.eagle:package:27952/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP07R" urn="urn:adsk.eagle:package:27970/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP07SQ" urn="urn:adsk.eagle:package:27955/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP08R" urn="urn:adsk.eagle:package:27956/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP08SQ" urn="urn:adsk.eagle:package:27960/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP09R" urn="urn:adsk.eagle:package:27958/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP09SQ" urn="urn:adsk.eagle:package:27957/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP10R" urn="urn:adsk.eagle:package:27959/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP10SQ" urn="urn:adsk.eagle:package:27962/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP11R" urn="urn:adsk.eagle:package:27961/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP11SQ" urn="urn:adsk.eagle:package:27965/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP12SQ" urn="urn:adsk.eagle:package:27964/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP12R" urn="urn:adsk.eagle:package:27963/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP13R" urn="urn:adsk.eagle:package:27967/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP14R" urn="urn:adsk.eagle:package:27966/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP15R" urn="urn:adsk.eagle:package:27968/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP16R" urn="urn:adsk.eagle:package:27969/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP17R" urn="urn:adsk.eagle:package:27971/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP18R" urn="urn:adsk.eagle:package:27981/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP19R" urn="urn:adsk.eagle:package:27972/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP20R" urn="urn:adsk.eagle:package:27973/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP13SQ" urn="urn:adsk.eagle:package:27974/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP14SQ" urn="urn:adsk.eagle:package:27984/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP15SQ" urn="urn:adsk.eagle:package:27975/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP16SQ" urn="urn:adsk.eagle:package:27976/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP17SQ" urn="urn:adsk.eagle:package:27977/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP18SQ" urn="urn:adsk.eagle:package:27979/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP19SQ" urn="urn:adsk.eagle:package:27978/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
<package3d name="TP20SQ" urn="urn:adsk.eagle:package:27980/1" type="box" library_version="1">
<description>TEST PAD</description>
</package3d>
</packages3d>
<symbols>
<symbol name="TP" urn="urn:adsk.eagle:symbol:27940/1" library_version="1">
<wire x1="-0.762" y1="-0.762" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0.762" y2="-0.762" width="0.254" layer="94"/>
<wire x1="0.762" y1="-0.762" x2="0" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0" y1="-1.524" x2="-0.762" y2="-0.762" width="0.254" layer="94"/>
<text x="-1.27" y="1.27" size="1.778" layer="95">&gt;NAME</text>
<text x="1.27" y="-1.27" size="1.778" layer="97">&gt;TP_SIGNAL_NAME</text>
<pin name="TP" x="0" y="-2.54" visible="off" length="short" direction="in" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TP" urn="urn:adsk.eagle:component:27992/1" prefix="TP" library_version="1">
<description>&lt;b&gt;Test pad&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="TP" x="0" y="0"/>
</gates>
<devices>
<device name="B1,27" package="B1,27">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27944/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="B2,54" package="B2,54">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27948/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="PAD1-13" package="P1-13">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27946/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="PAD1-13Y" package="P1-13Y">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27947/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="PAD1-17" package="P1-17">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27949/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="PAD1-17Y" package="P1-17Y">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27953/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="PAD1-20" package="P1-20">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27950/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="PAD1-20Y" package="P1-20Y">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27951/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP06R" package="TP06R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27954/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP06SQ" package="TP06SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27952/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP07R" package="TP07R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27970/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP07SQ" package="TP07SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27955/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP08R" package="TP08R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27956/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP08SQ" package="TP08SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27960/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP09R" package="TP09R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27958/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP09SQ" package="TP09SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27957/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP10R" package="TP10R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27959/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP10SQ" package="TP10SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27962/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP11R" package="TP11R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27961/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP11SQ" package="TP11SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27965/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP12SQ" package="TP12SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27964/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP12R" package="TP12R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27963/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP13R" package="TP13R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27967/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP14R" package="TP14R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27966/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP15R" package="TP15R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27968/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP16R" package="TP16R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27969/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP17R" package="TP17R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27971/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP18R" package="TP18R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27981/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP19R" package="TP19R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27972/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP20R" package="TP20R">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27973/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP13SQ" package="TP13SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27974/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP14SQ" package="TP14SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27984/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP15SQ" package="TP15SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27975/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP16SQ" package="TP16SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27976/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP17SQ" package="TP17SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27977/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP18SQ" package="TP18SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27979/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP19SQ" package="TP19SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27978/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="TP20SQ" package="TP20SQ">
<connects>
<connect gate="G$1" pin="TP" pad="TP"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27980/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="TP_SIGNAL_NAME" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="oshw">
<description>&lt;p&gt;&lt;strong&gt;Open Source Hardware PCB Logos&lt;/strong&gt;
&lt;p&gt;A simple polygon based version of the OSHWA logos for use on Eagle PCB's
&lt;p&gt;For use please refer to the OSHWA definition at &lt;a href="http://www.oshwa.org/definition/"&gt;http://www.oshwa.org/definition/&lt;/a&gt;
&lt;p&gt;Based on the NBitWonder version (&lt;a href="http://nbitwonder.com"&gt;http://nbitwonder.com&lt;/a&gt;)
&lt;p&gt;&lt;strong&gt;Andrew Cooper&lt;/strong&gt;&lt;br&gt;28Nov2016&lt;br&gt;&lt;a href="http://www.darkerview.com"&gt;www.DarkerView.com&lt;/a&gt;</description>
<packages>
<package name="OSHW_16MM">
<polygon width="0.127" layer="25">
<vertex x="-0.7874" y="-2.032" curve="-159.559114"/>
<vertex x="0" y="2.1844" curve="-161.899642"/>
<vertex x="0.9144" y="-2.032"/>
<vertex x="2.2352" y="-5.3848"/>
<vertex x="2.5654" y="-5.2324"/>
<vertex x="2.9718" y="-5.0038"/>
<vertex x="3.2766" y="-4.8006"/>
<vertex x="4.953" y="-5.9944"/>
<vertex x="5.3848" y="-5.6134"/>
<vertex x="5.7912" y="-5.1816"/>
<vertex x="6.0706" y="-4.8514"/>
<vertex x="6.2484" y="-4.6228"/>
<vertex x="5.0546" y="-2.8956"/>
<vertex x="5.2578" y="-2.4638"/>
<vertex x="5.4356" y="-1.9812"/>
<vertex x="5.588" y="-1.4732"/>
<vertex x="5.6642" y="-1.1684"/>
<vertex x="7.7216" y="-0.7874"/>
<vertex x="7.7216" y="-0.3556"/>
<vertex x="7.7216" y="0.0508"/>
<vertex x="7.6962" y="0.5588"/>
<vertex x="7.6454" y="1.0922"/>
<vertex x="5.5372" y="1.4986"/>
<vertex x="5.3848" y="2.032"/>
<vertex x="5.1562" y="2.5146"/>
<vertex x="5.0038" y="2.794"/>
<vertex x="4.8514" y="3.048"/>
<vertex x="6.0452" y="4.7244"/>
<vertex x="5.7404" y="5.08"/>
<vertex x="5.461" y="5.4102"/>
<vertex x="5.08" y="5.7404"/>
<vertex x="4.6482" y="6.1214"/>
<vertex x="2.8702" y="4.9022"/>
<vertex x="2.5654" y="5.08"/>
<vertex x="2.1336" y="5.2578"/>
<vertex x="1.7272" y="5.4102"/>
<vertex x="1.3462" y="5.5372"/>
<vertex x="1.016" y="7.5692"/>
<vertex x="0.5334" y="7.62"/>
<vertex x="0.0254" y="7.62"/>
<vertex x="-0.508" y="7.62"/>
<vertex x="-0.9398" y="7.5692"/>
<vertex x="-1.0414" y="6.985"/>
<vertex x="-1.3208" y="5.5118"/>
<vertex x="-1.8034" y="5.3594"/>
<vertex x="-2.2098" y="5.207"/>
<vertex x="-2.6162" y="5.0038"/>
<vertex x="-2.921" y="4.8514"/>
<vertex x="-4.6228" y="6.0706"/>
<vertex x="-5.0038" y="5.7404"/>
<vertex x="-5.334" y="5.4356"/>
<vertex x="-5.6642" y="5.08"/>
<vertex x="-5.9944" y="4.7244"/>
<vertex x="-4.8006" y="2.9972"/>
<vertex x="-5.0546" y="2.6162"/>
<vertex x="-5.2578" y="2.1844"/>
<vertex x="-5.4102" y="1.778"/>
<vertex x="-5.5626" y="1.2446"/>
<vertex x="-7.62" y="0.9398"/>
<vertex x="-7.6454" y="0.6096"/>
<vertex x="-7.6454" y="-0.0762"/>
<vertex x="-7.6454" y="-0.5334"/>
<vertex x="-7.62" y="-0.9398"/>
<vertex x="-5.5626" y="-1.3208"/>
<vertex x="-5.461" y="-1.778"/>
<vertex x="-5.3086" y="-2.159"/>
<vertex x="-5.1054" y="-2.6162"/>
<vertex x="-4.826" y="-3.1496"/>
<vertex x="-6.0198" y="-4.8514"/>
<vertex x="-5.715" y="-5.207"/>
<vertex x="-5.4102" y="-5.5372"/>
<vertex x="-5.0038" y="-5.8928"/>
<vertex x="-4.6736" y="-6.1468"/>
<vertex x="-2.9972" y="-4.953"/>
<vertex x="-2.6416" y="-5.1562"/>
<vertex x="-2.286" y="-5.334"/>
<vertex x="-1.9812" y="-5.461"/>
</polygon>
<text x="9.779" y="-7.0612" size="2.54" layer="25" rot="R180">open source
  hardware</text>
</package>
<package name="OSHW_8MM">
<polygon width="0.0508" layer="25">
<vertex x="-0.381" y="-0.9906" curve="-160.613168"/>
<vertex x="0" y="1.0668" curve="-162.088112"/>
<vertex x="0.4572" y="-0.9906"/>
<vertex x="1.1176" y="-2.6924"/>
<vertex x="1.2954" y="-2.5908"/>
<vertex x="1.4732" y="-2.4892"/>
<vertex x="1.651" y="-2.3876"/>
<vertex x="2.4892" y="-2.9972"/>
<vertex x="2.667" y="-2.8194"/>
<vertex x="2.8194" y="-2.667"/>
<vertex x="2.9718" y="-2.4892"/>
<vertex x="3.1242" y="-2.3114"/>
<vertex x="2.5146" y="-1.397"/>
<vertex x="2.6416" y="-1.1938"/>
<vertex x="2.7178" y="-0.9652"/>
<vertex x="2.794" y="-0.7366"/>
<vertex x="2.8448" y="-0.5588"/>
<vertex x="3.8608" y="-0.381"/>
<vertex x="3.8862" y="-0.1016"/>
<vertex x="3.8862" y="0.127"/>
<vertex x="3.8608" y="0.3302"/>
<vertex x="3.8354" y="0.5842"/>
<vertex x="2.794" y="0.762"/>
<vertex x="2.6924" y="1.0414"/>
<vertex x="2.6416" y="1.1938"/>
<vertex x="2.54" y="1.3716"/>
<vertex x="2.413" y="1.5748"/>
<vertex x="3.048" y="2.3876"/>
<vertex x="2.8956" y="2.5654"/>
<vertex x="2.7178" y="2.7432"/>
<vertex x="2.5146" y="2.921"/>
<vertex x="2.3114" y="3.0988"/>
<vertex x="1.4478" y="2.4892"/>
<vertex x="1.2192" y="2.5908"/>
<vertex x="1.016" y="2.6924"/>
<vertex x="0.8382" y="2.7432"/>
<vertex x="0.6604" y="2.794"/>
<vertex x="0.508" y="3.8354"/>
<vertex x="0.2286" y="3.8354"/>
<vertex x="0" y="3.8354"/>
<vertex x="-0.2794" y="3.8354"/>
<vertex x="-0.4572" y="3.8354"/>
<vertex x="-0.6604" y="2.794"/>
<vertex x="-0.9398" y="2.7178"/>
<vertex x="-1.143" y="2.6162"/>
<vertex x="-1.4478" y="2.4638"/>
<vertex x="-2.3114" y="3.0734"/>
<vertex x="-2.4892" y="2.921"/>
<vertex x="-2.667" y="2.7432"/>
<vertex x="-2.8448" y="2.5654"/>
<vertex x="-2.9972" y="2.3876"/>
<vertex x="-2.413" y="1.524"/>
<vertex x="-2.54" y="1.2954"/>
<vertex x="-2.6416" y="1.0668"/>
<vertex x="-2.7178" y="0.8636"/>
<vertex x="-2.794" y="0.6604"/>
<vertex x="-3.81" y="0.508"/>
<vertex x="-3.8354" y="0.2032"/>
<vertex x="-3.8354" y="0"/>
<vertex x="-3.8354" y="-0.2286"/>
<vertex x="-3.8354" y="-0.4572"/>
<vertex x="-2.7686" y="-0.635"/>
<vertex x="-2.7178" y="-0.889"/>
<vertex x="-2.6162" y="-1.143"/>
<vertex x="-2.5146" y="-1.3716"/>
<vertex x="-2.413" y="-1.5748"/>
<vertex x="-3.0226" y="-2.3876"/>
<vertex x="-2.8702" y="-2.5654"/>
<vertex x="-2.6924" y="-2.7432"/>
<vertex x="-2.5146" y="-2.921"/>
<vertex x="-2.3622" y="-3.048"/>
<vertex x="-1.4986" y="-2.4638"/>
<vertex x="-1.3208" y="-2.5654"/>
<vertex x="-1.143" y="-2.6416"/>
<vertex x="-0.9906" y="-2.7178"/>
</polygon>
<text x="4.8006" y="-3.6576" size="1.27" layer="25" rot="R180">open source
  hardware</text>
</package>
<package name="OSHW_5MM">
<polygon width="0.0508" layer="25">
<vertex x="-0.2413" y="-0.6096" curve="-160.717601"/>
<vertex x="0" y="0.6604" curve="-152.950596"/>
<vertex x="0.2794" y="-0.6096"/>
<vertex x="0.6731" y="-1.6002"/>
<vertex x="0.8255" y="-1.5367"/>
<vertex x="0.9779" y="-1.4351"/>
<vertex x="1.4859" y="-1.7907"/>
<vertex x="1.5875" y="-1.7018"/>
<vertex x="1.6764" y="-1.6129"/>
<vertex x="1.778" y="-1.4986"/>
<vertex x="1.8669" y="-1.3843"/>
<vertex x="1.4986" y="-0.8509"/>
<vertex x="1.5875" y="-0.6985"/>
<vertex x="1.6383" y="-0.5461"/>
<vertex x="1.6891" y="-0.3429"/>
<vertex x="2.3114" y="-0.2286"/>
<vertex x="2.3114" y="-0.0508"/>
<vertex x="2.3114" y="0.0635"/>
<vertex x="2.2987" y="0.2032"/>
<vertex x="2.286" y="0.3302"/>
<vertex x="1.6637" y="0.4445"/>
<vertex x="1.6129" y="0.6096"/>
<vertex x="1.5494" y="0.7493"/>
<vertex x="1.4605" y="0.9017"/>
<vertex x="1.4478" y="0.9271"/>
<vertex x="1.8034" y="1.4224"/>
<vertex x="1.7018" y="1.5494"/>
<vertex x="1.5748" y="1.6764"/>
<vertex x="1.4732" y="1.7653"/>
<vertex x="1.3843" y="1.8288"/>
<vertex x="0.8636" y="1.4605"/>
<vertex x="0.7493" y="1.524"/>
<vertex x="0.635" y="1.5748"/>
<vertex x="0.5207" y="1.6256"/>
<vertex x="0.4064" y="1.651"/>
<vertex x="0.2921" y="2.2733"/>
<vertex x="0.1397" y="2.286"/>
<vertex x="-0.0381" y="2.286"/>
<vertex x="-0.1524" y="2.286"/>
<vertex x="-0.2794" y="2.2733"/>
<vertex x="-0.381" y="1.6637"/>
<vertex x="-0.5715" y="1.6002"/>
<vertex x="-0.6985" y="1.5494"/>
<vertex x="-0.8763" y="1.4478"/>
<vertex x="-1.3843" y="1.8161"/>
<vertex x="-1.4986" y="1.7272"/>
<vertex x="-1.6256" y="1.6002"/>
<vertex x="-1.7272" y="1.4859"/>
<vertex x="-1.7907" y="1.4224"/>
<vertex x="-1.4351" y="0.9017"/>
<vertex x="-1.5113" y="0.7747"/>
<vertex x="-1.5875" y="0.6096"/>
<vertex x="-1.6256" y="0.4699"/>
<vertex x="-1.6637" y="0.381"/>
<vertex x="-2.286" y="0.2794"/>
<vertex x="-2.286" y="-0.2794"/>
<vertex x="-1.6637" y="-0.381"/>
<vertex x="-1.6129" y="-0.5588"/>
<vertex x="-1.5748" y="-0.6858"/>
<vertex x="-1.524" y="-0.7874"/>
<vertex x="-1.4351" y="-0.9398"/>
<vertex x="-1.8034" y="-1.4478"/>
<vertex x="-1.7018" y="-1.5621"/>
<vertex x="-1.6129" y="-1.651"/>
<vertex x="-1.4986" y="-1.7526"/>
<vertex x="-1.4097" y="-1.8288"/>
<vertex x="-0.889" y="-1.4732"/>
<vertex x="-0.5969" y="-1.6256"/>
</polygon>
<text x="2.921" y="-2.032" size="0.762" layer="25" rot="R180">open source
  hardware</text>
</package>
</packages>
<symbols>
<symbol name="OSHWLOGO">
<wire x1="0" y1="0" x2="0" y2="7.62" width="0.254" layer="94"/>
<wire x1="0" y1="7.62" x2="17.78" y2="7.62" width="0.254" layer="94"/>
<wire x1="17.78" y1="7.62" x2="17.78" y2="0" width="0.254" layer="94"/>
<wire x1="17.78" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<text x="2.54" y="2.54" size="1.778" layer="94">OSHW Logo</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="OSHWLOGO" prefix="GOLD_ORB_SM">
<description>&lt;p&gt;The OSHW logo for PCB layout</description>
<gates>
<gate name="G$1" symbol="OSHWLOGO" x="0" y="0"/>
</gates>
<devices>
<device name="LOGO16MM" package="OSHW_16MM">
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOGO8MM" package="OSHW_8MM">
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOGO5MM" package="OSHW_5MM">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="misc" deviceset="STM32L011F4" device="PX"/>
<part name="RJ11" library="con-tycoelectronics" library_urn="urn:adsk.eagle:library:193" deviceset="RJ11" device="" package3d_urn="urn:adsk.eagle:package:10656/1" technology="-2L-B"/>
<part name="P+2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="NRF" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-2X4" device="" package3d_urn="urn:adsk.eagle:package:22461/2"/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="+3V1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="+3V2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="GND6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="U2" library="misc" deviceset="MIC550X" device=""/>
<part name="+3V3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="P+3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="GND7" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="C2" library="misc" deviceset="C-EU" device="-0603" value="4u7"/>
<part name="C4" library="misc" deviceset="C-EU" device="-0603" value="100n"/>
<part name="C3" library="misc" deviceset="C-EU" device="-0603" value="100n"/>
<part name="C1" library="misc" deviceset="C-EU" device="-0603" value="4u7"/>
<part name="C5" library="misc" deviceset="C-EU" device="-0603" value="100n"/>
<part name="GND8" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="R1" library="misc" deviceset="R-EU" device="-0603" value="10k"/>
<part name="GND9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="+3V4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="C6" library="misc" deviceset="C-EU" device="-0603" value="1u"/>
<part name="C7" library="misc" deviceset="C-EU" device="-0603" value="4u7"/>
<part name="R4" library="misc" deviceset="R-EU" device="-0603" value="1k"/>
<part name="R3" library="misc" deviceset="R-EU" device="-0603" value="220"/>
<part name="+3V5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
<part name="D1" library="misc" deviceset="LED-DUAL" device=""/>
<part name="SW1" library="misc" deviceset="SW-SPST" device=""/>
<part name="D" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="TP" device="TP10R" package3d_urn="urn:adsk.eagle:package:27959/1"/>
<part name="C" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="TP" device="TP10R" package3d_urn="urn:adsk.eagle:package:27959/1"/>
<part name="R" library="testpad" library_urn="urn:adsk.eagle:library:385" deviceset="TP" device="TP10R" package3d_urn="urn:adsk.eagle:package:27959/1"/>
<part name="R2" library="misc" deviceset="R-EU" device="-0603" value="2.2k"/>
<part name="GOLD_ORB_SM1" library="oshw" deviceset="OSHWLOGO" device="LOGO5MM"/>
<part name="U$1" library="misc" deviceset="GPX_LOGO" device=""/>
<part name="R5" library="misc" deviceset="R-EU" device="-0603" value="220"/>
<part name="D2" library="misc" deviceset="UCLAMP3301H" device="SOD523"/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="R6" library="misc" deviceset="R-EU" device="-0603" value="220"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="G$1" x="68.58" y="66.04"/>
<instance part="RJ11" gate="G$1" x="132.08" y="93.98" rot="MR90"/>
<instance part="P+2" gate="1" x="147.32" y="96.52" rot="MR0"/>
<instance part="GND3" gate="1" x="124.46" y="86.36" rot="MR0"/>
<instance part="GND4" gate="1" x="132.08" y="86.36" rot="MR0"/>
<instance part="NRF" gate="A" x="91.44" y="119.38"/>
<instance part="GND5" gate="1" x="78.74" y="129.54" rot="MR0"/>
<instance part="+3V1" gate="G$1" x="101.6" y="134.62"/>
<instance part="+3V2" gate="G$1" x="91.44" y="71.12" rot="MR0"/>
<instance part="GND6" gate="1" x="91.44" y="60.96" rot="MR0"/>
<instance part="U2" gate="G$1" x="-10.16" y="116.84"/>
<instance part="+3V3" gate="G$1" x="10.16" y="137.16"/>
<instance part="P+3" gate="1" x="-25.4" y="137.16" rot="MR0"/>
<instance part="GND7" gate="1" x="-7.62" y="104.14" rot="MR0"/>
<instance part="C2" gate="G$1" x="10.16" y="119.38"/>
<instance part="C4" gate="G$1" x="17.78" y="119.38"/>
<instance part="C3" gate="G$1" x="25.4" y="119.38"/>
<instance part="C1" gate="G$1" x="-25.4" y="119.38"/>
<instance part="C5" gate="G$1" x="15.24" y="71.12"/>
<instance part="GND8" gate="1" x="15.24" y="58.42" rot="MR0"/>
<instance part="R1" gate="G$1" x="40.64" y="88.9"/>
<instance part="GND9" gate="1" x="25.4" y="83.82" rot="MR0"/>
<instance part="+3V4" gate="G$1" x="43.18" y="71.12"/>
<instance part="C6" gate="G$1" x="33.02" y="119.38"/>
<instance part="C7" gate="G$1" x="40.64" y="119.38"/>
<instance part="R4" gate="G$1" x="12.7" y="33.02" rot="MR270"/>
<instance part="R3" gate="G$1" x="20.32" y="33.02" rot="MR270"/>
<instance part="+3V5" gate="G$1" x="7.62" y="30.48"/>
<instance part="D1" gate="G$1" x="17.78" y="48.26" rot="R180"/>
<instance part="SW1" gate="G$1" x="33.02" y="63.5"/>
<instance part="D" gate="G$1" x="91.44" y="86.36"/>
<instance part="C" gate="G$1" x="91.44" y="91.44"/>
<instance part="R" gate="G$1" x="15.24" y="78.74"/>
<instance part="R2" gate="G$1" x="38.1" y="78.74"/>
<instance part="GOLD_ORB_SM1" gate="G$1" x="-38.1" y="78.74"/>
<instance part="U$1" gate="G$1" x="-25.4" y="63.5"/>
<instance part="R5" gate="G$1" x="96.52" y="78.74" rot="R180"/>
<instance part="D2" gate="G$1" x="127" y="68.58" rot="R90"/>
<instance part="GND1" gate="1" x="127" y="60.96" rot="MR0"/>
<instance part="R6" gate="G$1" x="119.38" y="73.66" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="+5V" class="0">
<segment>
<pinref part="RJ11" gate="G$1" pin="1"/>
<wire x1="137.16" y1="91.44" x2="137.16" y2="86.36" width="0.1524" layer="91"/>
<pinref part="P+2" gate="1" pin="+5V"/>
<wire x1="147.32" y1="86.36" x2="147.32" y2="93.98" width="0.1524" layer="91"/>
<wire x1="147.32" y1="86.36" x2="137.16" y2="86.36" width="0.1524" layer="91"/>
<pinref part="RJ11" gate="G$1" pin="2"/>
<wire x1="134.62" y1="91.44" x2="134.62" y2="86.36" width="0.1524" layer="91"/>
<wire x1="134.62" y1="86.36" x2="137.16" y2="86.36" width="0.1524" layer="91"/>
<junction x="137.16" y="86.36"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="VIN"/>
<pinref part="P+3" gate="1" pin="+5V"/>
<wire x1="-25.4" y1="134.62" x2="-25.4" y2="127" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="-25.4" y1="127" x2="-22.86" y2="127" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="121.92" x2="-25.4" y2="127" width="0.1524" layer="91"/>
<junction x="-25.4" y="127"/>
<pinref part="U2" gate="G$1" pin="EN"/>
<wire x1="-22.86" y1="121.92" x2="-22.86" y2="127" width="0.1524" layer="91"/>
<junction x="-22.86" y="127"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="RJ11" gate="G$1" pin="6"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="124.46" y1="91.44" x2="124.46" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="RJ11" gate="G$1" pin="3"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="132.08" y1="88.9" x2="132.08" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VSS"/>
<pinref part="GND6" gate="1" pin="GND"/>
<wire x1="88.9" y1="63.5" x2="91.44" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="NRF" gate="A" pin="1"/>
<wire x1="88.9" y1="124.46" x2="83.82" y2="124.46" width="0.1524" layer="91"/>
<wire x1="83.82" y1="124.46" x2="83.82" y2="132.08" width="0.1524" layer="91"/>
<wire x1="83.82" y1="132.08" x2="78.74" y2="132.08" width="0.1524" layer="91"/>
<pinref part="GND5" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="GND"/>
<pinref part="GND7" gate="1" pin="GND"/>
<wire x1="-7.62" y1="106.68" x2="-7.62" y2="109.22" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="-7.62" y1="109.22" x2="-7.62" y2="111.76" width="0.1524" layer="91"/>
<wire x1="10.16" y1="114.3" x2="10.16" y2="109.22" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="2"/>
<wire x1="10.16" y1="109.22" x2="17.78" y2="109.22" width="0.1524" layer="91"/>
<wire x1="17.78" y1="109.22" x2="17.78" y2="114.3" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="2"/>
<wire x1="17.78" y1="109.22" x2="25.4" y2="109.22" width="0.1524" layer="91"/>
<wire x1="25.4" y1="109.22" x2="25.4" y2="114.3" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="109.22" x2="10.16" y2="109.22" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="-25.4" y1="114.3" x2="-25.4" y2="109.22" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="109.22" x2="-7.62" y2="109.22" width="0.1524" layer="91"/>
<junction x="10.16" y="109.22"/>
<junction x="17.78" y="109.22"/>
<junction x="-7.62" y="109.22"/>
<pinref part="C6" gate="G$1" pin="2"/>
<wire x1="25.4" y1="109.22" x2="33.02" y2="109.22" width="0.1524" layer="91"/>
<wire x1="33.02" y1="109.22" x2="33.02" y2="114.3" width="0.1524" layer="91"/>
<junction x="25.4" y="109.22"/>
<pinref part="C7" gate="G$1" pin="2"/>
<wire x1="33.02" y1="109.22" x2="40.64" y2="109.22" width="0.1524" layer="91"/>
<wire x1="40.64" y1="109.22" x2="40.64" y2="114.3" width="0.1524" layer="91"/>
<junction x="33.02" y="109.22"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="2"/>
<pinref part="GND8" gate="1" pin="GND"/>
<wire x1="15.24" y1="60.96" x2="15.24" y2="63.5" width="0.1524" layer="91"/>
<pinref part="SW1" gate="G$1" pin="1"/>
<wire x1="15.24" y1="63.5" x2="15.24" y2="66.04" width="0.1524" layer="91"/>
<wire x1="27.94" y1="63.5" x2="15.24" y2="63.5" width="0.1524" layer="91"/>
<junction x="15.24" y="63.5"/>
</segment>
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<pinref part="GND9" gate="1" pin="GND"/>
<wire x1="35.56" y1="88.9" x2="25.4" y2="88.9" width="0.1524" layer="91"/>
<wire x1="25.4" y1="88.9" x2="25.4" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D2" gate="G$1" pin="A"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="127" y1="63.5" x2="127" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D_IO" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA9"/>
<wire x1="88.9" y1="73.66" x2="104.14" y2="73.66" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="101.6" y1="78.74" x2="104.14" y2="78.74" width="0.1524" layer="91"/>
<wire x1="104.14" y1="78.74" x2="104.14" y2="73.66" width="0.1524" layer="91"/>
<label x="104.14" y="78.74" size="1.778" layer="95" xref="yes"/>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="114.3" y1="73.66" x2="104.14" y2="73.66" width="0.1524" layer="91"/>
<junction x="104.14" y="73.66"/>
</segment>
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="33.02" y1="78.74" x2="30.48" y2="78.74" width="0.1524" layer="91"/>
<label x="30.48" y="78.74" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SPI_MISO" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA6"/>
<wire x1="88.9" y1="48.26" x2="91.44" y2="48.26" width="0.1524" layer="91"/>
<label x="91.44" y="48.26" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="NRF" gate="A" pin="7"/>
<wire x1="88.9" y1="116.84" x2="81.28" y2="116.84" width="0.1524" layer="91"/>
<wire x1="81.28" y1="116.84" x2="81.28" y2="114.3" width="0.1524" layer="91"/>
<label x="81.28" y="114.3" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="SPI_MOSI" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA7"/>
<wire x1="88.9" y1="53.34" x2="91.44" y2="53.34" width="0.1524" layer="91"/>
<label x="91.44" y="53.34" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="NRF" gate="A" pin="6"/>
<wire x1="96.52" y1="119.38" x2="104.14" y2="119.38" width="0.1524" layer="91"/>
<label x="104.14" y="119.38" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="SPI_SCK" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA5"/>
<wire x1="88.9" y1="43.18" x2="91.44" y2="43.18" width="0.1524" layer="91"/>
<label x="91.44" y="43.18" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="NRF" gate="A" pin="5"/>
<wire x1="88.9" y1="119.38" x2="81.28" y2="119.38" width="0.1524" layer="91"/>
<label x="81.28" y="119.38" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="NRF_CE" class="0">
<segment>
<pinref part="NRF" gate="A" pin="3"/>
<wire x1="88.9" y1="121.92" x2="81.28" y2="121.92" width="0.1524" layer="91"/>
<wire x1="81.28" y1="121.92" x2="81.28" y2="124.46" width="0.1524" layer="91"/>
<label x="81.28" y="124.46" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PB1"/>
<wire x1="88.9" y1="58.42" x2="93.98" y2="58.42" width="0.1524" layer="91"/>
<label x="93.98" y="58.42" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="NRF_CSN" class="0">
<segment>
<pinref part="NRF" gate="A" pin="4"/>
<wire x1="96.52" y1="121.92" x2="104.14" y2="121.92" width="0.1524" layer="91"/>
<wire x1="104.14" y1="121.92" x2="104.14" y2="124.46" width="0.1524" layer="91"/>
<label x="104.14" y="124.46" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PA3"/>
<wire x1="48.26" y1="48.26" x2="43.18" y2="48.26" width="0.1524" layer="91"/>
<label x="43.18" y="48.26" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="NRF_IRQ" class="0">
<segment>
<pinref part="NRF" gate="A" pin="8"/>
<wire x1="96.52" y1="116.84" x2="104.14" y2="116.84" width="0.1524" layer="91"/>
<wire x1="104.14" y1="116.84" x2="104.14" y2="114.3" width="0.1524" layer="91"/>
<label x="104.14" y="114.3" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PA4"/>
<wire x1="48.26" y1="43.18" x2="43.18" y2="43.18" width="0.1524" layer="91"/>
<label x="43.18" y="43.18" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="+3V3" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="VDD"/>
<pinref part="+3V2" gate="G$1" pin="+3V3"/>
<wire x1="88.9" y1="68.58" x2="91.44" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="NRF" gate="A" pin="2"/>
<wire x1="96.52" y1="124.46" x2="101.6" y2="124.46" width="0.1524" layer="91"/>
<pinref part="+3V1" gate="G$1" pin="+3V3"/>
<wire x1="101.6" y1="124.46" x2="101.6" y2="132.08" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="VOUT"/>
<pinref part="+3V3" gate="G$1" pin="+3V3"/>
<wire x1="10.16" y1="134.62" x2="10.16" y2="127" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="25.4" y1="127" x2="17.78" y2="127" width="0.1524" layer="91"/>
<wire x1="17.78" y1="127" x2="10.16" y2="127" width="0.1524" layer="91"/>
<wire x1="10.16" y1="127" x2="7.62" y2="127" width="0.1524" layer="91"/>
<wire x1="10.16" y1="121.92" x2="10.16" y2="127" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="1"/>
<wire x1="17.78" y1="121.92" x2="17.78" y2="127" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="1"/>
<wire x1="25.4" y1="121.92" x2="25.4" y2="127" width="0.1524" layer="91"/>
<junction x="10.16" y="127"/>
<junction x="17.78" y="127"/>
<pinref part="C6" gate="G$1" pin="1"/>
<wire x1="25.4" y1="127" x2="33.02" y2="127" width="0.1524" layer="91"/>
<wire x1="33.02" y1="127" x2="33.02" y2="121.92" width="0.1524" layer="91"/>
<junction x="25.4" y="127"/>
<pinref part="C7" gate="G$1" pin="1"/>
<wire x1="33.02" y1="127" x2="40.64" y2="127" width="0.1524" layer="91"/>
<wire x1="40.64" y1="127" x2="40.64" y2="121.92" width="0.1524" layer="91"/>
<junction x="33.02" y="127"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VDDA"/>
<wire x1="48.26" y1="68.58" x2="43.18" y2="68.58" width="0.1524" layer="91"/>
<pinref part="+3V4" gate="G$1" pin="+3V3"/>
</segment>
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="12.7" y1="27.94" x2="12.7" y2="25.4" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="12.7" y1="25.4" x2="20.32" y2="25.4" width="0.1524" layer="91"/>
<wire x1="20.32" y1="25.4" x2="20.32" y2="27.94" width="0.1524" layer="91"/>
<pinref part="+3V5" gate="G$1" pin="+3V3"/>
<wire x1="12.7" y1="25.4" x2="7.62" y2="25.4" width="0.1524" layer="91"/>
<wire x1="7.62" y1="25.4" x2="7.62" y2="27.94" width="0.1524" layer="91"/>
<junction x="12.7" y="25.4"/>
</segment>
</net>
<net name="_RST" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="_RST"/>
<pinref part="C5" gate="G$1" pin="1"/>
<wire x1="48.26" y1="73.66" x2="15.24" y2="73.66" width="0.1524" layer="91"/>
<pinref part="R" gate="G$1" pin="TP"/>
<wire x1="15.24" y1="73.66" x2="15.24" y2="76.2" width="0.1524" layer="91"/>
<wire x1="15.24" y1="73.66" x2="12.7" y2="73.66" width="0.1524" layer="91"/>
<label x="12.7" y="73.66" size="1.778" layer="95" rot="R180" xref="yes"/>
<junction x="15.24" y="73.66"/>
</segment>
</net>
<net name="BOOT0" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PB9"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="48.26" y1="88.9" x2="45.72" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SWDIO" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA13"/>
<wire x1="88.9" y1="83.82" x2="91.44" y2="83.82" width="0.1524" layer="91"/>
<label x="91.44" y="83.82" size="1.778" layer="95" xref="yes"/>
<pinref part="D" gate="G$1" pin="TP"/>
</segment>
</net>
<net name="SWCLK" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA14"/>
<wire x1="88.9" y1="88.9" x2="91.44" y2="88.9" width="0.1524" layer="91"/>
<label x="91.44" y="88.9" size="1.778" layer="95" xref="yes"/>
<pinref part="C" gate="G$1" pin="TP"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="27.94" y1="48.26" x2="27.94" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="PA2"/>
<wire x1="27.94" y1="53.34" x2="48.26" y2="53.34" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="C0"/>
<wire x1="20.32" y1="48.26" x2="27.94" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<wire x1="12.7" y1="53.34" x2="25.4" y2="53.34" width="0.1524" layer="91"/>
<wire x1="25.4" y1="53.34" x2="25.4" y2="58.42" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="PA1"/>
<wire x1="25.4" y1="58.42" x2="48.26" y2="58.42" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="C1"/>
<wire x1="12.7" y1="48.26" x2="12.7" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="A0"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="20.32" y1="40.64" x2="20.32" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="A1"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="12.7" y1="40.64" x2="12.7" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="BTN" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA0"/>
<pinref part="SW1" gate="G$1" pin="2"/>
<wire x1="38.1" y1="63.5" x2="48.26" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PC14" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PC14"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="48.26" y1="83.82" x2="45.72" y2="83.82" width="0.1524" layer="91"/>
<wire x1="45.72" y1="83.82" x2="45.72" y2="78.74" width="0.1524" layer="91"/>
<wire x1="45.72" y1="78.74" x2="43.18" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RX" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PA10"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="91.44" y1="78.74" x2="88.9" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="RJ11" gate="G$1" pin="5"/>
<wire x1="127" y1="91.44" x2="127" y2="73.66" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="1"/>
<pinref part="D2" gate="G$1" pin="C"/>
<wire x1="127" y1="71.12" x2="127" y2="73.66" width="0.1524" layer="91"/>
<wire x1="127" y1="73.66" x2="124.46" y2="73.66" width="0.1524" layer="91"/>
<junction x="127" y="73.66"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="104,1,48.26,68.58,U1,VDDA,+3V3,,,"/>
<approved hash="104,1,88.9,63.5,U1,VSS,GND,,,"/>
<approved hash="104,1,88.9,68.58,U1,VDD,+3V3,,,"/>
<approved hash="113,1,92.6677,122.146,NRF,,,,,"/>
</errors>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
