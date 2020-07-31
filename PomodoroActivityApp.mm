<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="PomodoroActivityApp" FOLDED="false" ID="ID_67790282" CREATED="1595379600367" MODIFIED="1595379624618" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle" zoom="2.0">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="3" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Functions" POSITION="right" ID="ID_108464794" CREATED="1595379625612" MODIFIED="1595379935415">
<edge COLOR="#ff0000"/>
<node TEXT="Start" ID="ID_124000045" CREATED="1595379638997" MODIFIED="1595379941299"/>
<node TEXT="Load LogFile" ID="ID_1808835714" CREATED="1595380896619" MODIFIED="1595380905126"/>
<node TEXT="CRUD" ID="ID_1546438273" CREATED="1595379705818" MODIFIED="1595380016904">
<node TEXT="Subject" ID="ID_1194927394" CREATED="1595379944241" MODIFIED="1595380020925"/>
<node TEXT="Activity" ID="ID_1992016292" CREATED="1595379947683" MODIFIED="1595380023814"/>
<node TEXT="LogIntervals" ID="ID_292657799" CREATED="1595382247682" MODIFIED="1595382250556"/>
</node>
<node TEXT="Select Current Subject-Activity" ID="ID_27495110" CREATED="1595382215000" MODIFIED="1595382228094"/>
<node TEXT="Log" ID="ID_720627111" CREATED="1595379978713" MODIFIED="1595379979967">
<node TEXT="Manual" ID="ID_958591249" CREATED="1595380002477" MODIFIED="1595380003889"/>
<node TEXT="Auto" ID="ID_1739618536" CREATED="1595380005693" MODIFIED="1595380007317"/>
</node>
<node TEXT="Notify" ID="ID_896101872" CREATED="1595380193397" MODIFIED="1595380199166">
<node TEXT="Log" ID="ID_1264980120" CREATED="1595380200524" MODIFIED="1595380201553"/>
<node TEXT="Break" ID="ID_1597642704" CREATED="1595380202907" MODIFIED="1595380209031">
<node TEXT="Start" ID="ID_396213861" CREATED="1595380210152" MODIFIED="1595380212328"/>
<node TEXT="End" ID="ID_1182578723" CREATED="1595380213606" MODIFIED="1595380214530"/>
</node>
</node>
<node TEXT="Pause?" ID="ID_1905086138" CREATED="1595381669832" MODIFIED="1595381672324"/>
<node TEXT="Stop" ID="ID_175199146" CREATED="1595380879392" MODIFIED="1595380883899"/>
<node TEXT="Save" ID="ID_1395635389" CREATED="1595380887327" MODIFIED="1595380892613"/>
</node>
<node TEXT="dataStructure" POSITION="right" ID="ID_721498017" CREATED="1595379713624" MODIFIED="1595379719489">
<edge COLOR="#0000ff"/>
<node TEXT="Subject" ID="ID_1129785795" CREATED="1595379721552" MODIFIED="1595379739207"/>
<node TEXT="Activity" ID="ID_1295799291" CREATED="1595379740956" MODIFIED="1595379743562"/>
<node TEXT="TimeStamp" ID="ID_1168622111" CREATED="1595379808082" MODIFIED="1595379820164">
<node TEXT="Init" ID="ID_326591388" CREATED="1595381601803" MODIFIED="1595381603683"/>
<node TEXT="End" ID="ID_720923121" CREATED="1595381609448" MODIFIED="1595381611357"/>
</node>
<node TEXT="LogInterval" ID="ID_1348783864" CREATED="1595379822606" MODIFIED="1595379826284">
<node TEXT="Active" ID="ID_636958992" CREATED="1595380926296" MODIFIED="1595380927938"/>
<node TEXT="Break" ID="ID_1961295844" CREATED="1595380929692" MODIFIED="1595380931228"/>
</node>
</node>
<node TEXT="Example Row" POSITION="right" ID="ID_1638858324" CREATED="1595382294316" MODIFIED="1595382320331">
<edge COLOR="#00ff00"/>
<node TEXT="Timestamp, Subject, Activity, Init/Finish" ID="ID_572267850" CREATED="1595382300167" MODIFIED="1595382354731"/>
</node>
</node>
</map>
