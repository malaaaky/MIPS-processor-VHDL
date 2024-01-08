library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MainPackage is

component MIPS is
	Port ( clk, rst : in  STD_LOGIC;
			pc : out  STD_LOGIC_VECTOR (31 downto 0);
			instr : in  STD_LOGIC_VECTOR (31 downto 0);
			memwrite : out STD_LOGIC;			-----------
			aluout, writedata : out  STD_LOGIC_VECTOR (31 downto 0);
			readdata : in  STD_LOGIC_VECTOR (31 downto 0));
end component;

component imem is -- instruction memory
		port(a: in STD_LOGIC_VECTOR(5 downto 0);
		rd: out STD_LOGIC_VECTOR(31 downto 0));
end component;

component dmem is -- data memory
		port(clk, we: in STD_LOGIC;
		a, wd: in STD_LOGIC_VECTOR (31 downto 0);
		rd: out STD_LOGIC_VECTOR (31 downto 0));
end component;

end MainPackage;