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
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="S" />
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
            <wire x2="800" y1="352" y2="352" x1="480" />
            <wire x2="816" y1="352" y2="352" x1="800" />
        </branch>
        <branch name="CLK">
            <wire x2="736" y1="480" y2="480" x1="480" />
            <wire x2="736" y1="480" y2="624" x1="736" />
            <wire x2="1264" y1="624" y2="624" x1="736" />
            <wire x2="1840" y1="624" y2="624" x1="1264" />
            <wire x2="816" y1="480" y2="480" x1="736" />
            <wire x2="1264" y1="480" y2="624" x1="1264" />
            <wire x2="1392" y1="480" y2="480" x1="1264" />
            <wire x2="1840" y1="480" y2="624" x1="1840" />
            <wire x2="1936" y1="480" y2="480" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="480" y="480" name="CLK" orien="R180" />
        <branch name="S">
            <wire x2="2784" y1="288" y2="288" x1="2768" />
            <wire x2="2800" y1="288" y2="288" x1="2784" />
        </branch>
        <iomarker fontsize="28" x="2800" y="288" name="S" orien="R0" />
        <branch name="XLXN_25">
            <wire x2="2496" y1="352" y2="352" x1="2320" />
            <wire x2="2512" y1="352" y2="352" x1="2496" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1856" y1="352" y2="352" x1="1776" />
            <wire x2="1936" y1="352" y2="352" x1="1856" />
            <wire x2="1856" y1="224" y2="352" x1="1856" />
            <wire x2="2384" y1="224" y2="224" x1="1856" />
            <wire x2="2384" y1="224" y2="288" x1="2384" />
            <wire x2="2512" y1="288" y2="288" x1="2384" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1296" y1="352" y2="352" x1="1200" />
            <wire x2="1392" y1="352" y2="352" x1="1296" />
            <wire x2="1296" y1="160" y2="352" x1="1296" />
            <wire x2="2512" y1="160" y2="160" x1="1296" />
            <wire x2="2512" y1="160" y2="224" x1="2512" />
        </branch>
        <instance x="2512" y="416" name="XLXI_9" orien="R0" />
        <instance x="816" y="608" name="XLXI_12" orien="R0" />
        <instance x="1392" y="608" name="XLXI_13" orien="R0" />
        <instance x="1936" y="608" name="XLXI_14" orien="R0" />
        <iomarker fontsize="28" x="480" y="352" name="E" orien="R180" />
    </sheet>
</drawing>