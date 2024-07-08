<!-- BEGIN: main -->
<div id="fb-root"></div>
<script>(function(d, s, id) {
var js, fjs = d.getElementsByTagName(s)[0];
if (d.getElementById(id)) return;
js = d.createElement(s); js.id = id;
js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.5";
fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<style>
#cfacebook {
    position: fixed;
    bottom: 0;
    right: 33px;
    z-index: 5;
    width: auto;
    height: auto;
    overflow: hidden;
}
    #cfacebook:hover{
        position: fixed; 
        bottom: 0px;
        right: 8px;
        z-index: 999999999999999;
        width: 250px; height: auto;
        box-shadow: 6px 6px 6px 10px rgba(0,0,0,0.2);
        border-top-left-radius: 5px;
        border-top-right-radius: 5px;
        overflow: hidden;
    }
    #cfacebook .fchat{float: left; width: 100%; height: 295px; overflow: hidden; display: none !important; background-color: #fff;}
	
    #cfacebook:hover .fchat{display: block !important;}
    #cfacebook .fchat .chat-single{float: left; line-height: 25px; line-height: 25px; color: #333; width: 100%;}
    #cfacebook .fchat .chat-single a{float: right; text-decoration: none; margin-right: 10px; color: #888; font-size: 12px;}
    #cfacebook .fchat .chat-single a:hover{color: #222;}
 
    #cfacebook .fchat .fb-page{margin-top: -130px; float: left;}
#cfacebook a.chat_fb {
    float: left;
    padding: 0 5px;
    color: #4080ff;
    text-decoration: none;
    height: 29px;
    line-height: 29px;
    text-shadow: 0 2px 0 #fff;
    background-repeat: repeat-x;
    background-size: auto;
    background-position: 0 0;
    background-color: #fff;
    border: 1px solid #ffffff;
    z-index: 9999999;
    margin-right: 12px;
    width: 30px;
    border-radius: 50%;
    font-size: 18px;
}
    #cfacebook:hover a.chat_fb{
        float: left;
        padding: 0 25px;
        width: 250px;
        color: #fff;
        text-decoration: none;
        height: 30px;
        line-height: 30px;
        text-shadow: 0 1px 0 rgba(0, 0, 0, 0.1);        
        border-radius: 0;
         background-repeat: repeat-x;
        background-size: auto;
        background-position: 0 0;
        background-color: #0065BF;
        border: 0;
        border-bottom: 1px solid #0065BF;
        z-index: 9999999;
        margin-right: 12px; font-size: 18px;}
   #cfacebook a.chat_fb:hover{color: yellow; text-decoration: none;}
   
@media (min-width: 1080px) { 
   #cfacebook {
    position: fixed;
    bottom: 30px;
    right: 0px;
    z-index: 9;
    width: auto;
    height: auto;
    overflow: hidden;
}
}
   @media (max-width: 767px) { 
#cfacebook {
    bottom: 40px;
    height: auto;
    box-shadow: 0px 0px 0px 0px rgba(0,0,0,0.2);
    border-radius: 50%;
    z-index: 100;
    width: 50px;
}
#cfacebook a.chat_fb {
    float: left;
    padding: 0 10px;
    width: 100%;
    color: #00a703;
    text-decoration: none;
    height: 30px;
    line-height: 30px;
    text-shadow: 0 1px 0 #ffffff;
    background-repeat: repeat-x;
    background-size: auto;
    background-position: 0 0;
    background-color: rgba(255, 255, 255, 0);
    border: 0;
    border-bottom: 0px solid rgb(0, 167, 3);
    z-index: 50;
    margin-right: 12px;
    font-size: 20px;
}
#cfacebook:hover {border-radius: 0;
width: 250px; height: auto;
}

}
@media (max-width: 499px) { 
#cfacebook {    right: 0;
    text-align: center;
    width: 30px;
}
#cfacebook a.chat_fb {padding: 0;}
#cfacebook:hover {
    bottom: 0px;
    padding-bottom: 5px;
    background: #4267b2;
    z-index: 88801;
}
 #cfacebook .fchat { 
    max-height: 250px;}
}

</style>
<script>
    function fchat()
    {
            var tchat= document.getElementById("tchat").value;
            if(tchat==0 || tchat=='0')
            {                
                document.getElementById("fchat").style.display = "block";
                document.getElementById("tchat").value=1;
            }else{
                document.getElementById("fchat").style.display = "none";
                document.getElementById("tchat").value=0;
            }             
    }
    setTimeout(function() {document.getElementById("fchat").style.display = "block";}, 6000);
</script>
 
<div id="cfacebook">
    <a href="javascript:;" class="chat_fb" onclick="javascript:fchat();"><i class="fa fa-comments"></i> Hỗ trợ trực tuyến</a>
    <div id="fchat" class="fchat">
        <div class="fb-page" data-tabs="messages" data-href="{FB_LINK}" data-width="250" data-height="400" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-posts="false"></div>
        <div class="chat-single"><a target="_blank" href="{FB_LINK}"><i class="fa fa-facebook-square"></i> {FB_TITLE}</a></div>
    </div>
    <input type="hidden" id="tchat" value="0"/>
</div>
<!-- END: main -->