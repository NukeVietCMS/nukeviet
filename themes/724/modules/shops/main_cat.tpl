<!-- BEGIN: main -->
<!-- BEGIN: loop -->
<div class="panel panel-default panel-shops-cat">
    <div class="  clearfix">
	<a   href="{LINK_CATALOG}" title="{TITLE_CATALOG} ({NUM_PRO} {LANG.title_products})" rel="dofollow">
	<div id="title"><span class="title1"></span><h2 class="title texts chuhoa" itemprop="headline">{TITLE_CATALOG} <span class="numpor">({NUM_PRO} {LANG.title_products})</span></h2><span class="title2"></span></div>
</a>
        <span class="pull-right more-cats">
            <!-- BEGIN: subcatloop --><a href="{SUBCAT.link}" title="{SUBCAT.title}" rel="dofollow">{SUBCAT.title}</a><!-- END: subcatloop -->
        </span>
    </div>
    <div class="panel-body">
        {CONTENT}
    </div>
</div>
<!-- END: loop -->
<!-- END: main -->
