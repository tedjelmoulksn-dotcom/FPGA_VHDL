--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:11:09 11/28/2023
-- Design Name:   
-- Module Name:   G:/Etudiant/INSTRU1/FPGA/TP1num/testb.vhd
-- Project Name:  TP1num
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Demo
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testb IS
END testb;
 
ARCHITECTURE behavior OF testb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Demo
    PORT(
         Bouton : IN  std_logic;
         LED : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Bouton : std_logic := '0';

 	--Outputs
   signal LED : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 10 ns;
 
BEGIN
  
	-- Instantiate the Unit Under Test (UUT)
   uut: Demo PORT MAP (
          Bouton => Bouton,
          LED => LED
        );

   -- Clock process definitions
   bouton_process :process
   begin
		bouton <= '0'; 
		wait for period/2;
		bouton <= '1';
		wait for period/2;
   end process;
 
END;
