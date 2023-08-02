--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Wed Aug  2 14:21:17 2023
--Host        : DESKTOP-JEI2OF3 running 64-bit major release  (build 9200)
--Command     : generate_target falling_detector_bd.bd
--Design      : falling_detector_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity falling_detector_bd is
  port (
    clk : in STD_LOGIC;
    in_x0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_x0 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of falling_detector_bd : entity is "falling_detector_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=falling_detector_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of falling_detector_bd : entity is "falling_detector_bd.hwdef";
end falling_detector_bd;

architecture STRUCTURE of falling_detector_bd is
  component falling_detector_bd_falling_detector_1_0 is
  port (
    in_x0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    out_x0 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component falling_detector_bd_falling_detector_1_0;
  signal clk_1 : STD_LOGIC;
  signal falling_detector_1_out_x0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal in_x0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN falling_detector_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of in_x0 : signal is "xilinx.com:signal:data:1.0 DATA.IN_X0 DATA";
  attribute X_INTERFACE_PARAMETER of in_x0 : signal is "XIL_INTERFACENAME DATA.IN_X0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of out_x0 : signal is "xilinx.com:signal:data:1.0 DATA.OUT_X0 DATA";
  attribute X_INTERFACE_PARAMETER of out_x0 : signal is "XIL_INTERFACENAME DATA.OUT_X0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
begin
  clk_1 <= clk;
  in_x0_1(0) <= in_x0(0);
  out_x0(0) <= falling_detector_1_out_x0(0);
falling_detector_1: component falling_detector_bd_falling_detector_1_0
     port map (
      clk => clk_1,
      in_x0(0) => in_x0_1(0),
      out_x0(0) => falling_detector_1_out_x0(0)
    );
end STRUCTURE;
