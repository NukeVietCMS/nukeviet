<!-- BEGIN: main -->
<!-- BEGIN: listcat -->
<div class="news_column">
    <div class="panel panel-default clearfix">
        <div class="panel-heading">
            <!-- BEGIN: subcatmore -->
            <a class="dimgray pull-right hidden-xs" title="{MORE.title}" href="{MORE.link}"><em class="fa fa-sign-out">&nbsp;</em></a>
            <!-- END: subcatmore -->
            <ul class="list-inline sub-list-icon" style="margin: 0">
                <li><h4><a title="{CAT.title}" href="{CAT.link}"><span>{CAT.title}</span></a></h4></li>
                <!-- BEGIN: subcatloop -->
                <li class="hidden-xs"><h4><a class="dimgray" title="{SUBCAT.title}" href="{SUBCAT.link}">{SUBCAT.title}</a></h4></li>
                <!-- END: subcatloop -->
            </ul>
        </div>
        <!-- BEGIN: block_topcat -->
        <div class="block-top clear">
            {BLOCK_TOPCAT}
        </div>
        <!-- END: block_topcat -->
        <div class="panel-body">
		<div style=" height:{IMGHEIGHT}px">
            <!-- BEGIN: image -->
            <a href="{CONTENT.link}" title="{CONTENT.title}" {CONTENT.target_blank}><img alt="{HOMEIMGALT}" src="{HOMEIMG}" width="{IMGWIDTH}" height="{IMGHEIGHT}px" class="img-thumbnail pull-left imghome" /></a>
            <!-- END: image -->
            <h2>
                <a href="{CONTENT.link}" title="{CONTENT.title}" {CONTENT.target_blank}>{CONTENT.title}</a>
                <!-- BEGIN: newday -->
                <span class="icon_new">&nbsp;</span>
                <!-- END: newday -->
            </h2>
            <div class="text-muted">
                <ul class="list-unstyled list-inline">
                    <li><em class="fa fa-clock-o">&nbsp;</em> {CONTENT.publtime}</li>
                    <li><em class="fa fa-eye">&nbsp;</em> {LANG.view}: {CONTENT.hitstotal}</li>
                    <!-- BEGIN: comment -->
                    <li><em class="fa fa-comment-o">&nbsp;</em> {LANG.total_comment}: {CONTENT.hitscm}</li>
                    <!-- END: comment -->
                </ul>
            </div>
           <h5 class="hometextviewcat"> {CONTENT.hometext} </h5>
            <!-- BEGIN: adminlink -->
            <p class="text-right">
                {ADMINLINK}
            </p>
            <!-- END: adminlink -->
 </div><div class="clear">&nbsp;</div>
            <!-- BEGIN: related -->
            <ul class="related list-items w100">
                <!-- BEGIN: loop -->
              <li class="{CLASS2} col-xs-12 col-sm-8 col-md-6 tinkhac ">
                   <div class="relatedlink"> <h3><a class="show h4" href="{OTHER.link}" {OTHER.target_blank} <!-- BEGIN: tooltip -->data-content="{OTHER.hometext_clean}" data-img="{OTHER.imghome}" data-rel="tooltip" data-placement="{TOOLTIP_POSITION}"<!-- END: tooltip --> title="{OTHER.title}">
					<img alt="{CONTENT.hometext_clean}" src="{OTHER.imghome}" width="{IMGWIDTH0}" class="img-thumbnail pull-left imghome" style="max-height: 40px;    width: auto;"/>
					{OTHER.title}</a></h3></div>
 
						</li>
 
                </li>
                <!-- END: loop -->
            </ul>
            <!-- END: related -->
        </div>
    </div>
    <!-- BEGIN: block_bottomcat -->
    <div class="bottom-cat clear">
        {BLOCK_BOTTOMCAT}
    </div>
    <!-- END: block_bottomcat -->
</div>
<!-- END: listcat -->
<!-- END: main -->
