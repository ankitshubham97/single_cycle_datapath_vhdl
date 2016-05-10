----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:39:22 03/10/2016 
-- Design Name: 
-- Module Name:    signextn - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity signextn is
	port(
		Clk : IN STD_LOGIC ;
		inp : in unsigned(11 downto 0); 
		outp : out unsigned(31 downto 0);
		s: in unsigned(0 downto 0) := "0"
	);
end signextn;

architecture Behavioral of signextn is

signal tmp : unsigned (0 downto 0);
signal samt : unsigned (3 downto 0);
signal svalue : unsigned (7 downto 0);
signal svalue3,svalue2 : unsigned (31 downto 0);
begin 
tmp <= inp (11 downto 11);
samt <= inp (11 downto 8);
svalue <= inp (7 downto 0); 
outp <= svalue3;
process (Clk)
begin 
if s = "0" then
svalue2 <= "000000000000000000000000" & svalue ;--ror 2*to_integer(samt);
svalue3 <= svalue2 ror 2*to_integer(samt);
else
if tmp = "1" then 
	svalue3 <= "11111111111111111111" & inp;
end if;
if tmp = "0" then	
	svalue3 <= "00000000000000000000" & inp;
end if;
end if;
end process;
end Behavioral;