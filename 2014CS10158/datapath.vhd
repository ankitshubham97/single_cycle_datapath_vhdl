----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:29:25 03/10/2016 
-- Design Name: 
-- Module Name:    datapath - Behavioral 
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

entity datapath is
	PORT(
		Clk : in std_logic;
		addr_IM : in unsigned(6 downto 0);
		Negative_flag : out unsigned(0 downto 0); --negative flag
	  Zero_flag : out unsigned(0 downto 0); --zero flag
	  Carry_flag : out unsigned(0 downto 0); --carry flag
	  Overflow_flag : out unsigned(0 downto 0) --overflow flag
		);
end datapath;

architecture Behavioral of datapath is

component instructionmemory
	Port ( 
		Clk : in std_logic; -- processing clock	
		mr,mw : in unsigned(0 downto 0); -- write enable signal	
		add : in unsigned(6 downto 0); -- write address to store the data into ram
		data_in : in unsigned(31 downto 0); -- input data to store into ram	
		data_out : out unsigned(31 downto 0)
		);
end component;

component datamemory 
	Port ( 
		Clk : in std_logic; -- processing clock	
		mr,mw : in unsigned(0 downto 0); -- write enable signal	
		add : in unsigned(6 downto 0); -- write address to store the data into ram
		data_in : in unsigned(31 downto 0); -- input data to store into ram	
		data_out : out unsigned(31 downto 0)
		);
end component;

component alu
	port(   Clk : in std_logic; --clock signal
			  A,B : in unsigned(31 downto 0); --input operands
			  S : in unsigned(3 downto 0); --Operation to be performed
			  Result : out unsigned(31 downto 0);  --output of ALU
			  Negative_flag : out unsigned(0 downto 0); --negative flag
			  Zero_flag : out unsigned(0 downto 0); --zero flag
			  Carry_flag : out unsigned(0 downto 0); --carry flag
			  Overflow_flag : out unsigned(0 downto 0) --overflow flag
			  );
end component;

component regfile
	port(
		ReadReg1,ReadReg2,WriteReg : in unsigned(3 downto 0);
		WriteData : in unsigned(31 downto 0);
		ReadData1,ReadData2 : out unsigned(31 downto 0);
		Clk : in std_logic;
		rw :in unsigned (0 downto 0)
		
	);
end component;

component mux2_1
PORT ( 
	a, b : IN unsigned(3 DOWNTO 0) ;
	s : IN unsigned(0 DOWNTO 0) ;
	f : OUT unsigned(3 DOWNTO 0) 
	);
end component;

component mux2_1_32bit
PORT ( 
	a, b : IN unsigned(31 DOWNTO 0) ;
	s : IN unsigned(0 DOWNTO 0) ;
	f : OUT unsigned(31 DOWNTO 0) 
	);
end component;
component signextn
	port(
		Clk : IN STD_LOGIC ;
		inp : in unsigned(11 downto 0); 
		outp : out unsigned(31 downto 0);
		s: in unsigned(0 downto 0) := "0"
	);end component;

component flagregister
port(
	Clk : in std_logic;
	flagsfromalu : in unsigned(3 downto 0);
	fset : in unsigned(0 downto 0);
	flagsfromfreg: out unsigned(3 downto 0)
	);
end component;

component rfmul 
port(
	c : out ieee.numeric_std.unsigned (31 downto 0);
	x1,x2 : in ieee.numeric_std.unsigned (31 downto 0);
	clk : in std_logic
	);
end component ;
component barrelshifter
port(
clk : in std_logic;
	inp : in unsigned (31 downto 0);
	s : in unsigned (6 downto 0);
	outp : out unsigned (31 downto 0)
	);
end component;

signal fromIM,fromM2R,fromRegRd1,fromRegRd2,fromsignextn,fromAsrc,fromALU,fromDM,frommul,frombs : unsigned(31 downto 0);
SIGNAL fromRsrc,fromflagreg : unsigned (3 downto 0);
signal c_MR,c_MW,c_M2R,c_Asrc,c_Rsrc, c_Fset, c_rw, c_mulordpsel, c_mulordpresult, c_signextn : unsigned (0 downto 0);
signal c_opcode : unsigned (3 downto 0);
signal c_bs : unsigned (6 downto 0);

signal towadregfile,  toRsrc0, torad1regfile, toflagreg, tomulordpsel1, tomulordpsel0 : unsigned (3 downto 0);
signal towd : unsigned (31 downto 0);
SIGNAL tosignextn : unsigned (11 downto 0);
signal toadDM : unsigned (6 downto 0);
begin
towadregfile <= fromIM(15 downto 12);
toRsrc0 <= fromIM(3 downto 0);
tomulordpsel1 <= fromIM(19 downto 16);
tomulordpsel0 <= fromIM(11 downto 8);
tosignextn <= fromIM(11 downto 0);
toadDM <=fromALU(6 downto 0);

d_instructionmemory : 
	instructionmemory 
		port map(
			Clk,
			"1",
			"0",
			toadDM,
			"00000000000000000000000000000000",
			fromIM
			);
d_datamemory :
	datamemory
		port map(
			Clk,
			c_MR,
			c_MW,
			toadDM,
			fromRegRd2,
			fromDM
			);
d_regfile:
	regfile
		port map(
			torad1regfile,
			fromRsrc,
			towadregfile,
			towd,
			fromRegRd1,
			fromRegRd2, 
			Clk,
			c_rw
			);
d_signextn:
	signextn
		port map(
			Clk,
			tosignextn, 
			fromsignextn,
			c_signextn
			);
d_alu:
	alu 
		port map(
			Clk,
			fromRegRd1,
			fromAsrc,
			c_opcode,
			fromALU,
			toflagreg(0 DOWNTO 0),
			toflagreg(1 DOWNTO 1),
			toflagreg(2 DOWNTO 2),
			toflagreg(3 DOWNTO 3)
			);
d_RsrcMux:
	mux2_1
		port map(
			toRsrc0,
			towadregfile,
			c_Rsrc,
			fromRsrc
			);
d_AsrcMux:
	mux2_1_32bit
		port map(
			frombs,
			fromsignextn,
			c_Asrc,
			fromAsrc
			);
d_M2RMux:
	mux2_1_32bit
		port map(
			fromALU,
			fromDM,
			c_M2R,
			fromM2R
			);
d_flagregister:
	flagregister
		port map(
			Clk,
			toflagreg,
			c_Fset,
			FROMFLAGREG
			);
d_multiplier :
	rfmul	
		port map(
			frommul,
			fromregrd1,
			fromregrd2,
			clk
			);
d_mulordpsel :
	mux2_1
		port map(
			tomulordpsel0,
			tomulordpsel1,
			c_mulordpsel,
			torad1regfile
			);
d_mulordpresult :
	mux2_1_32bit
		port map(
			frommul,
			fromm2r,
			c_mulordpresult,
			towd
			);
d_bs:
	barrelshifter
		port map(
		clk,
			fromRegRd2,
			c_bs,
			frombs
			);
end Behavioral;

