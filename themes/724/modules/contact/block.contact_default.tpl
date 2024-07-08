<!-- BEGIN: main -->
<span class="visible-xs-inline-block"><a title="{LANG.contactUs}" class="pointer button" data-toggle="tip" data-target="#contactList" data-click="y"><em class="icon-old-phone icon-lg"></em><span class="hidden">{LANG.contactUs}</span></a></span>
<div id="contactList" class="content">
<h3 class="visible-xs-inline-block">{LANG.contactUs}</h3>
<ul class="contactList">
<!-- BEGIN: bando2 --><li class="bando"><em class="fa fa-map-marker"></em>&nbsp;<!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a target="_blank" href="https://www.google.com/maps/search/{BANDO.value}" title="Bản đồ đường đi đến {SITE_NAME}" >{SITE_NAME}</a><!-- END: item --></li><!-- END: bando2 -->
<!-- BEGIN: phone --><li class="phone"><em class="fa fa-phone"></em>&nbsp;<!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><!-- BEGIN: href --><a href="tel:{PHONE.href}"><!-- END: href -->{PHONE.number}<!-- BEGIN: href2 --></a><!-- END: href2 --><!-- END: item --></li><!-- END: phone -->
<!-- BEGIN: zalo1 --><li class="zalo"><em class="zaloicon">Zalo</em> <!-- BEGIN: item --><!-- BEGIN: comma --> - <!-- END: comma --><a class='hoadau' target="_blank" href="//zalo.me/{ZALO.value}" title="{SITE_NAME}" >{ZALO.value}</a><!-- END: item --></li><!-- END: zalo1 -->

<!-- BEGIN: email --><li class="email"><em class="fa fa-envelope"></em>&nbsp;<!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a href="{DEPARTMENT.emailhref}">{EMAIL}</a><!-- END: item --></li><!-- END: email -->
<!-- BEGIN: sms --><li class="phonesms"><em class="fa fa-commenting"></em>&nbsp;<!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a href="sms:{SMS.value}?body=KG {DEP.full_name} {SITE_NAME}" title="Click nhắn tin SMS">{SMS.value}</a><!-- END: item --></li><!-- END: sms -->
<!-- BEGIN: yahoo --><li class="yahoo"><em class="icon-yahoo"></em>&nbsp;<!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a href="ymsgr:SendIM?{YAHOO.value}" title="{YAHOO.name}">{YAHOO.value}</a><!-- END: item --></li><!-- END: yahoo -->
<!-- BEGIN: skype --><li class="skype"><em class="fa fa-skype"></em>&nbsp;<!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a href="skype:{SKYPE.value}?call" title="{SKYPE.name}">{SKYPE.value}</a><!-- END: item --></li><!-- END: skype -->
<!-- BEGIN: viber --><li class="viber"><em class="icon-viber"></em>&nbsp;<!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><span title="{VIBER.name}">{VIBER.value}</span><!-- END: item --></li><!-- END: viber -->
<!-- BEGIN: icq --><li class="icq"><em class="icon-icq"></em>&nbsp;<!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a href="icq:message?uin={ICQ.value}" title="{ICQ.name}">{ICQ.value}</a><!-- END: item --></li><!-- END: icq -->
<!-- BEGIN: web2 --><li class="web"><em class="fa fa-globe"></em>&nbsp;<!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a target="_blank" href="//{WEB.value}" title="{SITE_NAME}" >{WEB.value}</a><!-- END: item --></li><!-- END: web2 -->
<!-- BEGIN: whatsapp --><li class="whatsapp"><em class="fa fa-whatsapp"></em>&nbsp;<!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a data-android="intent://send/{WHATSAPP.value}#Intent;scheme=smsto;package=com.whatsapp;action=android.intent.action.SENDTO;end" title="{WHATSAPP.name}">{WHATSAPP.value}</a><!-- END: item --></li><!-- END: whatsapp -->
<!-- BEGIN: other2 --><li class="other">{OTHER.name}:&nbsp; {OTHER.value}</li><!-- END: other2 -->
</ul>
</div>
<!-- END: main -->