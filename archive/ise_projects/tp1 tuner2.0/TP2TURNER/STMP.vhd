----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:56:10 12/05/2023 
-- Design Name: 
-- Module Name:    FWSTMP - Behavioral 
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

entity FWSTMP is
    Port ( CLK : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           UP : in  STD_LOGIC;
           DOWN : in  STD_LOGIC;
           Start_UP : out  STD_LOGIC;
           Start_DOWN : out  STD_LOGIC);
end FWSTMP;


architecture Behavioral of FWSTMP is
signal compte : std_logic_vector(3 downto 0) :="0000";
signal decompte : std_logic_vector(3 downto 0) :="0000";
TYPE etat IS (attente,INC,TempoPlus,BoucleInc,DEC,TempoMoins,BoucleDec);
SIGNAL state_machine: etat;
BEGIN
process(CLK,Reset,UP,DOWN)
begin
if reset='1' then
state_machine <= attente;
start_UP <='0';
start_DOWN <='0';
elsif rising_edge(CLK) then
 case state_machine is
 when attente => Start_UP<='0';
                 Start_DOWN<= '0';
					  compte<="0000";
					  decompte<="0000";
					  state_machine <= attente;
  
  when INC => if UP<='1' and DOWN<= '0'  then 
                Start_UP<='1';
				    state_machine <= INC;
					 elsif UP = '0' then 
					 state_machine <= attente;
					end if ;
                 
  when TempoPlus => 
                if UP ='1' and DOWN ='0' then
					    compte<= compte+1;
					    Start_UP<='0';
						 state_machine<= TempoPlus;
						 else if UP<= '0';
						 state-machine <= attente;
					 
	             end if; 
   when BoucleInc =>
					 if compte='9'  and UP= '1' and DOWN= '0' then
					 Start_UP<='1';
					  state_machine<= BoucleInc;
						if UP<='1' then
						    state_machine <= attente;
						end if;	

  when DEC  =>  if UP<='0' and DOWN<= '1'  then 
                Start_UP<='1';
				    state_machine <= INC;
					 else if DOWN = '0' then 
					 state_machine <= attente;
					end if ;

						
  when TempoMoins => Start_DOWN<='1'
                if UP ='0' and DOWN ='1' then
					    decompte<= decompte+1;
					    Start_DOWN<='0';
						 state_machine <= TempoMoins;
					 end if;
	
 

end case;
end if;
end process;




end Behavioral;

