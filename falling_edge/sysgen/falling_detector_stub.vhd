-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity falling_detector_stub is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end falling_detector_stub;
architecture structural of falling_detector_stub is 
begin
  sysgen_dut : entity xil_defaultlib.falling_detector 
  port map (
    in_x0 => in_x0,
    clk => clk,
    out_x0 => out_x0
  );
end structural;
