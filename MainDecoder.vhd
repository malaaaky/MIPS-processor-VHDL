library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MainDecoder is
    Port ( op : in  STD_LOGIC_VECTOR (5 downto 0);
           memtoreg: out  STD_LOGIC;
			  memwrite : out  STD_LOGIC;
			  branch: out  STD_LOGIC;
           alusrc : out  STD_LOGIC;
           regdst: out  STD_LOGIC;
			  regwrite : out  STD_LOGIC;
           jump : out  STD_LOGIC;
           aluop : out  STD_LOGIC_VECTOR (1 downto 0));
end MainDecoder;

architecture Behavioral of MainDecoder is
signal controllers : STD_LOGIC_VECTOR (8 downto 0);
begin

process(op)
begin
	case op is
		when "000000" => controllers <= "110000010";		--R-type
		when "100011" => controllers <= "101001000";		--Lw
		when "101011" => controllers <= "001010000";		--Sw
		when "000100" => controllers <= "000100001";		--beq
		when "001000" => controllers <= "101000000";		--addi
		when "000010" => controllers <= "000000100";		--J
		when others => controllers <= "---------";
	end case;
end process;

regwrite <= controllers(8);
regdst <= controllers(7);
alusrc <= controllers(6);
branch <= controllers(5);
memwrite <= controllers(4);
memtoreg <= controllers(3);
jump <= controllers(2);
aluop <= controllers(1 downto 0);

end Behavioral;