<!-- BEGIN: main --> 

<div id="contact" class="page">
    <!-- BEGIN: bodytext -->
    <div class="well">
    {CONTENT.bodytext}
    </div>
    <!-- END: bodytext -->
    <div class="row">
        <div class="col-sm-10 col-md-14">
            <!-- BEGIN: dep -->
           <div class="wow bounce">
<div class="title"><h2 class="bophan">{DEP.full_name}</h2></div> 
                <div class="panel-body p5 contactmain">
                    <!-- BEGIN: note -->
                    <div class="margin-bottom">{DEP.note}</div>
                    <!-- END: note -->
					<div class="contact">
                    <!-- BEGIN: address -->
                    <p class="col-md-24"><em class="fa fa-map-marker margin-right"></em>{LANG.address}:
                        <span>{DEP.address}</span>
                    </p>
                    <!-- END: address -->
					
                    <!-- BEGIN: phone -->
                    <p class="col-md-24"><em class="fa fa-volume-control-phone margin-right"></em>{LANG.phone}:
                        <span><!-- BEGIN: item --> <!-- BEGIN: comma --> <!-- END: comma --><!-- BEGIN: href --><a title="Click gọi ngay {PHONE.number}" href="tel:{PHONE.href}" ><!-- END: href -->{PHONE.number}<!-- BEGIN: href2 --></a><!-- END: href2 --> <!-- END: item --></span> 
                     
                    <!-- END: phone -->
					
					
                    <!-- BEGIN: sms --> 
    				&nbsp; &nbsp; <em class="fa fa-commenting margin-right"></em>SMS:
    					<span><!-- BEGIN: item --><!-- BEGIN: comma --> <i class="fa fa-random " aria-hidden="true"></i> <!-- END: comma --><a href="sms:{SMS.value}?body=KG: BP {DEP.full_name} {SITE_NAME} {SELFURL} ">{SMS.value}</a><!-- END: item --></span>
    				</p>
    				<!-- END: sms -->
					
                    <!-- BEGIN: fax -->
                    <p class="col-md-12"><em class="fa fa-fax fa-horizon margin-right"></em>{LANG.fax}:
                        <span>{DEP.fax}</span>
                    </p>
                    <!-- END: fax -->
                    <!-- BEGIN: email -->
    				<p class="col-md-12"><em class="fa fa-envelope fa-horizon margin-right"></em>{LANG.email}:
   					    <span><!-- BEGIN: item --><!-- BEGIN: comma -->  <i class="fa fa-random " aria-hidden="true">  <!-- END: comma --><a href="mailto:{EMAIL}">{EMAIL}</a><!-- END: item --></span>
                    </p>
    				<!-- END: email -->
					 
                    <!-- BEGIN: zalo -->
    				<p class="col-md-12"><i class="fas fa-headset"></i> <span class="zaloicon">Zalo</span>
					<span><!-- BEGIN: item --><!-- BEGIN: comma --> <i class="fa fa-random " aria-hidden="true"> </i> <!-- END: comma --><a target="_blank"  href="https://zalo.me/{ZALO.value}?body=KG: BP {DEP.full_name} {SITE_NAME} ">{ZALO.value}</a><!-- END: item --></span> 
    				</p>
    				<!-- END: zalo -->
					
					<!-- BEGIN: line -->
    				<p class="col-md-12"><em class="fa fa-phone-square margin-right line"></em>{LINE.name}:
    					<span><!-- BEGIN: item --><!-- BEGIN: comma -->  <i class="fa fa-random " aria-hidden="true">  <!-- END: comma -->{LINE.value}<!-- END: item --></span>
    				</p>
    				<!-- END: line -->
					
					
                    <!-- BEGIN: yahoo -->
    				<p class="col-md-12"><em class="icon-yahoo fa-horizon margin-right"></em>{YAHOO.name}:
    					<span><!-- BEGIN: item --><!-- BEGIN: comma -->  <i class="fa fa-random " aria-hidden="true">  <!-- END: comma --><a href="ymsgr:SendIM?{YAHOO.value}">{YAHOO.value}</a><!-- END: item --></span>
    				</p>
    				<!-- END: yahoo -->
                    <!-- BEGIN: skype -->
    				<p class="col-md-12"><em class="fa fa-skype fa-horizon margin-right"></em>{SKYPE.name}:
    					<span><!-- BEGIN: item --><!-- BEGIN: comma -->  <i class="fa fa-random " aria-hidden="true">  <!-- END: comma --><a href="skype:{SKYPE.value}?call">{SKYPE.value}</a><!-- END: item --></span>
    				</p>
    				<!-- END: skype -->
                    <!-- BEGIN: viber -->
    				<p class="col-md-12"><em class="icon-viber fa-horizon margin-right"></em> {VIBER.name}:
    					<span><!-- BEGIN: item --><!-- BEGIN: comma -->  <i class="fa fa-random " aria-hidden="true">  <!-- END: comma -->{VIBER.value}<!-- END: item --></span>
    				</p>
    				<!-- END: viber -->
					<!-- BEGIN: bando -->  
    				<p class="col-md-12"><em class="fa fa-compass   margin-right"></em>Bản đồ:
    					<span> 
						<!-- BEGIN: item --><!-- BEGIN: comma --> <i class="fa fa-random " aria-hidden="true"></i> <!-- END: comma -->
						<a target="_blank" href="https://www.google.com/maps/search/{BANDO.value}" class="black">Xem bản đồ</a><!-- END: item -->
					
						 </span>
    				</p> 
    				<!-- END: bando -->
					<!-- BEGIN: web --> 
    				<p class="col-md-24"><em class="fa fa-globe   margin-right"></em>URL:
    					<span> 
						<!-- BEGIN: item --><!-- BEGIN: comma --> <i class="fa fa-random " aria-hidden="true"></i> <!-- END: comma -->
						<a target="_blank" href="//{WEB.value}" class="black">{WEB.value}</a><!-- END: item -->
					
						 </span>
    				</p>
    				<!-- END: web -->
                    <!-- BEGIN: icq -->
    				<p class="col-md-12"><em class="icon-icq fa-horizon margin-right"></em> {ICQ.name}:
    					<span><!-- BEGIN: item --><!-- BEGIN: comma --> <!-- END: comma --><a href="icq:message?uin={ICQ.value}">{ICQ.value}</a><!-- END: item --></span>
    				</p>
    				<!-- END: icq -->
                    <!-- BEGIN: whatsapp -->
    				<p class="col-md-12"><em class="fa fa-whatsapp fa-horizon margin-right"></em> {WHATSAPP.name}:
    					<span><!-- BEGIN: item --><!-- BEGIN: comma --> <!-- END: comma --><a data-android="intent://send/{WHATSAPP.value}#Intent;scheme=smsto;package=com.whatsapp;action=android.intent.action.SENDTO;end">{WHATSAPP.value}</a><!-- END: item --></span>
    				</p>
    				<!-- END: whatsapp -->
					                    
					 
                    <!-- BEGIN: other -->
    				<p class="col-md-12">
    					<span>{OTHER.name}: </span>
    					<span>{OTHER.value}</span>
    				</p>
    				<!-- END: other -->
					</div>
					<div class="bando">[BANDO-CONTACT]</div>
                </div>
            </div>
            <!-- END: dep -->
        </div>
         <div class="col-sm-14 col-md-10">
            <div class="panel panel-primary wow lightSpeedIn">
			<div class="title" ><h2>{GLANG.feedback}</h2></div> 
                 
                <div class="panel-body loadContactForm">
                    {FORM}
                </div>
				
            </div>
        </div>
    </div>
</div>
<!-- END: main -->