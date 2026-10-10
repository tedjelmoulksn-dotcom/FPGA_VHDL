----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:00:36 12/05/2023 
-- Design Name: 
-- Module Name:    Compteur2bits - Behavioral 
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

entity Compteur2bits is
    Port ( CLK : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           start_compteur : in  STD_LOGIC;
           sortie_compteur : out  STD_LOGIC_VECTOR (1 downto 0));
end Compteur2bits;

architecture Behavioral of Compteur2bits is
signal compte : STD_LOGIC_VECTOR (1 downto 0);
begin
process(CLK,reset)
BEGIN
if reset ='1' then
compte <="00";
elsif rising_edge(CLK)THEN
 if start_compteur ='1' then
 compte <= compte +1;
 end if;
end if;
END PROCESS;
sortie_compteur <= compte;


end Behavioral;

