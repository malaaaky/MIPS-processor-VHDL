library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.MainPackage.ALL;

entity Main_module is
		port(clk, reset: in STD_LOGIC;
				writedata, dataadr: out STD_LOGIC_VECTOR(31 downto 0);
				memwrite: out STD_LOGIC);
end Main_module;

architecture Behavioral of Main_module is

	signal WE: STD_LOGIC;		--write enable
	signal pc, instr, readdata, dataadrt, wdata: STD_LOGIC_VECTOR(31 downto 0);
	
begin
		
		memwrite <= WE;
		dataadr <= dataadrt;
		writedata <= wdata;
		
		path: MIPS port map ( clk, reset, pc, instr, WE, dataadrt, wdata, readdata );
		instruction: imem port map ( pc(7 downto 2), instr );
		Rdata: dmem port map ( clk, WE, dataadrt, wdata, readdata );

end Behavioral;
