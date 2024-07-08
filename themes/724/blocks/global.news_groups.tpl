<!-- BEGIN: main -->
<style>.header-nav-inner .personalArea { padding-left: 10px;}
.globalgroups{}
.globalgroups .clearfix { padding: 5px 0; border-bottom: 1px solid #f1f1f1; height: 90px; overflow: hidden; }
.globalgroups .clearfix:hover {background: #f1f1f1;}
.globalgroups .clearfix a {}
.globalgroups .clearfix h3 {}
.globalgroups .clearfix h3 samp { font-weight: 300; font-family: "Helvetica Neue",Helvetica,Arial,sans-serif; }
.globalgroups .clearfix h3 a { text-transform: uppercase; }
.globalgroups .clearfix .img {}
.globalgroups .clearfix .img a {}
.globalgroups .clearfix .img a img { border: 1px solid #c1c1c1; margin-right: 5px; padding: 1px; background: #f1f1f1; max-height: 80px; }
.tinmoi .type5 { width: 530px; height: 25px; max-width: 100%;}
.tinmoi .type5 marquee a {margin: 0px 10px; color: #333; float: left !important; display: contents;}
.tinmoi .type5 marquee a:hover {color: #fff;}
.tinmoi .type5 marquee img { border-radius: 100%; padding: 2px; width: 30px; height: 25px; background: #fff;}
.tinmoi .type5 marquee img:hover {  background: #f00;}


}
</style> 
<!-- BEGIN: type5 -->
<div class="globalgroups type5">
<marquee id="marq" scrollamount="3" direction="left" loop="30" scrolldelay="0" onmouseover="this.stop()" onmouseout="this.start()">
	<!-- BEGIN: loop -->
	<!-- BEGIN: img --><img src="{ROW.thumb}" alt="{ROW.title}" width="20"/> <!-- END: img --><a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank} >  {ROW.title_clean}  </a>  
	<!-- END: loop --></marquee>
</div>
<!-- END: type5 -->
<!-- BEGIN: type4 -->
<ul class="globalgroups type4">
	<!-- BEGIN: loop -->
	<li class="clearfix">
		<!-- BEGIN: img -->
		<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank} ><img src="{ROW.thumb}" alt="{ROW.title}" width="50" class="img-thumbnail pull-left"/></a>
		<!-- END: img -->
		<h3><a {TITLE} class="show" href="{ROW.link}" {ROW.target_blank} data-content="{ROW.hometext_clean}" data-img="{ROW.thumb}" data-rel="catgtitlebox">{ROW.title_clean}</a></h3>
	</li>
	<!-- END: loop -->
</ul>
<!-- END: type4 -->
<!-- BEGIN: type3 -->
<ul class="nglobalgroups type3">
	<!-- BEGIN: loop -->
	<li class="clearfix">
		<!-- BEGIN: img -->
		<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank} ><img src="{ROW.thumb}" alt="{ROW.title}" width="50" class="img-thumbnail pull-left"/></a>
		<!-- END: img -->
		<h3><a {TITLE} class="show" href="{ROW.link}" {ROW.target_blank} data-content="{ROW.hometext_clean}" data-img="{ROW.thumb}" data-rel="catgtitlebox">{ROW.title_clean}</a></h3>
	</li>
	<!-- END: loop -->
</ul>
<!-- END: type3 -->
<!-- BEGIN: type2 -->
<ul class="globalgroups type2">
	<!-- BEGIN: loop -->
	<li class="clearfix">
		<!-- BEGIN: img -->
		<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank} ><img src="{ROW.thumb}" alt="{ROW.title}" width="50" class="img-thumbnail pull-left"/></a>
		<!-- END: img -->
		<h3><a {TITLE} class="show" href="{ROW.link}" {ROW.target_blank} data-content="{ROW.hometext_clean}" data-img="{ROW.thumb}" data-rel="catgtitlebox">{ROW.title_clean}</a></h3>
	</li>
	<!-- END: loop -->
</ul>
<!-- END: type2 -->

 

<!-- BEGIN: type1 -->
<div class="globalgroups type1">
 <!-- BEGIN: loop -->
 <div class="ite clearfix">
  <!-- BEGIN: img -->
		<div class="img">
   <a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank} ><img src="{ROW.thumb}" alt="{ROW.title}" width="{ROW.blockwidth}"/></a>
  </div>
		<!-- END: img -->
		<h3><a {TITLE} class="show" href="{ROW.link}" {ROW.target_blank} data-content="{ROW.hometext_clean}" data-img="{ROW.thumb}" data-rel="catgtitlebox">{ROW.title_clean}</a></h3>
  <a href="{ROW.link}" class="more pull-right">{LANG.new_viewnext}&nbsp;<i class="fa fa-caret-right" aria-hidden="true"></i></a>
 </div>
 <!-- END: loop -->
</div>
<!-- END: type1 -->

<!-- BEGIN: type0 -->
<div class="globalgroups type0">
 <!-- BEGIN: loop -->
 <div class="ite clearfix">
  <!-- BEGIN: img -->
		<div class="fl img">
   <a href="{ROW.link}" title="{ROW.title}  - {ROW.hometext_clean}" {ROW.target_blank} ><img src="{ROW.thumb}" alt="{ROW.title}" width="{ROW.blockwidth}"/></a>
			
  </div>
		<!-- END: img -->
		<h3><a {TITLE} class="show" href="{ROW.link}" title="{ROW.title} - {ROW.hometext_clean} " >{ROW.title_clean}</a>
		<samp>{ROW.hometext_clean}</samp>
		</h3>
  <!--a href="{ROW.link}" class="more pull-right">{LANG.new_viewnext}&nbsp;<i class="fa fa-caret-right" aria-hidden="true"></i></a-->
 </div>
 <!-- END: loop -->
</div>
<!-- END: type0 -->

<!-- BEGIN: tooltip -->
<script type="text/javascript">
$(document).ready(function() {$("[data-rel='catgtitlebox'][data-content!='']").tooltip({
	placement: "{TOOLTIP_POSITION}",
	html: true,
	title: function(){return ( $(this).data('img') == '' ? '' : '<img class="img-thumbnail pull-left margin_image" src="' + $(this).data('img') + '" width="90" />' ) + '<p class="text-justify">' + $(this).data('content') + '</p><div class="clearfix"></div>';}
});});
</script>
<!-- END: tooltip -->

<!-- END: main -->