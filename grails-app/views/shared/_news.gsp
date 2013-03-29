<%
    def dateFormattingService = grailsApplication.classLoader.loadClass('com.netbiscuits.bart.services.DateFormattingService').newInstance()
    def tweetFormattingService = grailsApplication.classLoader.loadClass('com.netbiscuits.bart.services.TweetFormattingService').newInstance()
%>
<g:each in="${news.status}" var="tweet">
  <TEXT>
    <styles>
      <style name="borders" value="left,right,bottom" />
      <style name="border-color" value="#DDDDDD" />
    </styles>
    <richtext>[i]${dateFormattingService.formatDate(tweet.created_at.toString())}:[/i][br]${tweetFormattingService.formatTweet(tweet.text.toString())}</richtext>
  </TEXT>
</g:each>
