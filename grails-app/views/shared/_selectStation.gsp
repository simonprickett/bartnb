<g:each in="${stations.list().sort{ it.name.toString().toLowerCase() } }" var="station">
<!--
  <TEXT>
    <styles>
      <style name="borders" value="left,right,bottom" />
      <style name="border-color" value="#DDDDDD" />
    </styles>
    <richtext>[class='textlistitem'][url='departures?station=${station.abbr}']${station.name}[/url][/class]</richtext>
  </TEXT>
-->
<TABLE>
  <event type="onclick">
    <action name="goToLink">
      <param name="link" value="departures?station=${station.abbr}"/>
    </action>
  </event>
  <styles>
    <style name="borders" value="left,right.bottom" />
    <style name="border-color" value="#DDDDDD" />
  </styles>
  <row>
    <cell text-align="left" width="90%">
      <richtext>[class='textlistitem'][url='departures?station=${station.abbr}']${station.name}[/url][/class]</richtext>
    </cell>
    <cell text-align="right" width="10%">
      <img src="images/arrow.png" alt="&gt;"/>
    </cell>
  </row>
</TABLE>
</g:each>