-- Generated from Simulink block falling_detector/H2L
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity falling_detector_h2l is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end falling_detector_h2l;
architecture structural of falling_detector_h2l is 
  signal ce_net : std_logic;
  signal in_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= logical1_y_net;
  in_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.falling_detector_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => in_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_1d1e47173f 
  port map (
    clr => '0',
    ip => in_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_17aab379ef 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => inverter1_op_net,
    d1 => delay_q_net,
    y => logical1_y_net
  );
end structural;
-- Generated from Simulink block falling_detector_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity falling_detector_struct is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end falling_detector_struct;
architecture structural of falling_detector_struct is 
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal in_net : std_logic_vector( 1-1 downto 0 );
begin
  in_net <= in_x0;
  out_x0 <= logical1_y_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  h2l : entity xil_defaultlib.falling_detector_h2l 
  port map (
    in_x0 => in_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => logical1_y_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity falling_detector_default_clock_driver is
  port (
    falling_detector_sysclk : in std_logic;
    falling_detector_sysce : in std_logic;
    falling_detector_sysclr : in std_logic;
    falling_detector_clk1 : out std_logic;
    falling_detector_ce1 : out std_logic
  );
end falling_detector_default_clock_driver;
architecture structural of falling_detector_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => falling_detector_sysclk,
    sysce => falling_detector_sysce,
    sysclr => falling_detector_sysclr,
    clk => falling_detector_clk1,
    ce => falling_detector_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity falling_detector is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end falling_detector;
architecture structural of falling_detector is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "falling_detector,sysgen_core_2021_2,{,compilation=IP Catalog,block_icon_display=Default,family=kintex7,part=xc7k160t,speed=-2,package=fbg484,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=1e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.0011,delay=1,inv=1,logical=1,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  falling_detector_default_clock_driver : entity xil_defaultlib.falling_detector_default_clock_driver 
  port map (
    falling_detector_sysclk => clk,
    falling_detector_sysce => '1',
    falling_detector_sysclr => '0',
    falling_detector_clk1 => clk_1_net,
    falling_detector_ce1 => ce_1_net
  );
  falling_detector_struct : entity xil_defaultlib.falling_detector_struct 
  port map (
    in_x0 => in_x0,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    out_x0 => out_x0
  );
end structural;
