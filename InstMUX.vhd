library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity InstMUX is
    Port ( a : in  STD_LOGIC_VECTOR (4 downto 0);
           b : in  STD_LOGIC_VECTOR (4 downto 0);
           s : in  STD_LOGIC;
           y : out  STD_LOGIC_VECTOR (4 downto 0));
end InstMUX;

architecture Behavioral of InstMUX is

begin
	y <= a when s = '0'
		else b;
end Behavioral;