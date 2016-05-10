----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:08:27 03/09/2016 
-- Design Name: 
-- Module Name:    register4bit - Behavioral 
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

entity register32 is

	PORT ( 
		D : IN unsigned(31 DOWNTO 0) ;
		Clk : IN STD_LOGIC ;
		Q : OUT unsigned(31 DOWNTO 0);
		AddressOwn : in unsigned(3 downto 0);
		AddressFromIR : in unsigned(3 downto 0) ;
		rwofreg : in unsigned (0 downto 0)
		);

end register32;

architecture Behavioral of register32 is

begin
	
	PROCESS (Clk)
	BEGIN
	IF Clk'EVENT AND Clk = '1' AND AddressOwn = AddressFromIR and rwofreg ="1" THEN Q <= D;
	END IF;
	END PROCESS ;

end Behavioral;
