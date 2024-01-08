library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.ALL;


package datapathPackage is

component RegisterFile is
    Port ( read_sel1, read_sel2, write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC := '0';
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1, data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


component ALU is
    Port ( data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           zflags : out  STD_LOGIC);
end component;


component signext is
    Port ( x : in  STD_LOGIC_VECTOR (15 downto 0);
           y : out STD_LOGIC_VECTOR (31 downto 0));
end component;


component sl2 is
    Port ( x : in  STD_LOGIC_VECTOR (31 downto 0);
           y : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


component MUX2x1 is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           s : in  STD_LOGIC;
           y : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


component InstMUX is
    Port ( a : in  STD_LOGIC_VECTOR (4 downto 0);
           b : in  STD_LOGIC_VECTOR (4 downto 0);
           s : in  STD_LOGIC;
           y : out  STD_LOGIC_VECTOR (4 downto 0));
end component;


component Adder is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           c : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


component jsl2 is
    Port ( x : in  STD_LOGIC_VECTOR (25 downto 0);
           y : out  STD_LOGIC_VECTOR (27 downto 0));
end component;

component FLOPR is
    Port ( D : in  STD_LOGIC_VECTOR (31 downto 0);
          CLK : in  STD_LOGIC;
           RST: in  STD_LOGIC;
			 load: in  STD_LOGIC; --OUTPUT OF DECODER
           Q   : out  STD_LOGIC_VECTOR (31 downto 0));
end component;



end datapathPackage;



package body datapathPackage is
end datapathPackage;

