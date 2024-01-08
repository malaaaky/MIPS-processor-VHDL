library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX2x1 is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           s : in  STD_LOGIC;
           y : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX2x1;

architecture Behavioral of MUX2x1 is

begin
	y <= a when s = '0'
		else b;
end Behavioral;

