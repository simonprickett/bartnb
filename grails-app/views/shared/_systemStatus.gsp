<TICKER id="systemStatus" class="box_round_mid">
  <settings>
    <visiblestaticitems>3</visiblestaticitems>
    <speed>normal</speed>
    <direction>left</direction>
    <increment>medium</increment>
  </settings>
  <itemseparator>|</itemseparator>
  <items>
    <item>${updatedTime.toString().replaceAll(" PDT", "").replaceAll(" PST", "")}</item>
    <item>${advisories.bsa[0].description}</item>
    <item>${trainsInService} trains operating.</item>
  </items>
</TICKER>