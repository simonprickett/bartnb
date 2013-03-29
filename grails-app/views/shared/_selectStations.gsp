<FORM action="home" method="GET" name="tripSelect">
  <styles>
    <style name="margin-top" value="5px"/>
  </styles>
  <row>
    <cell align="left">
      <richtext>[b]Traveling From:[/b]</richtext>
    </cell>
  </row>
  <row>
    <cell align="left">
      <input type="select" name="fromStation">
        <g:each in="${stations.list().sort{ it.name.toString().toLowerCase() } }" var="station">
          <g:if test="${station.abbr == params.from}">
            <option value="${station.abbr}" selected="selected">${station.name}</option>
          </g:if>
          <g:else>
            <option value="${station.abbr}">${station.name}</option>
          </g:else>
        </g:each>
      </input>
    </cell>
  </row>
  <row>
    <cell><richtext>&amp;nbsp;</richtext></cell>
  </row>
  <row>
    <cell align="left">
      <richtext>[b]Headed To:[/b]</richtext>
    </cell>
  </row>
  <row>
    <cell align="left">
      <input type="select" name="toStation">
        <g:each in="${stations.list().sort{ it.name.toString().toLowerCase() } }" var="station">
          <g:if test="${station.abbr == params.to}">
            <option value="${station.abbr}" selected="selected">${station.name}</option>
          </g:if>
          <g:else>
            <option value="${station.abbr}">${station.name}</option>
          </g:else>
        </g:each>
      </input>
    </cell>
  </row>
  <row>
    <cell align="left">
      <input type="hidden" name="tab" value="tickets"/>
    </cell>
  </row>
  <row>
    <cell><richtext>&amp;nbsp;</richtext></cell>
  </row>
  <row>
    <cell align="center">
      <input type="submit" value="Get Details"/>
    </cell>
  </row>
</FORM>