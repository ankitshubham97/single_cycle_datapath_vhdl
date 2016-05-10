----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:13:38 03/11/2016 
-- Design Name: 
-- Module Name:    rfmul - Behavioral 
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
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values


-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rfmul is
port(
	c : out ieee.numeric_std.unsigned (31 downto 0);
	x1,x2 : in ieee.numeric_std.unsigned (31 downto 0);
	clk : in std_logic
	);
end rfmul;
architecture Behavioral of rfmul is
signal c1 : ieee.numeric_std.unsigned (63 downto 0);

begin

C1 <= x1 * x2;
c <= c1(31 downto 0);
end Behavioral;

