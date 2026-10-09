library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
entity Synchro_Horloge_Numerique_N is
 Port ( CLK : in STD_LOGIC;
 Avance_rapide_Fast : in STD_LOGIC;
 Avance_rapide_Slow : in STD_LOGIC;
 Synchro_horloge : out STD_LOGIC);
end Synchro_Horloge_Numerique_N;
architecture Behavioral of Synchro_Horloge_Numerique_N is
SIGNAL count_1000Hz : STD_LOGIC_VECTOR (23 downto 0);
SIGNAL clock_1000Hz_int : STD_LOGIC;
SIGNAL count_10Hz : STD_LOGIC_VECTOR (28 downto 0);
SIGNAL clock_10Hz_int : STD_LOGIC;
SIGNAL count_1Hz : STD_LOGIC_VECTOR (28 downto 0);
SIGNAL clock_1Hz_int : STD_LOGIC;
begin
-- divise par 100000 --1khz
PROCESS
BEGIN
WAIT UNTIL CLK'EVENT and CLK = '1' ;
IF count_1000Hz < 100000 THEN
 count_1000Hz <= count_1000Hz + 1;
ELSE
 count_1000Hz <= "000000000000000000000000";
END IF;
IF count_1000Hz < 50000 THEN
 clock_1000Hz_int <= '1';
ELSE
 clock_1000Hz_int <= '0' ;
end if;
end process;
-- divise par 10000000 --10hz
PROCESS
BEGIN
WAIT UNTIL CLK'EVENT and CLK = '1' ;
IF count_10Hz < 1000000 THEN
 count_10Hz <= count_10Hz + 1;
ELSE
 count_10Hz <= "00000000000000000000000000000";
END IF;
IF count_10Hz < 500000 THEN
 clock_10Hz_int <= '1';
ELSE
 clock_10Hz_int <= '0' ;
end if;
end process;
-- divise par 100000000 --1hz
PROCESS
BEGIN
WAIT UNTIL CLK'EVENT and CLK = '1' ;
IF count_1Hz < 100000000 THEN
 count_1Hz <= count_1Hz + 1;
ELSE
 count_1Hz <= "00000000000000000000000000000";
END IF;
IF count_1Hz < 50000000 THEN
 clock_1Hz_int <= '1';
ELSE
 clock_1Hz_int <= '0' ;
END IF ;
end process;
-- gestion avance lente et rapide--
process(clock_1000Hz_int,clock_10Hz_int,clock_1Hz_int,Avance_rapide_Slow,
Avance_rapide_Fast)
Begin
 if Avance_rapide_Fast='1' then       -- Permet de mettre l'horloge a la vitesse maximale de 1000Hz  il est prioritaire sur Avance_rapide_Low
  Synchro_horloge <=clock_1000Hz_int; 
 elsif Avance_rapide_Fast='0' and Avance_rapide_Slow='1' then  -- Permet de mettre l'horloge a une vitesse moins rapide de 10 Hz
  Synchro_horloge <= clock_10Hz_int;
 else
  Synchro_horloge<= clock_1Hz_int;    -- c'est la vitesse normale de l'horloge  quand on appuie sur aucun des 2 boutons
 end if;
end process;
end Behavioral;