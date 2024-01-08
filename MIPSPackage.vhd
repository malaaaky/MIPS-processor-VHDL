library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MIPSPackage is


component datapath is
    Port ( clk, reset : in  STD_LOGIC;
           instr : in  STD_LOGIC_VECTOR (31 downto 0);
           aluoperation : in  STD_LOGIC_VECTOR (3 downto 0);
           zero : out  STD_LOGIC;
           regwrite : in  STD_LOGIC;
			  writememdata, pc : out  STD_LOGIC_VECTOR (31 downto 0);
			  SELECTORwreg, SELECTORalu, SELECTORwback, SELECTORbr, SELECTORj: in STD_LOGIC;
			  outalu : out  STD_LOGIC_VECTOR (31 downto 0);
			  datamout : in  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Controller is
    Port ( op, funct : in  STD_LOGIC_VECTOR (5 downto 0);
           zero : in  STD_LOGIC;
           memtoreg, memwrite : out  STD_LOGIC;
           pcsr, alusrc : out  STD_LOGIC;
           regdst, regwrite : out  STD_LOGIC;
           jump : out  STD_LOGIC;
           alucontrol : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

end MIPSPackage;

