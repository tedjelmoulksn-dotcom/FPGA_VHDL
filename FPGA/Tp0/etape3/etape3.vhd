----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:43:40 11/28/2023 
-- Design Name: 
-- Module Name:    etape3 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity etape3 is
    Port ( clk : in  STD_LOGIC;  --100Mhz
           clk_interne : out  STD_LOGIC); --1KHz
end etape3; 

architecture Behavioral of etape3 is

	signal clock_scale : std_logic_vector (26 downto 0);
	SIGNAL clock_5Hz_int: STD_LOGIC;
	begin
	 
	PROCESS(clk)
	begin
	if rising_edge(clk) then
	 IF clock_scale < 100_000_000 THEN
	 clock_scale <= clock_scale + 1;
	 ELSE
	 clock_scale <= "000000000000000000000000000";
	 END IF;
	 IF clock_scale < 50_000_000 THEN
	clock_5Hz_int <= '0';
	ELSE
	clock_5Hz_int <= '1' ;
	END IF;
 end if;
end process;
CLK_interne <= clock_5Hz_int;
end Behavioral;


