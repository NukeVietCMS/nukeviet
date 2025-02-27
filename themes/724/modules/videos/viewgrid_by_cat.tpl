<!-- BEGIN: main -->
<!-- BEGIN: listcat -->
<div class="news_column">
	<div class="panel panel-default clearfix">
		<div class="panel-heading videosviewgrid">
			<ul class="list-inline sub-list-icon" style="margin: 0">
				<li id="title"><h4 class="title texts chuhoa"><a title="{CAT.title}" href="{CAT.link}"><span>{CAT.title}</span></a></h4></li>
				<!-- BEGIN: subcatloop -->
				<li class="hidden-xs"><h4><a class="dimgray" title="{SUBCAT.title}" href="{SUBCAT.link}">{SUBCAT.title}</a></h4></li>
				<!-- END: subcatloop -->
				<!-- BEGIN: subcatmore -->
				<li class="pull-right hidden-xs"><h4><a class="dimgray" title="{MORE.title}" href="{MORE.link}"><em class="fa fa-sign-out"></em></a></h4></li>
				<!-- END: subcatmore -->
			</ul>
		</div>
		<div class="panel-body">
			<div class="row">
				<!-- BEGIN: loop -->
				<div class="col-md-{PER_LINE} col-lg-{PER_LINE} col-sm-12 col-xs-12 videos_list">
                <div class="videos row">
					<!-- BEGIN: image -->
					<div class="videos-home-thumbnail pull-left col-md-24 col-lg-24 col-xs-24">
						<a class="clearfix" title="{CONTENT.title}" href="{CONTENT.link}">
                       <div style="height: {IMGHEIGHT}px;  background-image: url({HOMEIMG}); " class="item-image baimgc textc vdplay">
                 <i class="fa fa-play-circle"></i>  <span class="dlb">   {CONTENT.title_cut}</span> </div>
							<!-- <img src="{HOMEIMG}" alt="{HOMEIMGALT}" class="imghome img-responsive" width="{IMGWIDTH}" height="{IMGHEIGHT}"/> -->
						</a>
					</div>
					<!-- END: image -->
					<div class="videos-home-info pull-left col-md-24 col-lg-24 col-xs-24">
						<h3 class="clearfix videotitle">
							<a title="{CONTENT.title}" href="{CONTENT.link}">{CONTENT.title_cut}</a>
						</h3>
						<div class="text-muted">
							<ul class="list-unstyled">
								<li class="textc">{LANG.by}: <a href="{CONTENT.uploader_link}" title="{CONTENT.uploader_name}">{CONTENT.uploader_name}</a></li>
								<li class="pull-left">{CONTENT.publtime}</li>
								<!-- BEGIN: hitstotal -->
								<!-- <li class="spacer pull-left"></li> -->
								<li class="pull-right">{CONTENT.hitstotal}  {LANG.hits_view}</li>
								<!-- END: hitstotal -->
							</ul>
						</div>
					</div>
                    </div>
				</div>
			<!-- END: loop -->
			</div>
		</div>
	</div>
</div>
<!-- END: listcat -->
<!-- END: main -->