-- Vhdl test bench created from schematic G:\Etudiant\INSTRU1\FPGA\Tp0\etape3\SCHEMA4.sch - Tue Nov 28 17:39:30 2023
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY SCHEMA4_SCHEMA4_sch_tb IS
END SCHEMA4_SCHEMA4_sch_tb;
ARCHITECTURE behavioral OF SCHEMA4_SCHEMA4_sch_tb IS 

   COMPONENT SCHEMA4
   PORT( XLXN_71	:	IN	STD_LOGIC; 
          XLXN_73	:	IN	STD_LOGIC; 
          XLXN_77	:	IN	STD_LOGIC; 
          XLXN_87	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0));
   END COMPONENT;

   SIGNAL XLXN_71	:	STD_LOGIC;
   SIGNAL XLXN_73	:	STD_LOGIC;
   SIGNAL XLXN_77	:	STD_LOGIC;
   SIGNAL XLXN_87	:	STD_LOGIC_VECTOR (6 DOWNTO 0);

BEGIN

   UUT: SCHEMA4 PORT MAP(
		XLXN_71 => XLXN_71, 
		XLXN_73 => XLXN_73, 
		XLXN_77 => XLXN_77, 
		XLXN_87 => XLXN_87
   );
   
-- *** Test Bench - User Defined Section ***
   tb : PROCESS
	BEGIN
	  CLOCK_BRD <= '0';
        wait for 1ns; -- wait until global set/reset completes		  
		  CLOCK_BRD <= '1'; 
		  wait for 1 ns;
		 END PROCESS tb;
		 tb2 : PROCESS
		 BEGIN
		  SW_USER0 <= '0';
        wait for 300 ns; -- wait until global set/reset completes		  
		  SW_USER0 <= '1'; 
		  wait for 300 ns;
		 END PROCESS tb2;
		  tb3 : PROCESS
		  BEGIN
	      TEST_BUTTON <= '0';
        wait for 3000 ns; -- wait until global set/reset completes		  
		  TEST_BUTTON <= '1'; 
		  wait for 3000 ns;
		 END PROCESS tb3;
	

END;