-- Vhdl test bench created from schematic G:\Etudiant\INSTRU1\FPGA\Tp0\etape3\schema1tpo.sch - Tue Nov 28 17:18:19 2023
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
ENTITY schema1tpo_schema1tpo_sch_tb IS
END schema1tpo_schema1tpo_sch_tb;
ARCHITECTURE behavioral OF schema1tpo_schema1tpo_sch_tb IS 

   COMPONENT schema1tpo
   PORT( E	:	IN	STD_LOGIC; 
          CLK	:	IN	STD_LOGIC; 
          S	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL E	:	STD_LOGIC;
   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL S	:	STD_LOGIC;

BEGIN

   UUT: schema1tpo PORT MAP(
		E => E, 
		CLK => CLK, 
		S => S
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
