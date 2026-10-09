library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity FWSTMP is
Port ( 
 CLK : in STD_LOGIC;
 Reset : in STD_LOGIC;
 UP : in STD_LOGIC;
 DOWN : in STD_LOGIC;
 Start_UP : out STD_LOGIC;
 Start_DOWN : out STD_LOGIC);
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
	when attente => Start_UP <= '0' ;Start_DOWN <= '0' ;  compte<= "0000"  ;  decompte<="0000" ;
		if UP = '0' and DOWN ='1' then state_machine <= DEC ; 
		elsif  UP = '1' and DOWN ='0' then state_machine <= INC ;
		end if ; 
			
	when DEC => start_DOWN <= '1' ;
		if UP = '0' and DOWN ='1' then state_machine <= TempoMoins ; 
		else state_machine <= attente ; 
		end if ; 
		
		
	when TempoMoins => decompte <= decompte +1 ; start_DOWN <= '0' ; 
		if DOWN = '0' then state_machine <= ATTENTE ; 
		elsif decompte = 9 and UP ='0' and DOWN = '1' then state_machine <= BoucleDec ; 
		elsif decompte <9 and UP ='0' and DOWN ='1' then state_machine <= TempoMoins ; 
		end if ; 
		
		
	when BoucleDec => start_DOWN <= '1' ; 
		if DOWN = '0' then state_machine <= attente ; 
		elsif  UP = '0' and DOWN ='1' then state_machine <= BoucleDec ; 
		end if ; 
	
	
	when INC => Start_UP <= '1' ; 
		if UP = '0' then state_machine <= attente ; 
		elsif  UP = '1' and DOWN ='0'  then state_machine <= TempoPlus ; 
		end if ; 
		
		
	when TempoPlus => compte <= compte + 1 ; Start_UP <= '0' ; 
		if compte < 9 and UP = '1' and DOWN = '0'  then state_machine <= TempoPlus ; 
		elsif compte = 9 and UP = '1' and DOWN = '0' then state_machine <= BoucleInc ; 
		elsif UP= '0' then state_machine <= attente ; 
		end if ; 
		
	when BoucleInc => Start_UP <= '1' ; 
			if UP = '0' then state_machine <= attente ; 
			elsif UP = '1' and DOWN  = '0' then state_machine <= BoucleInc ; 
			end if ; 
	
	

 end case;
end if;
end process;
end Behavioral;

