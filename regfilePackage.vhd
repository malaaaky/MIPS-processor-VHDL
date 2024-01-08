library IEEE;
use IEEE.STD_LOGIC_1164.all;

package regfilePackage is

component FLOPR is
    Port ( D : in  STD_LOGIC_VECTOR (31 downto 0);
          CLK : in  STD_LOGIC;
           RST: in  STD_LOGIC;
			  load: in STD_LOGIC;
           Q   : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component MUX is
    Port ( R0 : in  STD_LOGIC_VECTOR (31 downto 0);
           R1: in  STD_LOGIC_VECTOR (31 downto 0);
			  R2: in  STD_LOGIC_VECTOR (31 downto 0);
           R3: in  STD_LOGIC_VECTOR (31 downto 0);
			  R4: in  STD_LOGIC_VECTOR (31 downto 0);
           R5: in  STD_LOGIC_VECTOR (31 downto 0);
			  R6: in  STD_LOGIC_VECTOR (31 downto 0);
           R7: in  STD_LOGIC_VECTOR (31 downto 0);
			  R8: in  STD_LOGIC_VECTOR (31 downto 0);
           R9: in  STD_LOGIC_VECTOR (31 downto 0);
			  R10: in  STD_LOGIC_VECTOR (31 downto 0);
           R11: in  STD_LOGIC_VECTOR (31 downto 0);
			  R12: in  STD_LOGIC_VECTOR (31 downto 0);
           R13: in  STD_LOGIC_VECTOR (31 downto 0);
			  R14: in  STD_LOGIC_VECTOR (31 downto 0);
           R15: in  STD_LOGIC_VECTOR (31 downto 0);
			  R16: in  STD_LOGIC_VECTOR (31 downto 0);
           R17: in  STD_LOGIC_VECTOR (31 downto 0);
			  R18: in  STD_LOGIC_VECTOR (31 downto 0);
           R19: in  STD_LOGIC_VECTOR (31 downto 0);
			  R20: in  STD_LOGIC_VECTOR (31 downto 0);
           R21: in  STD_LOGIC_VECTOR (31 downto 0);
			  R22: in  STD_LOGIC_VECTOR (31 downto 0);
           R23: in  STD_LOGIC_VECTOR (31 downto 0);
			  R24: in  STD_LOGIC_VECTOR (31 downto 0);
           R25: in  STD_LOGIC_VECTOR (31 downto 0);
			  R26: in  STD_LOGIC_VECTOR (31 downto 0);
           R27: in  STD_LOGIC_VECTOR (31 downto 0);
			  R28: in  STD_LOGIC_VECTOR (31 downto 0);
           R29: in  STD_LOGIC_VECTOR (31 downto 0);
			  R30: in  STD_LOGIC_VECTOR (31 downto 0);
           R31: in  STD_LOGIC_VECTOR (31 downto 0);
			  sel:in  STD_LOGIC_VECTOR (4 downto 0);
           Y : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Decoder5to32 is
    Port ( A : in  STD_LOGIC_VECTOR (4 downto 0);
           D : out STD_LOGIC_VECTOR (31 downto 0));
end component;

end regfilePackage;

package body regfilePackage is
end regfilePackage;
