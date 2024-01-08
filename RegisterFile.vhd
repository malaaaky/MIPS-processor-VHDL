library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE WORK.regfilePackage.ALL;

entity RegisterFile is
    Port ( read_sel1, read_sel2, write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC := '0';
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1, data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is
	Signal R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12,
	R13, R14, R15, R16, R17, R18, R19, R20, R21, R22, R23, R24, R25,
	R26, R27, R28, R29, R30, R31,load: STD_LOGIC_VECTOR (31 downto 0);
	
	Signal L0, L1, L2, L3, L4, L5, L6, L7, L8, L9, L10, L11, L12,
	L13, L14, L15, L16, L17, L18, L19, L20, L21, L22, L23, L24, L25,
	L26, L27, L28, L29, L30, L31: STD_LOGIC;

begin
	
MUX1: MUX  port map (R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16,
  R17, R18, R19, R20, R21, R22, R23, R24, R25, R26, R27, R28, R29, R30, R31, read_sel1, data1);
MUX2: MUX  port map (R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16,
  R17, R18, R19, R20, R21, R22, R23, R24, R25, R26, R27, R28, R29, R30, R31, read_sel2, data2);	

L0 <= load(0) AND write_ena;	
Reg0: FLOPR port map ( write_data, clk, rst, L0, R0  );
L1 <= load(1) AND write_ena;
Reg1: FLOPR port map ( write_data, clk, rst, L1, R1  );
L2 <= load(2) AND write_ena;
Reg2: FLOPR port map ( write_data, clk, rst, L2, R2  );
L3 <= load(3) AND write_ena;
Reg3: FLOPR port map ( write_data, clk, rst, L3, R3  );
L4 <= load(4) AND write_ena;
Reg4: FLOPR port map ( write_data, clk, rst, L4, R4  );
L5 <= load(5) AND write_ena;
Reg5: FLOPR port map ( write_data, clk, rst, L5, R5  );
L6 <= load(6) AND write_ena;
Reg6: FLOPR port map ( write_data, clk, rst, L6, R6  );
L7 <= load(7) AND write_ena;
Reg7: FLOPR port map ( write_data, clk, rst, L7, R7  );
L8 <= load(8) AND write_ena;
Reg8: FLOPR port map ( write_data, clk, rst, L8, R8  );
L9 <= load(9) AND write_ena;
Reg9: FLOPR port map ( write_data, clk, rst, L9, R9  );
L10 <= load(10) AND write_ena;
Reg10: FLOPR port map ( write_data, clk, rst, L10, R10  );
L11 <= load(11) AND write_ena;
Reg11: FLOPR port map ( write_data, clk, rst, L11, R11  );
L12 <= load(12) AND write_ena;
Reg12: FLOPR port map ( write_data, clk, rst, L12, R12  );
L13 <= load(13) AND write_ena;
Reg13: FLOPR port map ( write_data, clk, rst, L13, R13  );
L14 <= load(14) AND write_ena;
Reg14: FLOPR port map ( write_data, clk, rst, L14, R14  );
L15 <= load(15) AND write_ena;
Reg15: FLOPR port map ( write_data, clk, rst, L15, R15  );
L16 <= load(16) AND write_ena;
Reg16: FLOPR port map ( write_data, clk, rst, L16, R16  );
L17 <= load(17) AND write_ena;
Reg17: FLOPR port map ( write_data, clk, rst, L17, R17  );
L18 <= load(18) AND write_ena;
Reg18: FLOPR port map ( write_data, clk, rst, L18, R18  );
L19 <= load(19) AND write_ena;
Reg19: FLOPR port map ( write_data, clk, rst, L19, R19  );
L20 <= load(20) AND write_ena;
Reg20: FLOPR port map ( write_data, clk, rst, L20, R20  );
L21 <= load(21) AND write_ena;
Reg21: FLOPR port map ( write_data, clk, rst, L21, R21  );
L22 <= load(22) AND write_ena;
Reg22: FLOPR port map ( write_data, clk, rst, L22, R22  );
L23 <= load(23) AND write_ena;
Reg23: FLOPR port map ( write_data, clk, rst, L23, R23  );
L24 <= load(24) AND write_ena;
Reg24: FLOPR port map ( write_data, clk, rst, L24, R24  );
L25 <= load(25) AND write_ena;
Reg25: FLOPR port map ( write_data, clk, rst, L25, R25  );
L26 <= load(26) AND write_ena;
Reg26: FLOPR port map ( write_data, clk, rst, L26, R26  );
L27 <= load(27) AND write_ena;
Reg27: FLOPR port map ( write_data, clk, rst, L27, R27  );
L28 <= load(28) AND write_ena;
Reg28: FLOPR port map ( write_data, clk, rst, L28, R28  );
L29 <= load(29) AND write_ena;
Reg29: FLOPR port map ( write_data, clk, rst, L29, R29  );
L30 <= load(30) AND write_ena;
Reg30: FLOPR port map ( write_data, clk, rst, L30, R30  );
L31 <= load(31) AND write_ena;
Reg31: FLOPR port map ( write_data, clk, rst, L31, R31 );

	
Dec: Decoder5to32 port map (write_sel, load);

end Behavioral;