----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:32:20 12/05/2023 
-- Design Name: 
-- Module Name:    decode2_to_4 - Behavioral 
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

entity decode2_to_4 is
    Port ( afficheur_0 : out  STD_LOGIC;
           afficheur_1 : out  STD_LOGIC;
           afficheur_2 : out  STD_LOGIC;
           afficheur_3 : out  STD_LOGIC;
           DP1 : out  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR (1 downto 0));
end decode2_to_4;

architecture Behavioral of decode2_to_4 is

begin
process(Sel)
begin
case sel is
 when "00" =>afficheur_0<='0'; DP1<='1'; afficheur_1<='1'; afficheur_2<='1';
 afficheur_3<='1';
 when "01" =>afficheur_1<='0'; DP1<='0'; afficheur_0<='1'; afficheur_2<='1';
 afficheur_3<='1';
 when "10" =>afficheur_2<='0'; DP1<='1'; afficheur_0<='1'; afficheur_1<='1';
 afficheur_3<='1';
 when "11" =>afficheur_3<='0'; DP1<='1'; afficheur_0<='1'; afficheur_1<='1';
 afficheur_2<='1';
 when others =>null;
end case;
end process;


end Behavioral;

