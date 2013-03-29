<g:each in="${station.etd}" var="etd">
  <TABLE>
    <event type="onclick">
      <action name="goToLink">
        <param name="link" value="departures?station=${etd.abbreviation}&tab=info"/>
      </action>
    </event>
    <styles>
      <style name="borders" value="left,right,bottom" />
      <style name="border-color" value="#DDDDDD" />
    </styles>
    <row>
      <cell width="90%" text-align="left">
    <richtext>
      [class='subheader'][url='departures?station=${etd.abbreviation}&tab=info']&amp;nbsp;${etd.destination}&amp;nbsp;[/url][/class]
      [ol]
        <g:each in="${etd.estimate}" var="train">
          <g:if test="${train.minutes.equals('Arrived')}">
            <g:set var="mins" value="Boarding"/>
          </g:if>
          <g:else>
            <g:set var="mins" value="${train.minutes} mins"/>
          </g:else>
          [li][icon='images/${train.color}.png']${train.color}[/icon] ${mins} platform ${train.platform} (${train.length} cars)[/li]
        </g:each>
      [/ol]
    </richtext>
      </cell>
      <cell width="10%" text-align="right">
        <img src="images/arrow.png" alt="&gt;"/>
      </cell>
    </row>
  </TABLE>
<!--
  <TEXT>
    <event type="onclick">
      <action name="goToLink">
        <param name="link" value="departures?station=${etd.abbreviation}&tab=info"/>
      </action>
    </event>
    <styles>
      <style name="borders" value="left,right,bottom" />
      <style name="border-color" value="#DDDDDD" />
    </styles>
    <richtext>
      [class='subheader'][url='departures?station=${etd.abbreviation}&tab=info']&amp;nbsp;${etd.destination}&amp;nbsp;[/url][/class]
      [ol]
        <g:each in="${etd.estimate}" var="train">
          <g:if test="${train.minutes.equals('Arrived')}">
            <g:set var="mins" value="Boarding"/>
          </g:if>
          <g:else>
            <g:set var="mins" value="${train.minutes} mins"/>
          </g:else>
          [li][icon='images/${train.color}.png']${train.color}[/icon] ${mins} platform ${train.platform} (${train.length} cars)[/li]
        </g:each>
      [/ol]
    </richtext>
  </TEXT> -->
</g:each>