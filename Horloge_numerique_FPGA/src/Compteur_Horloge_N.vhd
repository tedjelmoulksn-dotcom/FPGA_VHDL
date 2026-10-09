library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
entity Compteur_Horloge_N is
port (
 CLK : in STD_LOGIC;
 Enable : in STD_LOGIC;
 Reset : in STD_LOGIC;
 INIT_CMPT : in STD_LOGIC;
 Full : out STD_LOGIC;
 Empty : out STD_LOGIC;
 BCD_U : out STD_LOGIC_VECTOR (3 downto 0);
 BCD_D : out STD_LOGIC_VECTOR (3 downto 0);
 BCD_M : out STD_LOGIC_VECTOR (3 downto 0);
 BCD_T : out STD_LOGIC_VECTOR (3 downto 0);
 BCD_DM : out STD_LOGIC_VECTOR (3 downto 0);
 BCD_CM : out STD_LOGIC_VECTOR (3 downto 0)
 );
end Compteur_Horloge_N;
architecture Behavioral of Compteur_Horloge_N is
signal COUNTER_U: INTEGER range 0 to 9;
signal COUNTER_D: INTEGER range 0 to 5;
signal COUNTER_M: INTEGER range 0 to 9;
signal COUNTER_T: INTEGER range 0 to 5;
signal COUNTER_DM: INTEGER range 0 to 9;
signal COUNTER_CM: INTEGER range 0 to 2;
signal IS_235959: STD_LOGIC;
signal IS_000000: STD_LOGIC;
begin
process(CLK,Reset,INIT_CMPT)
begin
if Reset='1' or INIT_CMPT ='1' then
 COUNTER_U <= 0;
 COUNTER_D <= 0;
 COUNTER_M <= 0;
 COUNTER_T <= 0;
 COUNTER_DM <= 0;
 COUNTER_CM <= 0;
elsif CLK'event and CLK ='1' then

  if COUNTER_U < 9 then
   COUNTER_U<= COUNTER_U+1;     -- Si le chiffre unite des secondes est inferieur a 9 on incremente
   
  elsif COUNTER_U =9 and COUNTER_D <5 then
    COUNTER_D<= COUNTER_D+1;              -- Sinon s'il est egal a 9 et le chiffre des dizaines inferieur a 5
    COUNTER_U<=0;                         -- on met le chiffre des unités a 0 et on incremente le chiffre des dizaines 
    
  elsif COUNTER_U=9 and COUNTER_D=5 then  -- sinon si le counter_u=9 et counter_d=5
  
  
      if COUNTER_M<9 then               ---- si counter_M<9 on lincremente et on met les counter_u,counter_D a zero
      COUNTER_M<=COUNTER_M+1;
      COUNTER_U<=0;
      COUNTER_D<=0;
      
      elsif COUNTER_M=9 and COUNTER_T<5 then  ---sinon si counter_M=9 et counter_t <5
      COUNTER_T<=COUNTER_T+1;                  --- on incremente counter_t et on met counter_m,counter_u,counter_d, a zero
      COUNTER_M<=0;
      COUNTER_U<=0;
      COUNTER_D<=0;
      
      elsif COUNTER_M=9 and COUNTER_T=5 then                      ---sinon si counter_M=9 et counter_t =5

      
          if COUNTER_DM<9 and COUNTER_CM<2 then               ---- si counter_DM<9 ET COUNTER_CM<2
           COUNTER_DM<=COUNTER_DM+1;                         -----on incremente counter_DM et on met counter_m,counter_u,counter_d,counter_t a zero
           COUNTER_T<=0;
           COUNTER_M<=0;
           COUNTER_U<=0;
           COUNTER_D<=0;
            
          elsif COUNTER_DM=9 and COUNTER_CM<2 then                 ---- si counter_DM=9 ET COUNTER_CM<2
            COUNTER_CM<=COUNTER_CM+1;                                  
            COUNTER_DM<=0;                                           -----on incremente counter_CM et on met counter_DM, counter_m,counter_u,counter_d,counter_t a zero
            COUNTER_T<=0;
            COUNTER_M<=0;
            COUNTER_U<=0;
            COUNTER_D<=0;
            
          elsif COUNTER_CM=2 and COUNTER_DM<3 then                ---- si counter_CM= 2 ET COUNTER_DM<3
            COUNTER_DM<=COUNTER_DM+1;
            COUNTER_T<=0;                                                 -----on incremente counter_DM et on met counter_T, counter_m,counter_u,counter_d a zero
            COUNTER_M<=0;
            COUNTER_U<=0;
            COUNTER_D<=0;
            
         elsif COUNTER_CM=2 and COUNTER_DM=3 then                     --- si counter_CM= 2 ET COUNTER_DM=3
           COUNTER_CM<=0;                                            ---- ON MET TOUS A ZERO
           COUNTER_DM<=0;
           COUNTER_T<=0;
           COUNTER_M<=0;
           COUNTER_U<=0;
           COUNTER_D<=0;
            End if;
         End if ;
       End if;
       End if;
End process ;
BCD_U <= CONV_STD_LOGIC_VECTOR(COUNTER_U,4);
BCD_D <= CONV_STD_LOGIC_VECTOR(COUNTER_D,4);
BCD_M <= CONV_STD_LOGIC_VECTOR(COUNTER_M,4);
BCD_T <= CONV_STD_LOGIC_VECTOR(COUNTER_T,4);
BCD_DM <= CONV_STD_LOGIC_VECTOR(COUNTER_DM,4);
BCD_CM <= CONV_STD_LOGIC_VECTOR(COUNTER_CM,4);
IS_235959 <= '1' when (COUNTER_U = 9 and COUNTER_D = 5 and COUNTER_M = 9 and 
COUNTER_T= 5 and COUNTER_CM = 3 and COUNTER_DM = 2) else '0';
IS_000000 <= '1' when (COUNTER_U = 0 and COUNTER_D = 0 and COUNTER_M = 0 and 
COUNTER_T =0 and COUNTER_CM = 0 and COUNTER_DM = 0) else '0';
Full <= IS_235959;
Empty <= IS_000000;
end Behavioral;



