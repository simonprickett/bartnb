<%
    def stationNameLookupService = grailsApplication.classLoader.loadClass('com.netbiscuits.bart.services.StationNameLookupService').newInstance()
%>
<g:if test="${params.fromStation == params.toStation}">
  <TEXT>
    <richtext>Please try again. From and to stations must not be the same!</richtext>
  </TEXT>
  <g:render template="/shared/selectStations"/>
</g:if>
<g:else>
  <TEXT>
    <richtext>${fromStationName} to ${toStationName}:</richtext>
  </TEXT>
  <TEXT>
    <styles>
      <style name="text-align" value="center" />
      <style name="font-size" value="large" />
    </styles>
    <richtext>One way ticket [b]&#36;${fareDetails.schedule.request.trip.@fare}[/b].</richtext>
  </TEXT>
  <TEXT>
    <richtext>
      [ul]
        <g:each in="${fareDetails.schedule.request.trip.leg}" var="leg">
          [li]At ${stationNameLookupService.lookupStationName(leg.@origin.toString())} board train to ${stationNameLookupService.lookupStationName(leg.@trainHeadStation.toString())} <g:if test="${leg.@transfercode == ''}">alight</g:if><g:else>change</g:else> at ${stationNameLookupService.lookupStationName(leg.@destination.toString())}.[/li]
        </g:each>
      [/ul]
      [br]
    </richtext>
  </TEXT>
  <TABLE>
    <event type="onclick">
      <action name="goToLink">
        <param name="link" value="departures?station=${params.fromStation}&amp;tab=info"/>
      </action>
    </event>
    <styles>
      <style name="borders" value="all" />
      <style name="border-color" value="#DDDDDD" />
    </styles>
    <row>
      <cell text-align="left" width="90%">
        <richtext>[class='textlistitem'][url='departures?station=${params.fromStation}&amp;tab=info']${fromStationName} Info[/url][/class]</richtext>
      </cell>
      <cell text-align="right" width="10%">
        <img src="images/arrow.png" alt="&gt;"/>
      </cell>
    </row>
  </TABLE>
  <!--
  <TEXT>
    <styles>
      <style name="borders" value="all" />
      <style name="border-color" value="#DDDDDD" />
    </styles>
    <richtext>[class='textlistitem'][url='departures?station=${params.fromStation}&amp;tab=info']${fromStationName} Info[/url][/class]</richtext>
  </TEXT>
  -->
    <TABLE>
    <event type="onclick">
      <action name="goToLink">
        <param name="link" value="departures?station=${params.toStation}&amp;tab=info"/>
      </action>
    </event>
    <styles>
      <style name="borders" value="all" />
      <style name="border-color" value="#DDDDDD" />
    </styles>
    <row>
      <cell text-align="left" width="90%">
        <richtext>[class='textlistitem'][url='departures?station=${params.toStation}&amp;tab=info']${toStationName} Info[/url][/class]</richtext>
      </cell>
      <cell text-align="right" width="10%">
        <img src="images/arrow.png" alt="&gt;"/>
      </cell>
    </row>
  </TABLE>
  <!--
  <TEXT>
    <styles>
      <style name="borders" value="left,right,bottom" />
      <style name="border-color" value="#DDDDDD" />
    </styles>
    <richtext>[class='textlistitem'][url='departures?station=${params.toStation}&amp;tab=info']${toStationName} Info[/url][/class]</richtext>
  </TEXT>
  -->
</g:else>
