LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ALUTest IS
END ALUTest;
 
ARCHITECTURE behavior OF ALUTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU    PORT(
			  data1: in  STD_LOGIC_VECTOR(31 downto 0);
           data2: in  STD_LOGIC_VECTOR(31 downto 0);
			  aluop: in std_logic_vector (3 downto 0);
			  
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           zflags : out  STD_LOGIC
			);
    END COMPONENT;
    

   --Inputs
   signal data1: std_logic_vector(31 downto 0) := (others => '0');
   signal data2: std_logic_vector(31 downto 0) := (others => '0');
   signal aluop : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal res : std_logic_vector(31 downto 0);
   signal zflag : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          data1=> data1,
          data2=> data2,
          aluop => aluop,
          dataout => res,
          zflags => zflag
        );

  
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
     		--wait for 10 ns;
		--AND testcase
			data1<= "11000000000000000000000000000000" ;
			data2<= "10100000000000000000000000000000" ;
			aluop <= "0000" ;
			wait for 1 us;
			report "Test1";
			assert(res = "10000000000000000000000000000000" and zflag = '0') report "1:Fail" severity error;

			wait for 1 us;
		
		--OR testcase
			data1<= "11000000000000000000000000000000" ;
			data2<= "10100000000000000000000000000000" ;
			aluop <= "0001" ;
			wait for 1 us;
			report "Test2";
			assert(res = "11100000000000000000000000000000" and zflag = '0') report "2:Fail" severity error;

			wait for 1 us;
		
		--ADD testcase1 (overflow = 1, cout = 0)
			data1<= "01110000000000000000000000000000" ;
			data2<= "01100000000000000000000000000000" ;
			aluop <= "0010" ;
			wait for 1 us;
			report "Test3";
			assert(res = "11010000000000000000000000000000" and zflag = '0') report "3:Fail" severity error;

			wait for 1 us;
		
		--ADD testcase2 (zero = 1, cout = 1)
			data1<= "11110000000000000000000000000000" ;
			data2<= "00010000000000000000000000000000" ;
			aluop <= "0010" ;
			wait for 1 us;
			report "Test4";
			assert(res = "00000000000000000000000000000000" and zflag = '1') report "4:Fail" severity error;

			wait for 1 us;

		--SUdata2testcase1 (cout = 1)
			data1<= "00000000000000000000000000000111" ; --data1= 7
			data2<= "00000000000000000000000000000110" ; --data2= 6
			aluop <= "0110" ;
			wait for 1 us;
			report "Test5";
			assert(res = "00000000000000000000000000000001" and zflag = '0') report "5:Fail" severity error;

			wait for 1 us;

		--SUdata2testcase2 (cout = 0)
			data1<= "00000000000000000000000000000110" ; --data1= 6
			data2<= "00000000000000000000000000000111" ; --data2= 7
			aluop <= "0110" ;
			wait for 1 us;
			report "Test6";
			assert(res = "11111111111111111111111111111111" and zflag = '0') report "6:Fail" severity error;

			wait for 1 us;
			
		report "Test Complete";
      wait;
   end process;

END;