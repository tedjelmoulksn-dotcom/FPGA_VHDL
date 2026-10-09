-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT schema1tp0
          PORT(
                  E : IN std_logic;
                  CLK : IN std_logic_vector(3 downto 0)        
                  S : OUT std_logic_vector(3 downto 0)
                  );
          END COMPONENT;

          SIGNAL E :  std_logic;
          SIGNAL CLK :  std_logic_vector(3 downto 0);
          

  BEGIN

  -- Component Instantiation
          uut: schema1tp0 PORT MAP(
                  E => E,
                  CLK => CLK
          );


  --  Test Bench Statements
     tb : PROCESS
     BEGIN
			E <= '0';
        wait for 100 ns; -- wait until global set/reset completes

        
		  E <= '1';
		  wait for 100 ns;
		  -- Add user defined stimulus here
        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
