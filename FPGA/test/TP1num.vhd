----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:50:45 11/28/2023 
-- Design Name: 
-- Module Name:    TP1num - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TP1num is
    Port ( 
           Bouton => Bouton;
			  LED => LED;
			  );			  
end TP1num;		
	  
	bouton_process :process
	begin
			  Bouton <= '0';
			  wait for period/2;
			  Bouton <= '1';
			  wait for period/2;
	end process;
END;
