library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.datapathPackage.ALL;

entity datapath is
    Port ( clk, reset : in  STD_LOGIC;
           instr : in  STD_LOGIC_VECTOR (31 downto 0);
           aluoperation : in  STD_LOGIC_VECTOR (3 downto 0);
           zero : out  STD_LOGIC;
           regwrite : in  STD_LOGIC;
			  writememdata, pc : out  STD_LOGIC_VECTOR (31 downto 0);
			  SELECTORwreg, SELECTORalu, SELECTORwback, SELECTORbr, SELECTORj: in STD_LOGIC;
			  outalu : out  STD_LOGIC_VECTOR (31 downto 0);
			  datamout : in  STD_LOGIC_VECTOR (31 downto 0));
end datapath;

architecture Behavioral of datapath is

	signal data1, data2, aluout, aluin, writedata, extended, pcplus4, pcjump, pcfinal: STD_LOGIC_VECTOR (31 downto 0);
	signal addbrin, addbrout, nextpc, pcc: STD_LOGIC_VECTOR (31 downto 0);
	signal wreg: STD_LOGIC_VECTOR (4 downto 0);		--write register
	signal jaddress: STD_LOGIC_VECTOR (27 downto 0);
	
begin

	pc <= pcc;
	outalu <= aluout;
	writememdata <= data2;
	pcjump <= pcplus4(31 downto 28) & jaddress;

	Reg: RegisterFile port map ( instr(25 downto 21), instr(20 downto 16),
			wreg, regwrite, clk, reset, writedata, data1, data2);
	operation: ALU port map ( data1, aluin, aluoperation, aluout, zero );

	MuxWreg: InstMUX port map (instr(20 downto 16), instr(15 downto 11), SELECTORwreg, wreg);
	MuxAlu: MUX2x1 port map (data2, extended, SELECTORalu, aluin);
	MuxWback: MUX2x1 port map (aluout, datamout, SELECTORwback, writedata);
	MuxBr: MUX2x1 port map (pcplus4, addbrout, SELECTORbr, nextpc);
	MuxJ: MUX2x1 port map (nextpc, pcjump, SELECTORj, pcfinal);
	
	pcreg: FLOPR port map (pcfinal, clk, reset, '1', pcc);
	
	extend: signext port map (instr(15 downto 0), extended);
	addfour: Adder port map (pcc, x"00000004", pcplus4);
	shift: sl2 port map (extended, addbrin);
	addbr: Adder port map (pcplus4, addbrin, addbrout);
	
	addressbits: jsl2 port map (instr(25 downto 0), jaddress);
	
end Behavioral;

