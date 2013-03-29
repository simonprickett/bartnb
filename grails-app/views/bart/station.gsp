<%@ page contentType="text/xml;charset=UTF-8" %>
<page output-encoding="UTF-8" title="BART" paging="true">
  <meta name="format-detection" content="telephone=no"/>
  <external type="css" file="css/stylesheet.css"/>
  <styles>
  </styles>
  <event type="onload">
    <action name="hideToolbar"/>
  </event>
  <container>
    <column>
      <g:render template="/shared/header"/>
      <g:each in="${stations}" var="station">
        <g:if test="${station.abbr == params.station}">    
          <TEXT class="box_round_top">
            <headline>${station.name}</headline>
          </TEXT>
          <g:render template="/shared/systemStatus"/>
          <group class="box_round_mid">
          <TABBEDMENU stretch="true" class="tabmenu">
            <styles>
              <style name="font-size" value="large" />
              <style name="borders" value="left,right" />
              <style name="border-color" value="#DDDDDD" />
              <style name="active-bgcolor" value="#FFFFFF" />
              <style name="inactive-bgcolor" value="#DDDDDD" />
            </styles>
            <items>
              <g:if test="${params?.tab == 'info' }">
                <item>
              </g:if>
              <g:else>
                <item active="true">
              </g:else>
                <link href="departures?station=${params.station}">Departures</link>
              </item>
              <g:if test="${params?.tab == 'info' }">
                <item active="true">
              </g:if>
              <g:else>
                <item>
              </g:else>
                <link href="departures?station=${params.station}&tab=info">Station Info</link>
              </item>
            </items>
          </TABBEDMENU>
          <g:if test="${params?.tab == 'info'}">
            <g:render template="/shared/stationInfo"/>
          </g:if>
          <g:else>
            <g:render template="/shared/departures" model="[station:station]"/>
          </g:else>
          </group>
        </g:if>
      </g:each>
      <TEXT class="box_round_bottom">
        <event type="onclick">
          <action name="goToLink">
            <param name="link" value="home"/>
          </action>
        </event>
        <richtext>[url=home]Home...[/url]</richtext>
      </TEXT>
    </column>
  </container>
</page>
