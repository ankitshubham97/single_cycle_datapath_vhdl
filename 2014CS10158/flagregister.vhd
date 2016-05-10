----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:34:29 03/11/2016 
-- Design Name: 
-- Module Name:    flagregister - Behavioral 
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

entity flagregister is
port(
	Clk : in std_logic;
	flagsfromalu : in unsigned(3 downto 0);
	fset : in unsigned(0 downto 0);
	flagsfromfreg: out unsigned(3 downto 0)
	);
end flagregister;

architecture Behavioral of flagregister is

begin
PROCESS (Clk)
	BEGIN
	IF Clk'EVENT AND Clk = '1'  and fset = "1" THEN flagsfromfreg <=flagsfromalu;
	END IF;
	END PROCESS ;


end Behavioral;

