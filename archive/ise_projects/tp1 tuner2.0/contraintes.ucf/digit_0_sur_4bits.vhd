----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:24:52 12/05/2023 
-- Design Name: 
-- Module Name:    digit_0_sur_4bits - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity digit_0_sur_4bits is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Digit0 : out  STD_LOGIC_VECTOR (3 downto 0));
end digit_0_sur_4bits;

architecture Behavioral of digit_0_sur_4bits is
SIGNAL count_1Hz : STD_LOGIC_VECTOR (23 DOWNTO 0);
SIGNAL clock_1Hz_int : STD_LOGIC;
signal COUNTER_U: INTEGER range 0 to 9;
begin
--Divise par 100000000
PROCESS
BEGIN
WAIT UNTIL clk'EVENT and clk = '1' ;
 IF count_1Hz < 10000000 THEN
 Count_1Hz <= count_1Hz + 1 ;
 ELSE
 Count_1Hz <= "000000000000000000000000" ;
 END IF ;
 IF count_1Hz < 5000000 THEN
 Clock_1Hz_int <= '1' ;
 ELSE
 Clock_1Hz_int <= '0' ;
 END IF ;
end process;
process(clock_1Hz_int,Reset)
begin
if Reset='1' then
 COUNTER_U <= 0;
elsif clock_1Hz_int'event and clock_1Hz_int = '1' then
 if COUNTER_U = 9 then
 COUNTER_U <= 0;
 else
 COUNTER_U <= COUNTER_U +1;
 end if;
end if;
end process;
Digit0 <= CONV_STD_LOGIC_VECTOR(COUNTER_U,4);
end Behavioral;


