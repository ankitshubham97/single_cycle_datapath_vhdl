----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:40:59 03/10/2016 
-- Design Name: 
-- Module Name:    datamemory - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity datamemory is	
Port ( Clk : in std_logic; -- processing clock	
mr,mw : in unsigned(0 downto 0); -- write enable signal	
add : in unsigned(6 downto 0); -- write address to store the data into ram
data_in : in unsigned(31 downto 0); -- input data to store into ram	
data_out : out unsigned(31 downto 0)); -- output data from memory	
end datamemory;	
architecture Behavioral of datamemory is	
------------------------------------- RAM declaration 
type ram is array(127 downto 0) of unsigned(31 downto 0);	
signal ram1_1 : ram;	
-------------------------------------- Signal declaration 
signal r_add : unsigned(6 downto 0);	


begin	

process(Clk, mr, mw)	
begin	 
--if Clk'event and Clk = '1'  then	
--if we = '1' then -- In this process writing the input data into ram 
--ram1_1(conv_integer(wadd)) <= data_in;	
--end if;	
--r_add <= radd; 
--end if;	
--end process;	
--
--data_out <= ram1_1(conv_integer(r_add)); -- Reading the data from RAM 
if Clk'event and Clk ='1' and mr = 0 and mw =1 then
	ram1_1(to_integer(add)) <= data_in;	
end if;
if Clk'event and Clk ='1' and mr = 1 and mw =0 then
	data_out <= ram1_1(to_integer(add));
end if;
if Clk'event and Clk ='1' and mr = 1 and mw =1 then
	ram1_1(to_integer(add)) <= data_in;	
	data_out <= ram1_1(to_integer(add));
end if;
end process;
end Behavioral;