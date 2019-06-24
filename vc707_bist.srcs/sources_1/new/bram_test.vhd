----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.06.2019 15:13:40
-- Design Name: 
-- Module Name: data_creator - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_Std.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bram_test is
  Port (
    data  : out std_logic_vector(31 downto 0);
    enable : out std_logic;
    w_enable : out std_logic_vector(3 downto 0);
    address : out std_logic_vector(31 downto 0) );
end bram_test;

architecture Behavioral of bram_test is
signal data_buff : std_logic_vector(31 downto 0) := x"00000000";
signal address_buff : std_logic_vector (31 downto 0) := x"00000000" ;

begin

process
    begin


         if(address_buff < b"11111111") then 
            address_buff <= address_buff + "1" ;
            data_buff <= data_buff + b"11";
        end if;
            
end process;

            address <= address_buff;
            data <= data_buff;
            enable <= '1';
            w_enable <= "1111";

    
    
end Behavioral;