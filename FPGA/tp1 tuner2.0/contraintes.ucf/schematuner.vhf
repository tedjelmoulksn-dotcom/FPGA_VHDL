--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schematuner.vhf
-- /___/   /\     Timestamp : 12/05/2023 15:09:49
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl "G:/Etudiant/INSTRU1/FPGA/tp1 tuner/contraintes.ucf/schematuner.vhf" -w "G:/Etudiant/INSTRU1/FPGA/tp1 tuner/contraintes.ucf/schematuner.sch"
--Design Name: schematuner
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity schematuner is
   port ( CLK_BRD     : in    std_logic; 
          Enable      : in    std_logic; 
          Reset       : in    std_logic; 
          afficheur_0 : out   std_logic; 
          afficheur_1 : out   std_logic; 
          afficheur_2 : out   std_logic; 
          afficheur_3 : out   std_logic; 
          afficheur_4 : out   std_logic; 
          afficheur_5 : out   std_logic; 
          afficheur_6 : out   std_logic; 
          afficheur_7 : out   std_logic; 
          DP          : out   std_logic; 
          seg         : out   std_logic_vector (6 downto 0));
end schematuner;

architecture BEHAVIORAL of schematuner is
   attribute BOX_TYPE   : string ;
   signal XLXN_1      : std_logic_vector (3 downto 0);
   signal XLXN_2      : std_logic_vector (3 downto 0);
   signal XLXN_7      : std_logic_vector (3 downto 0);
   signal XLXN_9      : std_logic_vector (3 downto 0);
   signal XLXN_10     : std_logic_vector (3 downto 0);
   signal XLXN_11     : std_logic_vector (1 downto 0);
   signal XLXN_16     : std_logic;
   component constantesur4bits
      port ( Cste_1 : out   std_logic_vector (3 downto 0));
   end component;
   
   component digit_0_sur_4bits
      port ( clk    : in    std_logic; 
             reset  : in    std_logic; 
             Digit0 : out   std_logic_vector (3 downto 0));
   end component;
   
   component MULTIPLEXEUR
      port ( A          : in    std_logic_vector (3 downto 0); 
             B          : in    std_logic_vector (3 downto 0); 
             C          : in    std_logic_vector (3 downto 0); 
             D          : in    std_logic_vector (3 downto 0); 
             sel        : in    std_logic_vector (1 downto 0); 
             Sortie_Mux : out   std_logic_vector (3 downto 0));
   end component;
   
   component decode2_to_4
      port ( sel         : in    std_logic_vector (1 downto 0); 
             afficheur_0 : out   std_logic; 
             afficheur_1 : out   std_logic; 
             afficheur_2 : out   std_logic; 
             afficheur_3 : out   std_logic; 
             DP1         : out   std_logic);
   end component;
   
   component etape3
      port ( clk         : in    std_logic; 
             clk_interne : out   std_logic);
   end component;
   
   component etape2
      port ( d : in    std_logic_vector (3 downto 0); 
             s : out   std_logic_vector (6 downto 0));
   end component;
   
   component Compteur2bits
      port ( CLK             : in    std_logic; 
             reset           : in    std_logic; 
             start_compteur  : in    std_logic; 
             sortie_compteur : out   std_logic_vector (1 downto 0));
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
begin
   constante_1 : constantesur4bits
      port map (Cste_1(3 downto 0)=>XLXN_7(3 downto 0));
   
   constants_3 : constantesur4bits
      port map (Cste_1(3 downto 0)=>XLXN_9(3 downto 0));
   
   Digit_0 : digit_0_sur_4bits
      port map (clk=>CLK_BRD,
                reset=>Reset,
                Digit0(3 downto 0)=>XLXN_2(3 downto 0));
   
   Digit_2 : digit_0_sur_4bits
      port map (clk=>CLK_BRD,
                reset=>Reset,
                Digit0(3 downto 0)=>XLXN_10(3 downto 0));
   
   XLXI_1 : MULTIPLEXEUR
      port map (A(3 downto 0)=>XLXN_2(3 downto 0),
                B(3 downto 0)=>XLXN_7(3 downto 0),
                C(3 downto 0)=>XLXN_10(3 downto 0),
                D(3 downto 0)=>XLXN_9(3 downto 0),
                sel(1 downto 0)=>XLXN_11(1 downto 0),
                Sortie_Mux(3 downto 0)=>XLXN_1(3 downto 0));
   
   XLXI_3 : decode2_to_4
      port map (sel(1 downto 0)=>XLXN_11(1 downto 0),
                afficheur_0=>afficheur_0,
                afficheur_1=>afficheur_1,
                afficheur_2=>afficheur_2,
                afficheur_3=>afficheur_3,
                DP1=>DP);
   
   XLXI_8 : etape3
      port map (clk=>CLK_BRD,
                clk_interne=>XLXN_16);
   
   XLXI_9 : etape2
      port map (d(3 downto 0)=>XLXN_1(3 downto 0),
                s(6 downto 0)=>seg(6 downto 0));
   
   XLXI_10 : Compteur2bits
      port map (CLK=>XLXN_16,
                reset=>Reset,
                start_compteur=>Enable,
                sortie_compteur(1 downto 0)=>XLXN_11(1 downto 0));
   
   XLXI_14 : VCC
      port map (P=>afficheur_5);
   
   XLXI_15 : VCC
      port map (P=>afficheur_4);
   
   XLXI_16 : VCC
      port map (P=>afficheur_7);
   
   XLXI_17 : VCC
      port map (P=>afficheur_6);
   
end BEHAVIORAL;


