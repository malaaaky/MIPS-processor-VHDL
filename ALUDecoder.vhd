library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ALUDecoder is
    Port ( funct : in  STD_LOGIC_VECTOR (5 downto 0);
           aluop : in  STD_LOGIC_VECTOR (1 downto 0);
           alucontrol : out  STD_LOGIC_VECTOR (3 downto 0));
end ALUDecoder;

architecture Behavioral of ALUDecoder is

begin
process (aluop,funct)
begin
	case aluop is
		when "00" => alucontrol <= "0010"; -- lw , sw , addi
		when "01" => alucontrol <= "0110"; -- beq
		when "10" => 
			case funct is
				when "100000" => alucontrol <= "0010"; -- add
				when "100010" => alucontrol <= "0110"; -- subtract
				when "100100" => alucontrol <= "0000"; -- and
				when "100101" => alucontrol <= "0001"; -- or
				when "101010" => alucontrol <= "0111"; -- slt
				when others => alucontrol <= "----";
			end case;
		when others => alucontrol <= "----";
	end case;
end process;

end Behavioral;