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
      <TEXT class="box_round_top">
        <headline>BART</headline>
      </TEXT>
      <g:render template="/shared/systemStatus"/>
      <group class="box_round_mid">
        <TABBEDMENU stretch="true" class="tabmenu">
          <styles>
            <style name="font-size" value="large" />
            <style name="borders" value="left,right" />
            <style name="border-color" value="#DDDDDD" />
            <style name="active-bgcolor" value="#FFFFFF" />
            <style name="inactive-bgcolor" value="#CCCCCC" />
          </styles>
          <items>
            <g:if test="${params.tab}">
              <item>
            </g:if>
            <g:else>
              <item active="true">
            </g:else>
              <link href="home">Departures</link>
            </item>
            <g:if test="${params?.tab == 'tickets' }">
              <item active="true">
            </g:if>
            <g:else>
              <item>
            </g:else>
              <link href="home?tab=tickets">Tickets</link>
            </item>
            <g:if test="${params?.tab == 'news' }">
              <item active="true">
            </g:if>
            <g:else>
              <item>
            </g:else>
                <link href="home?tab=news">News</link>
              </item>
          </items>
        </TABBEDMENU>
        <g:if test="${params?.tab == 'tickets'}">
          <g:if test="${params?.fromStation != null}">
            <g:render template="/shared/ticketInfo" />
          </g:if>
          <g:else>
              <g:render template="/shared/selectStations" />
          </g:else>
        </g:if>
        <g:if test="${params?.tab == 'news'}">
          <g:render template="/shared/news" />
        </g:if>
        <g:if test="${!params.tab}">
          <g:render template="/shared/selectStation" />
        </g:if>
      </group>
      <TEXT class="box_round_bottom">
        <g:if test="${params?.tab == 'tickets'}">
          <event type="onclick">
            <action name="goToLink">
              <param name="link" value="home?tab=tickets"/>
            </action>
          </event>
          <richtext>[url=home?tab=tickets]Start over...[/url]</richtext>
        </g:if>
        <g:else>
          <richtext>&amp;nbsp;</richtext>
        </g:else>
      </TEXT>
    </column>
  </container>
</page>