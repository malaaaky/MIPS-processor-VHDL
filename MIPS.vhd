library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.MIPSPackage.ALL;

entity MIPS is
	Port ( clk, rst : in  STD_LOGIC;
			pc : out  STD_LOGIC_VECTOR (31 downto 0);
			instr : in  STD_LOGIC_VECTOR (31 downto 0);
			memwrite : out STD_LOGIC;			-----------
			aluout, writedata : out  STD_LOGIC_VECTOR (31 downto 0);
			readdata : in  STD_LOGIC_VECTOR (31 downto 0));
			
end MIPS;

architecture Behavioral of MIPS is

signal zero, memtoreg, memread, pcsr, alusrc, regdst, regwrite, jump :  STD_LOGIC;
signal alucontrol :  STD_LOGIC_VECTOR (3 downto 0);

begin

	path: datapath port map (clk, rst, instr, alucontrol, zero, regwrite, 
			writedata, pc, regdst, alusrc, memtoreg, pcsr, jump, aluout, readdata);
	
	control: Controller port map (instr(31 downto 26), instr(5 downto 0), zero, memtoreg,
			   memwrite, pcsr, alusrc, regdst, regwrite, jump, alucontrol);
	
end Behavioral;
