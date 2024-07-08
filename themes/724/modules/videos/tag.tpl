<!-- BEGIN: main -->
<!-- BEGIN: description -->
<div class="news_column">
	<div class="alert alert-info clearfix">
		<h3 class="textc chuhoa"> {TITLE}</h3>
		<!-- BEGIN: image -->
		<img alt="{TITLE}" src="{HOMEIMG1}" width="{IMGWIDTH1}" class="img-thumbnail pull-left imghome" />
		<!-- END: image -->
		<p class="text-justify">{DESCRIPTION}</p>
	</div>
</div>
<!-- END: description -->
<!-- BEGIN: topic -->
<div class="clearfix col-xs-12 col-sm-12 col-md-8">
	<div class="panel-body videos" style="margin-bottom: 15px;padding: 2px;"><a href="{TOPIC.link}" title="{TOPIC.title}">
		<!-- BEGIN: homethumb -->
        <div alt="{TOPIC.alt}" style="height: 150px; {TOPIC.width} ; background-image: url({TOPIC.src}); " class="item-image baimgc textc vdplay">
                 <i class="fas fa-play-circle textdm nen4m"></i>  </div>
		<!-- END: homethumb -->
 <div class="videotitle videos-thumbnail " style="height: 46px;"> <i class=" fas fa-play-circle"></i> {TOPIC.title_cut} </div></a> 
 
			<!-- BEGIN: uploader_name -->
			<p>{LANG.content_uploaded_by}&nbsp;<a href="{TOPIC.uploader_link}" title="{TOPIC.uploader_name}">{TOPIC.uploader_name}</a></p>
			<!-- END: uploader_name -->
			<p>
				<span class="pull-left">{TIME}</span>
				<!-- BEGIN: hitstotal -->
				<span class="spacer pull-left"></span>
				<span>{TOPIC.hitstotal}&nbsp;{LANG.hits_view}</span>
				<!-- END: hitstotal -->
			</p>
			
			<!-- BEGIN: adminlink -->
			<p class="text-right">
				{ADMINLINK}
			</p>
			<!-- END: adminlink -->
 
	</div>
</div>
<!-- END: topic -->
<!-- BEGIN: generate_page -->
<div class="text-center">
	{GENERATE_PAGE}
</div>
<!-- END: generate_page -->
<!-- END: main -->