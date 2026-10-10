----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:37:11 12/05/2023 
-- Design Name: 
-- Module Name:    compteur_BCD - Behavioral 
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

entity compteur_BCD is
    Port ( CLK : in  STD_LOGIC;
           UP_CMPT  : in  STD_LOGIC;
           DOWN_CMPT : in  STD_LOGIC;
           Enable : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           INIT_CMPT  : in  STD_LOGIC;
           Full  : out  STD_LOGIC;
           Empty : out  STD_LOGIC;
           BCD_U  : out  STD_LOGIC_VECTOR (3 downto 0);
           BCD_D : out  STD_LOGIC_VECTOR (3 downto 0);
           BCD_H : out  STD_LOGIC_VECTOR (3 downto 0);
           BCD_T : out  STD_LOGIC_VECTOR (3 downto 0));
end compteur_BCD;

architecture Behavioral of compteur_BCD is
signal COUNTER_U: INTEGER range 0 to 9;
signal COUNTER_D: INTEGER range 0 to 9;
signal COUNTER_H: INTEGER range 0 to 9;
signal COUNTER_T: INTEGER range 0 to 9;
signal IS_1080: STD_LOGIC;
signal IS_0875: STD_LOGIC;
signal compte : std_logic_vector(3 downto 0);
Begin
process(CLK,Reset,UP_CMPT,DOWN_CMPT,INIT_CMPT)
begin
 if Reset='1' or INIT_CMPT ='1' then
 COUNTER_U <= 5;
 COUNTER_D <= 7;
 COUNTER_H <= 8;
 COUNTER_T <= 0;
 elsif CLK'event and CLK ='1' then
 if Enable = '1' and UP_CMPT ='1' then
 if IS_1080 = '0' then
 if COUNTER_U = 9 then
 COUNTER_U <= 0;
 if COUNTER_D = 9 then
 COUNTER_D <= 0;
 if COUNTER_H = 9 then
 COUNTER_H <= 0;
 if COUNTER_T = 9 then
 COUNTER_T <= 0;
 else
 COUNTER_T <= COUNTER_T +1;
 end if;
 else
 COUNTER_H <= COUNTER_H +1;
 end if;
 else
 COUNTER_D <= COUNTER_D +1;
 end if;
 else
 COUNTER_U <= COUNTER_U +1;
 end if;
 end if;
 elsif Enable = '1' and DOWN_CMPT ='1' then
 if IS_0875 ='0' then
 if COUNTER_U = 0 then
 COUNTER_U <=9;
 if COUNTER_D =0 then
 COUNTER_D <=9;
 if COUNTER_H =0 then
 COUNTER_H <=9;
 if COUNTER_T =0 then
 COUNTER_T <=9;
 else
 COUNTER_T <= COUNTER_T -1;
 end if;
 else
 COUNTER_H <= COUNTER_H -1;
 end if;
 else
 COUNTER_D <= COUNTER_D -1;
 end if;
 else
 COUNTER_U <= COUNTER_U -1;
 end if;
 end if;
end if;
end if;
end process;
BCD_U <= CONV_STD_LOGIC_VECTOR(COUNTER_U,4);
BCD_D <= CONV_STD_LOGIC_VECTOR(COUNTER_D,4);
BCD_H <= CONV_STD_LOGIC_VECTOR(COUNTER_H,4);
BCD_T <= CONV_STD_LOGIC_VECTOR(COUNTER_T,4);
IS_1080 <= '1' when (COUNTER_U = 0 and COUNTER_D = 8 and COUNTER_H = 0 and 
COUNTER_T =1) else '0';
IS_0875 <= '1' when (COUNTER_U = 5 and COUNTER_D = 7 and COUNTER_H = 8 and 
COUNTER_T =0) else '0';
Full <= IS_0875;
Empty <= IS_0875;

end Behavioral;

