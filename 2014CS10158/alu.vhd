----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:15:34 03/09/2016 
-- Design Name: 
-- Module Name:    alutry - Behavioral 
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

entity alu is
	port(   Clk : in std_logic; --clock signal
			  A,B : in unsigned(31 downto 0); --input operands
			  S : in unsigned(3 downto 0); --Operation to be performed
			  Result : out unsigned(31 downto 0);  --output of ALU
			  Negative_flag : out unsigned(0 downto 0); --negative flag
			  Zero_flag : out unsigned(0 downto 0); --zero flag
			  Carry_flag : out unsigned(0 downto 0); --carry flag
			  Overflow_flag : out unsigned(0 downto 0) --overflow flag
			  );
end alu;

architecture Behavioral of alu is
 
signal t1,t2,t3,t4: unsigned(32 downto 0) := (others => '0');
signal t5,t6,t7 : unsigned(31 downto 0) := (others => '0');
--signal t7 : unsigned(3 downto 0) := (others => '0');
 
begin
 
t1<= '0' & A;
t2<= '0' & B;
t5<= '0' & A(30 downto 0);
t6<= '0' & B(30 downto 0);
Result<= t3(31 downto 0);
 
process(Clk)
begin
 
    if(rising_edge(Clk)) then --Do the calculation at the positive edge of clock cycle.
        case S is
            when "0100" => 
                t3<= t1 + t2;  --add
            when "0010" => 
                t3<= t1 - t2; --sub
            when "0011" => 
                t3<= t2 - t1;  --rsb					 
            when "0101" => 
                t3<= t1 + t2; --adc
					 Carry_flag <= t3(32 downto 32);
            when "0110" => 
                t3<= t1 - t2; --sbc
					 Carry_flag <= t3(32 downto 32);
            when "0111" => 
                t3<= t2 - t1;  --rsc  
					 Carry_flag <= t3(32 downto 32);
				when "0000" =>
					 t3<= t1 and t2; --and
				when "1100" =>
					t3 <= t1 or t2; --or
				when "0001" =>
					t3 <= t1 xor t2; --eor
				when "1110" =>
					t3 <= t1 and (not t2); --bic
            when "1000" => --tst
					t4 <= t1 and t2;
					if (t4(31 downto 31)) = "1" then
						Negative_flag <= "1";
					else
						Negative_flag <= "0";
					end if;
					if (t1 and t2) = "0" then
						Zero_flag <= "1";
					else Zero_flag <= "0";
					end if;
				when "1001" => --teq
					t4 <= t1 xor t2;
					if (t4(31 downto 31)) = "1" then
						Negative_flag <= "1";
					else
						Negative_flag <= "0";
					end if;
					if (t1 and t2) = "0" then
						Zero_flag <= "1";
					else Zero_flag <= "0";
					end if;					
				when "1010" => --cmp
					t4 <= t1 - t2;
					if (t4(31 downto 31)) = "1" then
						Negative_flag <= "1";
					else
						Negative_flag <= "0";
					end if;
					if (t1 and t2) = "0" then
						Zero_flag <= "1";
					else Zero_flag <= "0";
					end if;
					Carry_flag <= t3(32 downto 32);
					t7 <= t5 - t6;
					if (t7(31 downto 31))=(t3(32 downto 32)) then
						Overflow_flag <= "0";
					else
						Overflow_flag <= "1";
					end if;
				when "1011" => --cmn
					t4 <= t1 + t2;
					if (t4(31 downto 31)) = "1" then
						Negative_flag <= "1";
					else
						Negative_flag <= "0";
					end if;
					if (t1 and t2) = "0" then
						Zero_flag <= "1";
					else Zero_flag <= "0";
					end if;
					Carry_flag <= t3(32 downto 32);
					t7 <= t5 + t6;
					if (t7(31 downto 31))=(t3(32 downto 32)) then
						Overflow_flag <= "0";
					else
						Overflow_flag <= "1";
					end if;
				when "1101" => --mov
					t3 <= t2;
				when "1111" => --mvn
					t3 <= not t2;
				when others =>
                NULL;
        end case;       
    end if;
     
end process;    
 
end Behavioral;