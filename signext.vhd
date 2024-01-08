library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity signext is
    Port ( x : in  STD_LOGIC_VECTOR (15 downto 0);
           y : out STD_LOGIC_VECTOR (31 downto 0));
end signext;

architecture Behavioral of signext is

begin
		y <= x"0000" & x when x(15) = '0'
		else x"1111" & x;
end Behavioral;