--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schema1tpo.vhf
-- /___/   /\     Timestamp : 12/01/2023 13:44:04
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl G:/Etudiant/INSTRU1/FPGA/Tp0/etape3/schema1tpo.vhf -w G:/Etudiant/INSTRU1/FPGA/Tp0/etape3/schema1tpo.sch
--Design Name: schema1tpo
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

entity schema1tpo is
   port ( CLK : in    std_logic; 
          E   : in    std_logic; 
          S   : out   std_logic);
end schema1tpo;

architecture BEHAVIORAL of schema1tpo is
   attribute BOX_TYPE   : string ;
   signal XLXN_23 : std_logic;
   signal XLXN_24 : std_logic;
   signal XLXN_25 : std_logic;
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
   
begin
   XLXI_9 : AND3B1
      port map (I0=>XLXN_25,
                I1=>XLXN_23,
                I2=>XLXN_24,
                O=>S);
   
   XLXI_12 : FD_1
      port map (C=>CLK,
                D=>E,
                Q=>XLXN_24);
   
   XLXI_13 : FD_1
      port map (C=>CLK,
                D=>XLXN_24,
                Q=>XLXN_23);
   
   XLXI_14 : FD_1
      port map (C=>CLK,
                D=>XLXN_23,
                Q=>XLXN_25);
   
end BEHAVIORAL;


