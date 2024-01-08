library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Decoder5to32 is
    Port ( A : in  STD_LOGIC_VECTOR (4 downto 0);
           D : out STD_LOGIC_VECTOR (31 downto 0));
end Decoder5to32;

architecture Behavioral of Decoder5to32 is
begin
	process(A)
		begin
			if(A="00000") then 		
			  D<=(others => '0');
			  D(0)<='1';
			elsif(A="00001") then 
			  D<=(others => '0');
			  D(1)<='1';
			elsif(A="00010") then 
				D<=(others => '0');
			   D(2)<='1';
			elsif(A="00011") then 
				D<=(others => '0');
			   D(3)<='1';
			elsif(A="00100") then 
				D<=(others => '0');
			   D(4)<='1';
			elsif(A="00101") then 
				D<=(others => '0');
			   D(5)<='1';
			elsif(A="00110") then 
				D<=(others => '0');
			   D(6)<='1';
			elsif(A="00111") then 
				D<=(others => '0');
			   D(7)<='1';
			elsif(A="01000") then 
				D<=(others => '0');
			   D(8)<='1';
			elsif(A="01001") then 
				D<=(others => '0');
			   D(9)<='1';
			elsif(A="01010") then 
				D<=(others => '0');
			   D(10)<='1';
			elsif(A="01011") then 
				D<=(others => '0');
			   D(11)<='1';
			elsif(A="01100") then 
				D<=(others => '0');
			   D(12)<='1';
			elsif(A="01101") then 
				D<=(others => '0');
			   D(13)<='1';
			elsif(A="01110") then 
				D<=(others => '0');
			   D(14)<='1';
			elsif(A="01111") then 
				D<=(others => '0');
			   D(15)<='1';
			elsif(A="10000") then 
				D<=(others => '0');
			   D(16)<='1';
			elsif(A="10001") then 
				D<=(others => '0');
			   D(17)<='1';
			elsif(A="10010") then 
				D<=(others => '0');
			   D(18)<='1';
			elsif(A="10011") then 
				D<=(others => '0');
			   D(19)<='1';
			elsif(A="10100") then 
				D<=(others => '0');
			   D(20)<='1';
			elsif(A="10101") then 
				D<=(others => '0');
			   D(21)<='1';
			elsif(A="10110") then 
				D<=(others => '0');
			   D(22)<='1';
			elsif(A="10111") then 
				D<=(others => '0');
			   D(23)<='1';
			elsif(A="11000") then 
				D<=(others => '0');
			   D(24)<='1';
			elsif(A="11001") then 
				D<=(others => '0');
			   D(25)<='1';
			elsif(A="11010") then 
				D<=(others => '0');
			   D(26)<='1';
			elsif(A="11011") then 
				D<=(others => '0');
			   D(27)<='1';
			elsif(A="11100") then 
				D<=(others => '0');
			   D(28)<='1';
			elsif(A="11101") then 
				D<=(others => '0');
			   D(29)<='1';
			elsif(A="11110") then 
				D<=(others => '0');
			   D(30)<='1';
			elsif(A="11111") then 
				D<=(others => '0');
			   D(31)<='1';
			else
				D<= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
			end if;
	end process;
end Behavioral;