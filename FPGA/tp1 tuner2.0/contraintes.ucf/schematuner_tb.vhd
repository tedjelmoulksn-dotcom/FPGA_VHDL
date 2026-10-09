-- Vhdl test bench created from schematic G:\Etudiant\INSTRU1\FPGA\tp1 tuner\contraintes.ucf\schematuner.sch - Tue Dec 05 12:20:47 2023
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
ENTITY schematuner_schematuner_sch_tb IS
END schematuner_schematuner_sch_tb;
ARCHITECTURE behavioral OF schematuner_schematuner_sch_tb IS 

   COMPONENT schematuner
   PORT( CLK_BRD	:	IN	STD_LOGIC; 
          afficheur_1	:	OUT	STD_LOGIC; 
          afficheur_5	:	OUT	STD_LOGIC; 
          DP	:	OUT	STD_LOGIC; 
          afficheur_0	:	OUT	STD_LOGIC; 
          afficheur_2	:	OUT	STD_LOGIC; 
          afficheur_4	:	OUT	STD_LOGIC; 
          afficheur_6	:	OUT	STD_LOGIC; 
          afficheur_7	:	OUT	STD_LOGIC; 
          Reset	:	IN	STD_LOGIC; 
          Enable	:	IN	STD_LOGIC; 
          seg	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0));
   END COMPONENT;

   SIGNAL CLK_BRD	:	STD_LOGIC;
   SIGNAL afficheur_1	:	STD_LOGIC;
   SIGNAL afficheur_5	:	STD_LOGIC;
   SIGNAL DP	:	STD_LOGIC;
   SIGNAL afficheur_0	:	STD_LOGIC;
   SIGNAL afficheur_2	:	STD_LOGIC;
   SIGNAL afficheur_4	:	STD_LOGIC;
   SIGNAL afficheur_6	:	STD_LOGIC;
   SIGNAL afficheur_7	:	STD_LOGIC;
   SIGNAL Reset	:	STD_LOGIC;
   SIGNAL Enable	:	STD_LOGIC;
   SIGNAL seg	:	STD_LOGIC_VECTOR (6 DOWNTO 0);

BEGIN

   UUT: schematuner PORT MAP(
		CLK_BRD => CLK_BRD, 
		afficheur_1 => afficheur_1, 
		afficheur_5 => afficheur_5, 
		DP => DP, 
		afficheur_0 => afficheur_0, 
		afficheur_2 => afficheur_2, 
		afficheur_4 => afficheur_4, 
		afficheur_6 => afficheur_6, 
		afficheur_7 => afficheur_7, 
		Reset => Reset, 
		Enable => Enable, 
		seg => seg
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
