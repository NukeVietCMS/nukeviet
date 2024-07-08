<!-- BEGIN: main --><div class="result">
<input type="hidden" id="hidden_key" value="{HIDDEN_KEY}" />
<ul class="nav nav-tabs m-bottom">
	<li class="active">
		<a>{LANG.search_on} <span class="moduletitle texts"> &quot;{MODULE_CUSTOM_TITLE}&quot; </span> &nbsp;&nbsp;<span class="label label-info ">{SEARCH_RESULT_NUM}</span></a>
	</li>
	<!-- BEGIN: more -->
	<li class="pull-right">
		<a href="{MORE}"><em class="fa fa-thumb-tack">&nbsp;</em> {LANG.view_all_title}</a>
	</li>
	<!-- END: more -->
</ul>
<!-- BEGIN: result --><div class="col-xs-24 col-sm-8 col-md-8"><div class="m05 p10 khung">
<h3 class="margin-bottom-sm textc texts"><a class="dlb"   href="{RESULT.link}">{RESULT.title}</a></h3>
<div class="margin-bottom-lg textj">{RESULT.content}</div></div></div>

<!-- END: result --><div class="clear">&nbsp;</div>
<!-- BEGIN: generate_page -->
<div class="text-center">
	{GENERATE_PAGE}
</div>
<!-- END: generate_page -->
</div>
<!-- END: main -->