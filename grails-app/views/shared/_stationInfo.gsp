<MAP>
  <styles>
    <style name="text-align" value="center" />
    <style name="padding-top" value="3px" />
  </styles>
  <mapparams provider="google">
    <longitude>${stationDetails.stations.station.gtfs_longitude}</longitude>
    <latitude>${stationDetails.stations.station.gtfs_latitude}</latitude>
    <zoom>15</zoom>
    <key>ABQIAAAASDwvcSMc3Jw4Id8J7gRwahTMYeFj5huilGQKOtkvorAu2VX0QBQTMBUJOxYJc7cbS42Azj477vt4oA</key>
    <maptype>mobile</maptype>
    <width>90</width>
  </mapparams>
</MAP>
<TEXT>
  <richtext>${stationDetails.stations.station.address}[br]${stationDetails.stations.station.city} ${stationDetails.stations.station.state}, ${stationDetails.stations.station.zipcode}</richtext>
</TEXT>
<TEXT>
  <richtext>${stationDetails.stations.station.intro}</richtext>
</TEXT>
<TABLE>
  <event type="onclick">
    <action name="goToLink">
      <param name="link" value="home?tab=tickets&to=${params.station}"/>
    </action>
  </event>
  <styles>
    <style name="borders" value="all" />
    <style name="border-color" value="#DDDDDD" />
  </styles>
  <row>
    <cell text-align="left" width="90%">
        <richtext>[class='textlistitem'][url='home?tab=tickets&to=${params.station}']Tickets to this station[/url][/class]</richtext>
    </cell>
    <cell text-align="right" width="10%">
      <img src="images/arrow.png" alt="&gt;"/>
    </cell>
  </row>
</TABLE>
<!--
<TEXT>
  <event type="onclick">
    <action name="goToLink">
      <param name="link" value="home?tab=tickets&to=${params.station}"/>
    </action>
  </event>
  <styles>
    <style name="borders" value="all" />
    <style name="border-color" value="#DDDDDD" />
  </styles>
  <richtext>[class='textlistitem'][url='home?tab=tickets&to=${params.station}']Tickets to this station[/url][/class]</richtext>
</TEXT>
-->
<TABLE>
  <event type="onclick">
    <action name="goToLink">
      <param name="link" value="home?tab=tickets&from=${params.station}"/>
    </action>
  </event>
  <styles>
    <style name="borders" value="left,right,bottom" />
    <style name="border-color" value="#DDDDDD" />
  </styles>
  <row>
    <cell text-align="left" width="90%">
        <richtext>[class='textlistitem'][url='home?tab=tickets&from=${params.station}']Tickets from this station[/url][/class]</richtext>
    </cell>
    <cell text-align="right" width="10%">
      <img src="images/arrow.png" alt="&gt;"/>
    </cell>
  </row>
</TABLE>
<!--
<TEXT>
  <event type="onclick">
    <action name="goToLink">
      <param name="link" value="home?tab=tickets&from=${params.station}"/>
    </action>
  </event>
  <styles>
    <style name="borders" value="left,right,bottom" />
    <style name="border-color" value="#DDDDDD" />
  </styles>
  <richtext>[class='textlistitem'][url='home?tab=tickets&from=${params.station}']Tickets from this station[/url][/class]</richtext>
</TEXT>
-->
<TEXT>
  <headline>FourSquare Tips:</headline>
</TEXT>
<g:set var="tipCount" value="${0}" />
<g:each in="${stationTips.response.tips.items}" var="tip">
  <g:if test="${tipCount < 3}">
    <TEASER>
      <styles>
        <style name="borders" value="top" />
        <style name="border-color" value="#DDDDDD" />
      </styles>
      <img src="${tip.user.photo}" alt="Photo" width="20%" />
      <richtext align="column-right">${tip.text} [i]- ${tip.user.firstName} ${tip.user.lastName} (${tip.user.homeCity})[/i]</richtext>
    </TEASER>
  </g:if>
  <% tipCount++; %>
</g:each> 