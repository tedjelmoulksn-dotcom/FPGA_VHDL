--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : SCHEMA4.vhf
-- /___/   /\     Timestamp : 11/28/2023 17:20:21
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl G:/Etudiant/INSTRU1/FPGA/Tp0/SCHEMA4.vhf -w G:/Etudiant/INSTRU1/FPGA/Tp0/etape3/SCHEMA4.sch
--Design Name: SCHEMA4
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FTC_HXILINX_SCHEMA4 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FTC_HXILINX_SCHEMA4 is
generic(
    INIT : bit := '0'
    );

  port (
    Q   : out STD_LOGIC := '0';
    C   : in STD_LOGIC;
    CLR : in STD_LOGIC;
    T   : in STD_LOGIC
    );
end FTC_HXILINX_SCHEMA4;

architecture Behavioral of FTC_HXILINX_SCHEMA4 is
signal q_tmp : std_logic := TO_X01(INIT);
begin

process(C, CLR)
begin
  if (CLR='1') then
    q_tmp <= '0';
  elsif (C'event and C = '1') then
    if(T='1') then
      q_tmp <= not q_tmp;
    end if;
  end if;  
end process;

Q <= q_tmp;

end Behavioral;

----- CELL CB4CLED_HXILINX_SCHEMA4 -----

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CB4CLED_HXILINX_SCHEMA4 is
	
port (
        CEO : out STD_LOGIC;
        Q0  : out STD_LOGIC;
        Q1  : out STD_LOGIC;
        Q2  : out STD_LOGIC;
        Q3  : out STD_LOGIC;
        TC  : out STD_LOGIC;
        C   : in STD_LOGIC;
        CE  : in STD_LOGIC;
        CLR : in STD_LOGIC;
        D0  : in STD_LOGIC;	
        D1  : in STD_LOGIC;	
        D2  : in STD_LOGIC;	
        D3  : in STD_LOGIC;	
        L   : in STD_LOGIC;
        UP  : in STD_LOGIC );
end CB4CLED_HXILINX_SCHEMA4;

architecture Behavioral of CB4CLED_HXILINX_SCHEMA4 is

  signal COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

  constant TERMINAL_COUNT_UP : STD_LOGIC_VECTOR(3 downto 0) := (others => '1');
  constant TERMINAL_COUNT_DOWN : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (L = '1') then
      COUNT <= D3&D2&D1&D0;
    elsif (CE='1') then
      if (UP='1') then
        COUNT <= COUNT+1;
      elsif (UP='0') then
        COUNT <= COUNT-1;
      end if;
    end if;
  end if;
end process;

TC  <= '0' when  (CLR = '1') else 
       '1' when  (((COUNT = TERMINAL_COUNT_UP) and (UP = '1')) or 
        ((COUNT = TERMINAL_COUNT_DOWN) and (UP = '0'))) else '0'; 
CEO <= '1' when  ((((COUNT = TERMINAL_COUNT_UP) and (UP = '1')) or 
        ((COUNT = TERMINAL_COUNT_DOWN) and (UP = '0'))) and CE='1') else '0'; 

Q3  <= COUNT(3);
Q2  <= COUNT(2);
Q1  <= COUNT(1);
Q0  <= COUNT(0);

end Behavioral;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SCHEMA4 is
   port ( XLXN_71 : in    std_logic; 
          XLXN_73 : in    std_logic; 
          XLXN_77 : in    std_logic; 
          XLXN_87 : out   std_logic_vector (6 downto 0));
end SCHEMA4;

architecture BEHAVIORAL of SCHEMA4 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal Q                     : std_logic_vector (3 downto 0);
   signal XLXN_2                : std_logic;
   signal XLXN_17               : std_logic;
   signal XLXN_67               : std_logic;
   signal XLXN_68               : std_logic;
   signal XLXN_69               : std_logic;
   signal XLXN_74               : std_logic;
   signal XLXN_81               : std_logic;
   signal XLXN_84               : std_logic;
   signal XLXN_85               : std_logic;
   signal XLXN_73_DUMMY         : std_logic;
   signal XLXI_2_CLR_openSignal : std_logic;
   component CB4CLED_HXILINX_SCHEMA4
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D0  : in    std_logic; 
             D1  : in    std_logic; 
             D2  : in    std_logic; 
             D3  : in    std_logic; 
             L   : in    std_logic; 
             UP  : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component FTC_HXILINX_SCHEMA4
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component etape3
      port ( clk         : in    std_logic; 
             clk_interne : out   std_logic);
   end component;
   
   component etape2
      port ( d : in    std_logic_vector (3 downto 0); 
             s : out   std_logic_vector (6 downto 0));
   end component;
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component FD_1
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD_1 : component is "BLACK_BOX";
   
   component BUFG
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUFG : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_1";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_0";
begin
   XLXN_73_DUMMY <= XLXN_73;
   XLXI_1 : CB4CLED_HXILINX_SCHEMA4
      port map (C=>XLXN_84,
                CE=>XLXN_85,
                CLR=>XLXN_77,
                D0=>XLXN_81,
                D1=>XLXN_81,
                D2=>XLXN_81,
                D3=>XLXN_81,
                L=>XLXN_81,
                UP=>XLXN_17,
                CEO=>open,
                Q0=>Q(0),
                Q1=>Q(1),
                Q2=>Q(2),
                Q3=>Q(3),
                TC=>XLXN_2);
   
   XLXI_2 : FTC_HXILINX_SCHEMA4
      port map (C=>XLXN_84,
                CLR=>XLXI_2_CLR_openSignal,
                T=>XLXN_2,
                Q=>XLXN_17);
   
   XLXI_3 : etape3
      port map (clk=>XLXN_74,
                clk_interne=>XLXN_73_DUMMY);
   
   XLXI_4 : etape2
      port map (d(3 downto 0)=>Q(3 downto 0),
                s(6 downto 0)=>XLXN_87(6 downto 0));
   
   XLXI_13 : AND3B1
      port map (I0=>XLXN_68,
                I1=>XLXN_67,
                I2=>XLXN_69,
                O=>XLXN_85);
   
   XLXI_14 : FD_1
      port map (C=>XLXN_84,
                D=>XLXN_71,
                Q=>XLXN_69);
   
   XLXI_15 : FD_1
      port map (C=>XLXN_84,
                D=>XLXN_67,
                Q=>XLXN_68);
   
   XLXI_16 : FD_1
      port map (C=>XLXN_84,
                D=>XLXN_69,
                Q=>XLXN_67);
   
   XLXI_31 : BUFG
      port map (I=>XLXN_74,
                O=>XLXN_84);
   
end BEHAVIORAL;


