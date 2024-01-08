library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX is
    Port ( R0 : in  STD_LOGIC_VECTOR (31 downto 0);
           R1: in  STD_LOGIC_VECTOR (31 downto 0);
			  R2: in  STD_LOGIC_VECTOR (31 downto 0);
           R3: in  STD_LOGIC_VECTOR (31 downto 0);
			  R4: in  STD_LOGIC_VECTOR (31 downto 0);
           R5: in  STD_LOGIC_VECTOR (31 downto 0);
			  R6: in  STD_LOGIC_VECTOR (31 downto 0);
           R7: in  STD_LOGIC_VECTOR (31 downto 0);
			  R8: in  STD_LOGIC_VECTOR (31 downto 0);
           R9: in  STD_LOGIC_VECTOR (31 downto 0);
			  R10: in  STD_LOGIC_VECTOR (31 downto 0);
           R11: in  STD_LOGIC_VECTOR (31 downto 0);
			  R12: in  STD_LOGIC_VECTOR (31 downto 0);
           R13: in  STD_LOGIC_VECTOR (31 downto 0);
			  R14: in  STD_LOGIC_VECTOR (31 downto 0);
           R15: in  STD_LOGIC_VECTOR (31 downto 0);
			  R16: in  STD_LOGIC_VECTOR (31 downto 0);
           R17: in  STD_LOGIC_VECTOR (31 downto 0);
			  R18: in  STD_LOGIC_VECTOR (31 downto 0);
           R19: in  STD_LOGIC_VECTOR (31 downto 0);
			  R20: in  STD_LOGIC_VECTOR (31 downto 0);
           R21: in  STD_LOGIC_VECTOR (31 downto 0);
			  R22: in  STD_LOGIC_VECTOR (31 downto 0);
           R23: in  STD_LOGIC_VECTOR (31 downto 0);
			  R24: in  STD_LOGIC_VECTOR (31 downto 0);
           R25: in  STD_LOGIC_VECTOR (31 downto 0);
			  R26: in  STD_LOGIC_VECTOR (31 downto 0);
           R27: in  STD_LOGIC_VECTOR (31 downto 0);
			  R28: in  STD_LOGIC_VECTOR (31 downto 0);
           R29: in  STD_LOGIC_VECTOR (31 downto 0);
			  R30: in  STD_LOGIC_VECTOR (31 downto 0);
           R31: in  STD_LOGIC_VECTOR (31 downto 0);

           sel : in  STD_LOGIC_VECTOR (4 downto 0);
           Y : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX;

architecture Behavioral of MUX is

begin
Y <= R0 when sel = "00000" else
     R1 when sel = "00001" else
     R2 when sel = "00010" else
     R3 when sel = "00011" else
     R4 when sel = "00100" else
     R5 when sel = "00101" else
     R6 when sel = "00110" else
     R7 when sel = "00111" else
     R8 when sel = "01000" else
     R9 when sel = "01001" else
     R10 when sel = "01010" else
     R11 when sel = "01011" else
     R12 when sel = "01100" else
     R13 when sel = "01101" else
     R14 when sel = "01110" else
     R15 when sel = "01111" else
     R16 when sel = "10000" else
     R17 when sel = "10001" else
     R18 when sel = "10010" else
     R19 when sel = "10011" else
     R20 when sel = "10100" else
     R21 when sel = "10101" else
     R22 when sel = "10110" else
     R23 when sel = "10111" else
     R24 when sel = "11000" else
     R25 when sel = "11001" else
     R26 when sel = "11010" else
     R27 when sel = "11011" else
     R28 when sel = "11100" else
     R29 when sel = "11101" else
     R30 when sel = "11110" else
     R31;
end Behavioral;