-- Vhdl test bench created from schematic G:\Etudiant\INSTRU1\FPGA\Tp0\etape3\SCHEMA4.sch - Tue Nov 28 17:12:47 2023
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
   PORT( SW_USER0	:	IN	STD_LOGIC; 
          CLOCK_BRD	:	IN	STD_LOGIC; 
          TEST_BUTTON	:	IN	STD_LOGIC; 
          AFFICHEUR1	:	OUT	STD_LOGIC; 
          AFFICHEUR4	:	OUT	STD_LOGIC; 
          AFFICHEUR7	:	OUT	STD_LOGIC; 
          AFFICHEUR6	:	OUT	STD_LOGIC; 
          AFFICHEUR5	:	OUT	STD_LOGIC; 
          AFFICHEUR0	:	OUT	STD_LOGIC; 
          AFFICHEUR2	:	OUT	STD_LOGIC; 
          AFFICHEUR3	:	OUT	STD_LOGIC; 
          seg	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0));
   END COMPONENT;

   SIGNAL SW_USER0	:	STD_LOGIC;
   SIGNAL CLOCK_BRD	:	STD_LOGIC;
   SIGNAL TEST_BUTTON	:	STD_LOGIC;
   SIGNAL AFFICHEUR1	:	STD_LOGIC;
   SIGNAL AFFICHEUR4	:	STD_LOGIC;
   SIGNAL AFFICHEUR7	:	STD_LOGIC;
   SIGNAL AFFICHEUR6	:	STD_LOGIC;
   SIGNAL AFFICHEUR5	:	STD_LOGIC;
   SIGNAL AFFICHEUR0	:	STD_LOGIC;
   SIGNAL AFFICHEUR2	:	STD_LOGIC;
   SIGNAL AFFICHEUR3	:	STD_LOGIC;
   SIGNAL seg	:	STD_LOGIC_VECTOR (6 DOWNTO 0);

BEGIN

   UUT: SCHEMA4 PORT MAP(
		SW_USER0 => SW_USER0, 
		CLOCK_BRD => CLOCK_BRD, 
		TEST_BUTTON => TEST_BUTTON, 
		AFFICHEUR1 => AFFICHEUR1, 
		AFFICHEUR4 => AFFICHEUR4, 
		AFFICHEUR7 => AFFICHEUR7, 
		AFFICHEUR6 => AFFICHEUR6, 
		AFFICHEUR5 => AFFICHEUR5, 
		AFFICHEUR0 => AFFICHEUR0, 
		AFFICHEUR2 => AFFICHEUR2, 
		AFFICHEUR3 => AFFICHEUR3, 
		seg => seg
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
