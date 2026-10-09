<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(3:0)" />
        <signal name="XLXN_2(3:0)" />
        <signal name="XLXN_7(3:0)" />
        <signal name="XLXN_9(3:0)" />
        <signal name="XLXN_10(3:0)" />
        <signal name="XLXN_11(1:0)" />
        <signal name="XLXN_12(1:0)" />
        <signal name="XLXN_13(1:0)" />
        <signal name="XLXN_14(1:0)" />
        <signal name="XLXN_15(1:0)" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="CLK_BRD" />
        <signal name="XLXN_20(3:0)" />
        <signal name="XLXN_21(3:0)" />
        <signal name="XLXN_22(3:0)" />
        <signal name="XLXN_23(3:0)" />
        <signal name="XLXN_24(3:0)" />
        <signal name="afficheur_1" />
        <signal name="afficheur_3" />
        <signal name="DP" />
        <signal name="afficheur_0" />
        <signal name="afficheur_2" />
        <signal name="afficheur_4" />
        <signal name="afficheur_6" />
        <signal name="afficheur_7" />
        <signal name="Reset" />
        <signal name="Enable" />
        <signal name="XLXN_40" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="seg(6:0)" />
        <signal name="XLXN_45" />
        <signal name="afficheur_5" />
        <port polarity="Input" name="CLK_BRD" />
        <port polarity="Output" name="afficheur_1" />
        <port polarity="Output" name="afficheur_3" />
        <port polarity="Output" name="DP" />
        <port polarity="Output" name="afficheur_0" />
        <port polarity="Output" name="afficheur_2" />
        <port polarity="Output" name="afficheur_4" />
        <port polarity="Output" name="afficheur_6" />
        <port polarity="Output" name="afficheur_7" />
        <port polarity="Input" name="Reset" />
        <port polarity="Input" name="Enable" />
        <port polarity="Output" name="seg(6:0)" />
        <port polarity="Output" name="afficheur_5" />
        <blockdef name="MULTIPLEXEUR">
            <timestamp>2023-12-5T10:16:43</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="constantesur4bits">
            <timestamp>2023-12-5T10:22:38</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="decode2_to_4">
            <timestamp>2023-12-5T10:33:49</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="digit_0_sur_4bits">
            <timestamp>2023-12-5T10:29:6</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="etape3">
            <timestamp>2023-12-5T14:8:18</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="etape2">
            <timestamp>2023-12-5T10:48:59</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Compteur2bits">
            <timestamp>2023-12-5T10:10:58</timestamp>
            <rect width="384" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="448" y="-172" height="24" />
            <line x2="512" y1="-160" y2="-160" x1="448" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="MULTIPLEXEUR" name="XLXI_1">
            <blockpin signalname="XLXN_2(3:0)" name="A(3:0)" />
            <blockpin signalname="XLXN_7(3:0)" name="B(3:0)" />
            <blockpin signalname="XLXN_10(3:0)" name="C(3:0)" />
            <blockpin signalname="XLXN_9(3:0)" name="D(3:0)" />
            <blockpin signalname="XLXN_11(1:0)" name="sel(1:0)" />
            <blockpin signalname="XLXN_1(3:0)" name="Sortie_Mux(3:0)" />
        </block>
        <block symbolname="constantesur4bits" name="constante_1">
            <blockpin signalname="XLXN_7(3:0)" name="Cste_1(3:0)" />
        </block>
        <block symbolname="decode2_to_4" name="XLXI_3">
            <blockpin signalname="XLXN_11(1:0)" name="sel(1:0)" />
            <blockpin signalname="afficheur_0" name="afficheur_0" />
            <blockpin signalname="afficheur_1" name="afficheur_1" />
            <blockpin signalname="afficheur_2" name="afficheur_2" />
            <blockpin signalname="afficheur_3" name="afficheur_3" />
            <blockpin signalname="DP" name="DP1" />
        </block>
        <block symbolname="digit_0_sur_4bits" name="Digit_0">
            <blockpin signalname="CLK_BRD" name="clk" />
            <blockpin signalname="Reset" name="reset" />
            <blockpin signalname="XLXN_2(3:0)" name="Digit0(3:0)" />
        </block>
        <block symbolname="constantesur4bits" name="constants_3">
            <blockpin signalname="XLXN_9(3:0)" name="Cste_1(3:0)" />
        </block>
        <block symbolname="digit_0_sur_4bits" name="Digit_2">
            <blockpin signalname="CLK_BRD" name="clk" />
            <blockpin signalname="Reset" name="reset" />
            <blockpin signalname="XLXN_10(3:0)" name="Digit0(3:0)" />
        </block>
        <block symbolname="etape3" name="XLXI_8">
            <blockpin signalname="CLK_BRD" name="clk" />
            <blockpin signalname="XLXN_16" name="clk_interne" />
        </block>
        <block symbolname="etape2" name="XLXI_9">
            <blockpin signalname="XLXN_1(3:0)" name="d(3:0)" />
            <blockpin signalname="seg(6:0)" name="s(6:0)" />
        </block>
        <block symbolname="Compteur2bits" name="XLXI_10">
            <blockpin signalname="XLXN_16" name="CLK" />
            <blockpin signalname="Reset" name="reset" />
            <blockpin signalname="Enable" name="start_compteur" />
            <blockpin signalname="XLXN_11(1:0)" name="sortie_compteur(1:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_14">
            <blockpin signalname="afficheur_5" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_15">
            <blockpin signalname="afficheur_4" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_16">
            <blockpin signalname="afficheur_7" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_17">
            <blockpin signalname="afficheur_6" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2880" y="928" name="XLXI_9" orien="R0">
        </instance>
        <instance x="1760" y="1504" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1(3:0)">
            <wire x2="2512" y1="1216" y2="1216" x1="2144" />
            <wire x2="2512" y1="896" y2="1216" x1="2512" />
            <wire x2="2880" y1="896" y2="896" x1="2512" />
        </branch>
        <branch name="XLXN_2(3:0)">
            <wire x2="1744" y1="384" y2="384" x1="1536" />
            <wire x2="1744" y1="384" y2="1216" x1="1744" />
            <wire x2="1760" y1="1216" y2="1216" x1="1744" />
        </branch>
        <branch name="XLXN_7(3:0)">
            <wire x2="1632" y1="608" y2="608" x1="1520" />
            <wire x2="1632" y1="608" y2="1280" x1="1632" />
            <wire x2="1760" y1="1280" y2="1280" x1="1632" />
        </branch>
        <instance x="752" y="1424" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_9(3:0)">
            <wire x2="1584" y1="976" y2="976" x1="1440" />
            <wire x2="1584" y1="976" y2="1408" x1="1584" />
            <wire x2="1760" y1="1408" y2="1408" x1="1584" />
        </branch>
        <branch name="XLXN_10(3:0)">
            <wire x2="1616" y1="752" y2="752" x1="1488" />
            <wire x2="1616" y1="752" y2="1344" x1="1616" />
            <wire x2="1760" y1="1344" y2="1344" x1="1616" />
        </branch>
        <branch name="XLXN_11(1:0)">
            <wire x2="1280" y1="1264" y2="1264" x1="1264" />
            <wire x2="1280" y1="1264" y2="1472" x1="1280" />
            <wire x2="1280" y1="1472" y2="1480" x1="1280" />
            <wire x2="1280" y1="1480" y2="1792" x1="1280" />
            <wire x2="1440" y1="1792" y2="1792" x1="1280" />
            <wire x2="1760" y1="1472" y2="1472" x1="1280" />
        </branch>
        <instance x="1440" y="2080" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_16">
            <wire x2="736" y1="1232" y2="1232" x1="544" />
            <wire x2="736" y1="1232" y2="1264" x1="736" />
            <wire x2="752" y1="1264" y2="1264" x1="736" />
        </branch>
        <branch name="CLK_BRD">
            <wire x2="80" y1="752" y2="1392" x1="80" />
            <wire x2="368" y1="1392" y2="1392" x1="80" />
            <wire x2="368" y1="1392" y2="1408" x1="368" />
            <wire x2="368" y1="1408" y2="1472" x1="368" />
            <wire x2="576" y1="752" y2="752" x1="80" />
            <wire x2="1104" y1="752" y2="752" x1="576" />
            <wire x2="160" y1="1232" y2="1232" x1="144" />
            <wire x2="144" y1="1232" y2="1408" x1="144" />
            <wire x2="368" y1="1408" y2="1408" x1="144" />
            <wire x2="368" y1="1472" y2="1472" x1="304" />
            <wire x2="1152" y1="384" y2="384" x1="576" />
            <wire x2="576" y1="384" y2="752" x1="576" />
        </branch>
        <instance x="1136" y="640" name="constante_1" orien="R0">
        </instance>
        <instance x="1104" y="848" name="Digit_2" orien="R0">
        </instance>
        <instance x="1056" y="1008" name="constants_3" orien="R0">
        </instance>
        <branch name="afficheur_1">
            <wire x2="1856" y1="1856" y2="1856" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1856" name="afficheur_1" orien="R0" />
        <branch name="DP">
            <wire x2="1856" y1="2048" y2="2048" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="1856" y="2048" name="DP" orien="R0" />
        <branch name="afficheur_0">
            <wire x2="1856" y1="1792" y2="1792" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1792" name="afficheur_0" orien="R0" />
        <branch name="afficheur_2">
            <wire x2="1856" y1="1920" y2="1920" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1920" name="afficheur_2" orien="R0" />
        <branch name="afficheur_3">
            <wire x2="1840" y1="1984" y2="1984" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="1840" y="1984" name="afficheur_3" orien="R0" />
        <instance x="320" y="1744" name="XLXI_14" orien="R0" />
        <instance x="480" y="1744" name="XLXI_17" orien="R0" />
        <instance x="192" y="1744" name="XLXI_15" orien="R0" />
        <instance x="624" y="1744" name="XLXI_16" orien="R0" />
        <branch name="afficheur_4">
            <wire x2="256" y1="1744" y2="1776" x1="256" />
        </branch>
        <iomarker fontsize="28" x="256" y="1776" name="afficheur_4" orien="R90" />
        <branch name="afficheur_5">
            <wire x2="384" y1="1744" y2="1776" x1="384" />
        </branch>
        <branch name="afficheur_6">
            <wire x2="544" y1="1744" y2="1776" x1="544" />
        </branch>
        <iomarker fontsize="28" x="544" y="1776" name="afficheur_6" orien="R90" />
        <branch name="afficheur_7">
            <wire x2="688" y1="1744" y2="1776" x1="688" />
        </branch>
        <iomarker fontsize="28" x="688" y="1776" name="afficheur_7" orien="R90" />
        <instance x="1152" y="480" name="Digit_0" orien="R0">
        </instance>
        <branch name="Enable">
            <wire x2="736" y1="1520" y2="1520" x1="624" />
            <wire x2="752" y1="1392" y2="1392" x1="736" />
            <wire x2="736" y1="1392" y2="1520" x1="736" />
        </branch>
        <iomarker fontsize="28" x="624" y="1520" name="Enable" orien="R180" />
        <iomarker fontsize="28" x="640" y="1408" name="Reset" orien="R180" />
        <branch name="Reset">
            <wire x2="688" y1="1408" y2="1408" x1="640" />
            <wire x2="1152" y1="448" y2="448" x1="688" />
            <wire x2="688" y1="448" y2="816" x1="688" />
            <wire x2="1104" y1="816" y2="816" x1="688" />
            <wire x2="688" y1="816" y2="1328" x1="688" />
            <wire x2="688" y1="1328" y2="1408" x1="688" />
            <wire x2="736" y1="1328" y2="1328" x1="688" />
            <wire x2="752" y1="1328" y2="1328" x1="736" />
        </branch>
        <iomarker fontsize="28" x="304" y="1472" name="CLK_BRD" orien="R180" />
        <branch name="seg(6:0)">
            <wire x2="3296" y1="896" y2="896" x1="3264" />
        </branch>
        <iomarker fontsize="28" x="3296" y="896" name="seg(6:0)" orien="R0" />
        <instance x="160" y="1264" name="XLXI_8" orien="R0">
        </instance>
        <iomarker fontsize="28" x="384" y="1776" name="afficheur_5" orien="R90" />
    </sheet>
</drawing>