<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="E" />
        <signal name="CLK" />
        <signal name="S" />
        <signal name="XLXN_25" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <port polarity="Input" name="E" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="S" />
        <blockdef name="and3b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <blockdef name="fd_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
        </blockdef>
        <block symbolname="and3b1" name="XLXI_9">
            <blockpin signalname="XLXN_25" name="I0" />
            <blockpin signalname="XLXN_23" name="I1" />
            <blockpin signalname="XLXN_24" name="I2" />
            <blockpin signalname="S" name="O" />
        </block>
        <block symbolname="fd_1" name="XLXI_12">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="E" name="D" />
            <blockpin signalname="XLXN_24" name="Q" />
        </block>
        <block symbolname="fd_1" name="XLXI_13">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_24" name="D" />
            <blockpin signalname="XLXN_23" name="Q" />
        </block>
        <block symbolname="fd_1" name="XLXI_14">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_23" name="D" />
            <blockpin signalname="XLXN_25" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="E">
            <wire x2="896" y1="1056" y2="1056" x1="576" />
            <wire x2="912" y1="1056" y2="1056" x1="896" />
        </branch>
        <branch name="CLK">
            <wire x2="832" y1="1184" y2="1184" x1="576" />
            <wire x2="832" y1="1184" y2="1328" x1="832" />
            <wire x2="1360" y1="1328" y2="1328" x1="832" />
            <wire x2="1936" y1="1328" y2="1328" x1="1360" />
            <wire x2="912" y1="1184" y2="1184" x1="832" />
            <wire x2="1360" y1="1184" y2="1328" x1="1360" />
            <wire x2="1488" y1="1184" y2="1184" x1="1360" />
            <wire x2="1936" y1="1184" y2="1328" x1="1936" />
            <wire x2="2032" y1="1184" y2="1184" x1="1936" />
        </branch>
        <branch name="S">
            <wire x2="2880" y1="992" y2="992" x1="2864" />
            <wire x2="2896" y1="992" y2="992" x1="2880" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="2592" y1="1056" y2="1056" x1="2416" />
            <wire x2="2608" y1="1056" y2="1056" x1="2592" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1952" y1="1056" y2="1056" x1="1872" />
            <wire x2="2032" y1="1056" y2="1056" x1="1952" />
            <wire x2="1952" y1="928" y2="1056" x1="1952" />
            <wire x2="2480" y1="928" y2="928" x1="1952" />
            <wire x2="2480" y1="928" y2="992" x1="2480" />
            <wire x2="2608" y1="992" y2="992" x1="2480" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1392" y1="1056" y2="1056" x1="1296" />
            <wire x2="1488" y1="1056" y2="1056" x1="1392" />
            <wire x2="1392" y1="864" y2="1056" x1="1392" />
            <wire x2="2608" y1="864" y2="864" x1="1392" />
            <wire x2="2608" y1="864" y2="928" x1="2608" />
        </branch>
        <instance x="2608" y="1120" name="XLXI_9" orien="R0" />
        <instance x="912" y="1312" name="XLXI_12" orien="R0" />
        <instance x="1488" y="1312" name="XLXI_13" orien="R0" />
        <instance x="2032" y="1312" name="XLXI_14" orien="R0" />
        <iomarker fontsize="28" x="576" y="1184" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="2896" y="992" name="S" orien="R0" />
        <iomarker fontsize="28" x="576" y="1056" name="E" orien="R180" />
    </sheet>
</drawing>