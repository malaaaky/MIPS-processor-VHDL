library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FLOPR is
    Port ( D : in  STD_LOGIC_VECTOR (31 downto 0);
          CLK : in  STD_LOGIC;
           RST: in  STD_LOGIC;
			 load: in  STD_LOGIC; --OUTPUT OF DECODER
           Q   : out  STD_LOGIC_VECTOR (31 downto 0));
end FLOPR;

architecture Behavioral of FLOPR is
	signal temp: STD_LOGIC_VECTOR (31 downto 0);
begin

PROCESS( CLK, RST, load )
begin
	temp <= (others => '0');
	IF(RST = '1')THEN	temp <= (others => '0');
	ELSIF(CLK'EVENT AND CLK='1' AND load = '1') THEN temp <=D;	
end IF;
end PROCESS; 
 	Q <= temp;
end Behavioral;

