library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL ;

entity ALU is
    Port ( data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           zflags : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is
	signal S, A, B, databuffer: STD_LOGIC_VECTOR(31 downto 0);
begin
A <= (not data1) when (aluop(3)='1') else data1;
B <= (not data2) when (aluop(2) = '1') else data2;
S <= A + B + aluop(2) + aluop(3);
databuffer <= A and B when aluop(1 downto 0) ="00" ELSE
			A or B when aluop(1 downto 0) ="01" ELSE
			S when aluop(1 downto 0) ="10" ELSE
("0000000000000000000000000000000" & S(31)) when aluop(1 downto 0) = "11" 
ELSE "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

dataout <= databuffer;
zflags <= '1' when databuffer = X"00000000" ELSE '0';

end Behavioral;


