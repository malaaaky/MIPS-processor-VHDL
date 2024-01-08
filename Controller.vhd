library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.ControllerPackage.ALL;

entity Controller is
    Port ( op, funct : in  STD_LOGIC_VECTOR (5 downto 0);
           zero : in  STD_LOGIC;
           memtoreg, memwrite : out  STD_LOGIC;
           pcsr, alusrc : out  STD_LOGIC;
           regdst, regwrite : out  STD_LOGIC;
           jump : out  STD_LOGIC;
           alucontrol : out  STD_LOGIC_VECTOR (3 downto 0));
end Controller;

architecture Behavioral of Controller is
signal aluop: STD_LOGIC_VECTOR (1 downto 0);
signal branch: STD_LOGIC;

begin

MainDec : MainDecoder port map (op, memtoreg, memwrite, branch, alusrc, regdst, regwrite, jump, aluop); 

AluDec : ALUDecoder port map(funct, aluop, alucontrol);

pcsr <= branch and zero;

end Behavioral;