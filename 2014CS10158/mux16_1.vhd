----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:20:22 03/09/2016 
-- Design Name: 
-- Module Name:    mux4_1 - Behavioral 
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

entity mux16_1 is
PORT ( 
	a, b, c, d ,e,f,g,h,i,j,k,l,m,n,o,p: IN unsigned(31 DOWNTO 0) ;
	s : IN unsigned(3 DOWNTO 0) ;
	output: OUT unsigned(31 DOWNTO 0) 
	);

end mux16_1;

architecture Behavioral of mux16_1 is

BEGIN
WITH s SELECT
	output <= a WHEN "0000",
			b WHEN "0001",
			c WHEN "0010",
			d WHEN "0011",
			e WHEN "0100",
			f WHEN "0101",
			g WHEN "0110",
			h WHEN "0111",
			i WHEN "1000",
			j WHEN "1001",
			k WHEN "1010",
			l WHEN "1011",
			m WHEN "1100",
			n WHEN "1101",
			o when "1110",
			p WHEN OTHERS ;

end Behavioral;
