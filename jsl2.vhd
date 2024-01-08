library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jsl2 is
    Port ( x : in  STD_LOGIC_VECTOR (25 downto 0);
           y : out  STD_LOGIC_VECTOR (27 downto 0));
end jsl2;

architecture Behavioral of jsl2 is

begin
	y <= x &"00";
end Behavioral;