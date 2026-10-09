----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:50:33 12/05/2023 
-- Design Name: 
-- Module Name:    FWSTINIT - Behavioral 
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

entity FWSTINIT is
    Port ( CLK : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           UP : in  STD_LOGIC;
           DOWN : in  STD_LOGIC;
           init_cmpt : out  STD_LOGIC);
end FWSTINIT;

architecture Behavioral of FWSTINIT is
signal init : std_logic_vector(3 downto 0) :="0000";
TYPE etat IS (attente,TempoPlus,RAZ);
SIGNAL state_machine : etat;
begin
process(CLK,Reset,UP,DOWN)
begin
if Reset ='1' then
state_machine <= attente;
init_cmpt <='0';
elsif rising_edge(CLK) then
case state_machine is
 when attente => init <="0000";
 init_cmpt <='0';
state_machine <= TempoPlus;
 when TempoPlus => if UP ='1' and DOWN ='1' then
 init <= init + 1;
 if init = 9 then
 state_machine <= RAZ;
 end if;
 elsif UP ='0' or DOWN ='0' then
 state_machine <= attente;
 end if;
 when RAZ => if UP ='1' and DOWN ='1' then
 init_cmpt <='1';
 elsif UP ='0' or DOWN ='0' then
 state_machine <= attente;
 end if;
end case;
end if;
end process;
end Behavioral; 



