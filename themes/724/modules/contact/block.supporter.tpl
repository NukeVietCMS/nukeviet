<!-- BEGIN: main -->

<div class='blocksupporter'>
<!-- BEGIN: loop -->


	<!-- BEGIN: image -->
	<div class="text-center m-bottom">
		<img src="{DEPARTMENT.image}" srcset="{DEPARTMENT.srcset}" class="img-thumbnail" alt="{DEPARTMENT.full_name}" />
	</div>
	<!-- END: image -->
	
	<div id="title">
<h3 class="title texts chuhoa" itemprop="headline">{DEPARTMENT.full_name}</h3>
</div>
<!-- 	<p class="text-center m-bottom">
		<strong class="text-uppercase text-danger">{DEPARTMENT.full_name}</strong>
	</p> -->
	<!-- BEGIN: supporter -->
	<div class='nvhotro khung p10'>
	<p class="text-center m-bottom">
		<strong>{SUPPORTER.full_name}</strong>
	</p>
	<ul class="contactList m-bottom">
		<!-- BEGIN: phone -->
		<li><em class="fa fa-phone"></em>&nbsp;<!-- BEGIN: item -->
			<!-- BEGIN: comma -->&nbsp; <!-- END: comma -->
			<!-- BEGIN: href -->
			<a title='Gọi ngay: {PHONE.number}'href="tel:{PHONE.href}">
				<!-- END: href -->{PHONE.number}<!-- BEGIN: href2 -->
		</a>
		<!-- END: href2 -->
			<!-- END: item --></li>
		<!-- END: phone -->
		
		<!-- BEGIN: zalo -->
		<li><i class="fas fa-headset"></i> <span class="zaloicon">Zalo</span>
					<span>&nbsp;<!-- BEGIN: item -->
			<!-- BEGIN: comma --> - <!-- END: comma -->
			<a title='Liên hệ qua Zalo: {ZALO.value}' target="_blank" href="https://zalo.me/{ZALO.value}?body=KG: BP {DEP.full_name} {SITE_NAME} ">{ZALO.value}</a>
		<!-- END: item --></li>
		<!-- END: zalo -->
		
		<!-- BEGIN: email -->
		<li><em class="fa fa-envelope"></em>&nbsp;<!-- BEGIN: item -->
			<!-- BEGIN: comma -->&nbsp; <!-- END: comma -->
			<a href="{DEPARTMENT.emailhref}">{EMAIL}</a>
		<!-- END: item --></li>
		<!-- END: email -->
		
		<!-- BEGIN: web -->
		<li><em class="fa fa-globe"></em>&nbsp;<!-- BEGIN: item -->
			<!-- BEGIN: comma --> - <!-- END: comma -->
			<a title='Xem web {WEB.value}' target="_blank" href="//{WEB.value}">{WEB.value}</a>
		<!-- END: item --></li>
		<!-- END: web -->
		<!-- BEGIN: bando -->
		<li><em class="fa fa-globe"></em>&nbsp;<!-- BEGIN: item -->
			<!-- BEGIN: comma --> - <!-- END: comma -->
			<a target="_blank" href="https://www.google.com/maps/search/{BANDO.value}">{BANDO.value}</a>
		<!-- END: item --></li>
		<!-- END: bando -->
		
		<!-- BEGIN: yahoo -->
		<li><em class="icon-yahoo"></em>&nbsp;<!-- BEGIN: item -->
			<!-- BEGIN: comma -->&nbsp; <!-- END: comma -->
			<a href="ymsgr:SendIM?{YAHOO.value}" title="{YAHOO.name}">{YAHOO.value}</a>
		<!-- END: item --></li>
		<!-- END: yahoo -->
		<!-- BEGIN: skype -->
		<li><em class="fa fa-skype"></em>&nbsp;<!-- BEGIN: item -->
			<!-- BEGIN: comma -->&nbsp; <!-- END: comma -->
			<a href="skype:{SKYPE.value}?call" title="{SKYPE.name}">{SKYPE.value}</a>
		<!-- END: item --></li>
		<!-- END: skype -->
		<!-- BEGIN: viber -->
		<li><em class="icon-viber"></em>&nbsp;<!-- BEGIN: item -->
			<!-- BEGIN: comma -->&nbsp; <!-- END: comma -->
			<span title="{VIBER.name}">{VIBER.value}</span>
		<!-- END: item --></li>
		<!-- END: viber -->
		<!-- BEGIN: icq -->
		<li><em class="icon-icq"></em>&nbsp;<!-- BEGIN: item -->
			<!-- BEGIN: comma -->&nbsp; <!-- END: comma -->
			<a href="icq:message?uin={ICQ.value}" title="{ICQ.name}">{ICQ.value}</a>
		<!-- END: item --></li>
		<!-- END: icq -->
		<!-- BEGIN: whatsapp -->
		<li><em class="fa fa-whatsapp"></em>&nbsp;<!-- BEGIN: item -->
			<!-- BEGIN: comma -->&nbsp; <!-- END: comma -->
			<a data-android="intent://send/{WHATSAPP.value}#Intent;scheme=smsto;package=com.whatsapp;action=android.intent.action.SENDTO;end" title="{WHATSAPP.name}">{WHATSAPP.value}</a>
		<!-- END: item --></li>
		<!-- END: whatsapp -->
		<!-- BEGIN: other -->
		<li>{OTHER.name}:&nbsp; {OTHER.value}</li>
		<!-- END: other -->
	</ul></div><br/>
	<!-- END: supporter -->
 
<!-- END: loop -->
</div>
<!-- END: main -->