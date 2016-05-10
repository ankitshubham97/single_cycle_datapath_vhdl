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

entity mux2_1 is
PORT ( 
	a, b : IN unsigned(3 DOWNTO 0) ;
	s : IN unsigned(0 DOWNTO 0) ;
	f : OUT unsigned(3 DOWNTO 0) 
	);

end mux2_1;

architecture Behavioral of mux2_1 is

BEGIN
WITH s SELECT
	f <= a WHEN "0",
			b WHEN OTHERS ;

end Behavioral;
