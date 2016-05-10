----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:27:00 03/09/2016 
-- Design Name: 
-- Module Name:    regfile4 - Behavioral 
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

entity regfile is
	port(
		ReadReg1,ReadReg2,WriteReg : in unsigned (3 downto 0);
		WriteData : in unsigned (31 downto 0);
		ReadData1,ReadData2 : out unsigned (31 downto 0);
		Clk : in std_logic;
		rw :in unsigned (0 downto 0)
	);
end regfile;

architecture Behavioral of regfile is
signal q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15 :unsigned(31 DOWNTO 0) ;
component register32
PORT ( 
		D : IN unsigned(31 DOWNTO 0) ;
		Clk : IN STD_LOGIC ;
		Q : OUT unsigned(31 DOWNTO 0);
		AddressOwn : in unsigned(3 downto 0);
		AddressFromIR : in unsigned(3 downto 0) ;
		rwofreg : in unsigned (0 downto 0)
		);

end component;
component mux16_1
PORT ( 
	a, b, c, d ,e,f,g,h,i,j,k,l,m,n,o,p: IN unsigned(31 DOWNTO 0) ;
	s : IN unsigned(3 DOWNTO 0) ;
	output: OUT unsigned(31 DOWNTO 0) 
	);
end component;
			
begin
R0 : register32 port map (D=>WriteData,Clk=>Clk,Q=> q0,AddressOwn =>"0000",AddressFromIR =>WriteReg, rwofreg => rw );
R1 : register32 port map (D=>WriteData,Clk=>Clk,Q=> q1,AddressOwn =>"0001",AddressFromIR =>WriteReg, rwofreg => rw );
R2 : register32 port map (D=>WriteData,Clk=>Clk,Q=> q2,AddressOwn =>"0010",AddressFromIR =>WriteReg, rwofreg => rw );
R3 : register32 port map (D=>WriteData,Clk=>Clk,Q=> q3,AddressOwn =>"0011",AddressFromIR =>WriteReg, rwofreg => rw );
R4 : register32 port map (D=>WriteData,Clk=>Clk,Q=> q4,AddressOwn =>"0100",AddressFromIR =>WriteReg, rwofreg => rw );
R5 : register32 port map (D=>WriteData,Clk=>Clk,Q=> q5,AddressOwn =>"0101",AddressFromIR =>WriteReg, rwofreg => rw );
R6 : register32 port map (D=>WriteData,Clk=>Clk,Q=> q6,AddressOwn =>"0110",AddressFromIR =>WriteReg, rwofreg => rw );
R7 : register32 port map (D=>WriteData,Clk=>Clk,Q=> q7,AddressOwn =>"0111",AddressFromIR =>WriteReg , rwofreg => rw);
R8 : register32 port map (D=>WriteData,Clk=>Clk,Q=> q8,AddressOwn =>"1000",AddressFromIR =>WriteReg, rwofreg => rw );
R9 : register32 port map (D=>WriteData,Clk=>Clk,Q=> q9,AddressOwn =>"1001",AddressFromIR =>WriteReg, rwofreg => rw );
R10: register32 port map (D=>WriteData,Clk=>Clk,Q=> q10,AddressOwn =>"1010",AddressFromIR =>WriteReg, rwofreg => rw );
R11: register32 port map (D=>WriteData,Clk=>Clk,Q=> q11,AddressOwn =>"1011",AddressFromIR =>WriteReg, rwofreg => rw );
R12: register32 port map (D=>WriteData,Clk=>Clk,Q=> q12,AddressOwn =>"1100",AddressFromIR =>WriteReg, rwofreg => rw );
R13: register32 port map (D=>WriteData,Clk=>Clk,Q=> q13,AddressOwn =>"1101",AddressFromIR =>WriteReg, rwofreg => rw );
R14: register32 port map (D=>WriteData,Clk=>Clk,Q=> q14,AddressOwn =>"1110",AddressFromIR =>WriteReg, rwofreg => rw );
R15: register32 port map (D=>WriteData,Clk=>Clk,Q=> q15,AddressOwn =>"1111",AddressFromIR =>WriteReg, rwofreg => rw );
Mux1: mux16_1 port map (q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,ReadReg1,ReadData1);
Mux2: mux16_1 port map (q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,ReadReg2,ReadData2);
end Behavioral;

