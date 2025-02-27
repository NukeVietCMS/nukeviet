<!-- BEGIN: main -->
<!-- BEGIN: viewdescription -->
<div class="news_column">
    <div class="alert alert-info clearfix">
        <h3>{CONTENT.title}</h3>
        <!-- BEGIN: image -->
        <img alt="{CONTENT.title}" src="{HOMEIMG1}" width="{IMGWIDTH1}" class="img-thumbnail pull-left imghome" />
        <!-- END: image -->
        <p class="text-justify">{CONTENT.description}</p>
    </div>
</div>
<!-- END: viewdescription -->
<div class="news_column">
    <!-- BEGIN: catcontent -->
    <!-- BEGIN: content -->
    <div class="panel panel-default clearfix">
        <div class="panel-body">
            <!-- BEGIN: image -->
            <a href="{NEWSTOP.link}" title="{NEWSTOP.title}" {NEWSTOP.target_blank}><img alt="{HOMEIMGALT0}" src="{HOMEIMG0}" width="{IMGWIDTH0}" class="img-thumbnail pull-left imghome" /></a>
            <!-- END: image -->
            <h3>
                <a href="{NEWSTOP.link}" title="{NEWSTOP.title}" {NEWSTOP.target_blank}>{NEWSTOP.title}</a>
                <!-- BEGIN: newday -->
                <span class="icon_new">&nbsp;</span>
                <!-- END: newday -->
            </h3>
            <div class="text-muted">
                <ul class="list-unstyled list-inline">
                    <li><em class="fa fa-clock-o">&nbsp;</em> {NEWSTOP.publtime}</li>
                    <li><em class="fa fa-eye">&nbsp;</em> {LANG.view}: {NEWSTOP.hitstotal}</li>
                    <!-- BEGIN: comment -->
                    <li><em class="fa fa-comment-o">&nbsp;</em> {LANG.total_comment}: {NEWSTOP.hitscm}</li>
                    <!-- END: comment -->
                </ul>
            </div>
            <div class="text-justify">
                {NEWSTOP.hometext}
            </div>
            <!-- BEGIN: adminlink -->
            <p class="text-right">
                {ADMINLINK}
            </p>
            <!-- END: adminlink -->
        </div>
        <!-- END: content -->
        <ul class="related list-items">
            <!-- BEGIN: other -->
            <li class="col-xs-24 col-sm-12 col-md-12">
                <a class="catcontentloop" class="show h4" href="{NEWSTOP.link}" {NEWSTOP.target_blank} <!-- BEGIN: tooltip -->data-content="{NEWSTOP.hometext_clean}" data-img="{NEWSTOP.imghome}" data-placement="{TOOLTIP_POSITION}" data-rel="tooltip"<!-- END: tooltip --> title="{NEWSTOP.title}"> <em class="fa fa-angle-double-right">&nbsp;</em> {NEWSTOP.title}</a>
            </li>
            <!-- END: other -->
        </ul>
    </div>
    <!-- END: catcontent -->
</div>
<div class="row">
<!-- BEGIN: loopcat -->
<!-- BEGIN: block_topcat -->
<div class="block-top clear">
    {BLOCK_TOPCAT}
</div>
<!-- END: block_topcat -->
<div class="news_column two_column col-md-12">
    <div class="panel panel-default clearfix">
        <div class="panel-heading">
            <h4 class="cat-icon"><a title="{CAT.title}" href="{CAT.link}"><span>{CAT.title}</span></a></h4>
        </div>
        <div class="panel-body">
            <!-- BEGIN: content -->
            <h3 class="fl">
                <a href="{CONTENT.link}" title="{CONTENT.title}" {CONTENT.target_blank}>{CONTENT.title}</a>
                <!-- BEGIN: newday -->
                <span class="icon_new">&nbsp;</span>
                <!-- END: newday -->
            </h3>
            <div class="text-muted">
                <ul class="list-unstyled list-inline">
                    <li><em class="fa fa-clock-o">&nbsp;</em> {CONTENT.publtime}</li>
                    <li><em class="fa fa-eye">&nbsp;</em> {CONTENT.hitstotal}</li>
                    <!-- BEGIN: comment -->
                    <li><em class="fa fa-comment-o">&nbsp;</em> {CONTENT.hitscm}</li>
                    <!-- END: comment -->
                </ul>
            </div>
            <!-- BEGIN: image -->
			
			
			<a title="{CONTENT.title}" href="{CONTENT.link}" {CONTENT.target_blank}>
					<div style="height:{IMGHEIGHT0}px; width:{IMGHEIGHT0}px; background-image: url({HOMEIMG01}); margin-top: 0;" class="baimgc fl p5 m05 textc">
					<img src="{HOMEIMG01}" alt="{HOMEIMGALT01}"   class="img-thumbnail" /></a>
					</div>
					
          
            <!-- END: image -->
            <p>{CONTENT.hometext}</p>
            <!-- BEGIN: adminlink -->
            <p class="text-right">
                {ADMINLINK}
            </p>
            <!-- END: adminlink -->
            <!-- END: content -->
            <ul class="related list-items w100">
                <!-- BEGIN: other -->
                <li class="{CLASS2} col-xs-24 col-sm-24 col-md-24 tinkhac ">
                   <div> <a class="show h4 catcontentloop" href="{CONTENT.link}" {CONTENT.target_blank} <!-- BEGIN: tooltip -->data-content="{CONTENT.hometext_clean}" data-img="{CONTENT.imghome}" data-rel="tooltip" data-placement="{TOOLTIP_POSITION}"<!-- END: tooltip --> title="{CONTENT.title}">
					<img alt="{CONTENT.hometext_clean}" src="{CONTENT.imghome}" width="{IMGWIDTH0}" class="img-thumbnail pull-left imghome" style="max-height: 30px;    width: auto;"/>
					{CONTENT.title}</a></div>
                </li>
                <!-- END: other -->
            </ul>
        </div>
    </div>
</div>
<!-- BEGIN: block_bottomcat -->
<div class="bottom-cat clear">
    {BLOCK_BOTTOMCAT}
</div>
<!-- END: block_bottomcat -->
<!-- END: loopcat -->
</div>
<div class="clear"></div>
<script type="text/javascript">
var cat2ColTimer;
$.scrollbarWidth=function(){var a,b,c;if(c===undefined){a=$('<div style="width:50px;height:50px;overflow:auto"><div/></div>').appendTo('body');b=a.children();c=b.innerWidth()-b.height(99).innerWidth();a.remove()}return c};
function fixColumnHeight(){
    var winW = $(document).width() + $.scrollbarWidth();
    if (winW < 992) {
        $('.two_column .panel-body').height('auto');
    } else {
        $.each($('.two_column .panel-body'), function(k,v) {
            if(k % 2 == 0) {
                $($('.two_column .panel-body')[k]).height('auto');
                $($('.two_column .panel-body')[k+1]).height('auto');
                var height1 = $($('.two_column .panel-body')[k]).height();
                var height2 = $($('.two_column .panel-body')[k+1]).height();
                var height = (height1 > height2 ? height1 : height2);
                $($('.two_column .panel-body')[k]).height(height);
                $($('.two_column .panel-body')[k+1]).height(height);
            }
        });
    }
}
$(window).on('load', function() {
    cat2ColTimer = setTimeout(function(){
       fixColumnHeight();
    }, 100)
});
$(function(){
    $(window).resize(function(){
        clearTimeout(cat2ColTimer)
        cat2ColTimer = setTimeout(function(){
           fixColumnHeight();
        }, 100)
    });
});
</script>
<!-- END: main -->
