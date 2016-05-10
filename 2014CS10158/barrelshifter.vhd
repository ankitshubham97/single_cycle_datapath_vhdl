----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:33:00 03/11/2016 
-- Design Name: 
-- Module Name:    barrelshifter - Behavioral 
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
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity barrelshifter is
port(
clk : in std_logic;
	inp : in unsigned (31 downto 0):= (others => '0'); 
	s : in unsigned (6 downto 0);
	outp : out unsigned (31 downto 0)
	);
end barrelshifter;

architecture Behavioral of barrelshifter is
signal samt : unsigned (4 downto 0);
signal stype : unsigned (1 downto 0);
signal inp1 : unsigned (31 downto 0);
begin
samt <= s(6 downto 2);
stype <= s(1 downto 0);
inp1 <= inp; 
process(clk)
begin 

if  stype = "00"  then 
outp <= inp sll to_integer(samt);  
end if;   
if  stype = "01"  then
outp <= inp srl to_integer(samt);
end if; 
if  stype = "10"  then
outp <= inp srl to_integer(samt);
end if; 
if  stype = "11"  then
outp <= inp ror to_integer(samt);
end if; 
end process;
end Behavioral;

