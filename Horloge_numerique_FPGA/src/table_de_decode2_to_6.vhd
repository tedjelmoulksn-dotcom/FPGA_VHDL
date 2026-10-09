library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity table_de_decode2_to_6 is
Port ( sel : in STD_LOGIC_VECTOR (2 downto 0);
DP1 : out STD_LOGIC;
afficheur_0 : out STD_LOGIC;
afficheur_1 : out STD_LOGIC;
afficheur_2 : out STD_LOGIC;
afficheur_3 : out STD_LOGIC;
afficheur_4 : out STD_LOGIC;
afficheur_5 : out STD_LOGIC);
end table_de_decode2_to_6;
architecture Behavioral of table_de_decode2_to_6 is
begin
process(Sel)
begin
afficheur_0 <='1'; afficheur_1 <='1'; afficheur_2 <='1'; 
afficheur_3 <='1'; afficheur_4 <='1'; afficheur_5 <='1';
case sel is
   when "000" => afficheur_0 <='0';afficheur_1 <='1'; afficheur_2 <='1';DP1<='0';    --- si le selectionneur  est a 0 tous les afficheurs sont a 1 sauf lafficheur_0
                 afficheur_3 <='1'; afficheur_4 <='1'; afficheur_5 <='1';
   when "001" => afficheur_1 <='0';afficheur_0 <='1'; afficheur_2 <='1';DP1<='0';    ---si le le selectionneur est a 1 tous les afficheurs sont a 1 sauf lafficheur_1
                 afficheur_3 <='1'; afficheur_4 <='1'; afficheur_5 <='1';
   when "010" => afficheur_2 <='0';afficheur_1 <='1'; afficheur_0 <='1';DP1<='0';   --si le selectionneur est a '2' tous les afficheurs sont a 1 sauf lafficheur_2
                 afficheur_3 <='1'; afficheur_4 <='1'; afficheur_5 <='1';
   when "011" => afficheur_3 <='0';afficheur_1 <='1'; afficheur_2 <='1';DP1<='0';     ----si le selectionneur est a '3' tous les afficheurs sont a 1 sauf lafficheur_3
                afficheur_0 <='1'; afficheur_4 <='1'; afficheur_5 <='1';
   when "100" => afficheur_4 <= '0';afficheur_1 <='1'; afficheur_2 <='1';DP1<='0';             ---si le selectionneur est a '4' tous les afficheurs sont a 1 sauf lafficheur_4
                afficheur_3 <='1'; afficheur_0 <='1'; afficheur_5 <='1';
   when "101" => afficheur_5 <= '0';afficheur_1 <='1'; afficheur_2 <='1';DP1<='0';          -- si le selectionneur est a '5' tous les afficheurs sont a 1 sauf lafficheur_5
                 afficheur_3 <='1'; afficheur_4 <='1'; afficheur_0 <='1';
   when others => null;
end case;
end process;
end Behavioral;