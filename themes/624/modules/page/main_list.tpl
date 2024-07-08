<!-- BEGIN: main -->
<div class="page pagemanlist">
	<!-- BEGIN: loop -->
	<div class="col-xs-24 col-sm-12 col-md-12">
		<div class="manlist panel-body">
		<h2 class="hoadau texts p5  textc" style=" font-size: 120%;"><a class='dlb' href="{DATA.link}" style=" color: #f00;" title="{DATA.title}">{DATA.title}</a></h2>
			<!-- BEGIN: image -->
			<div class="pull-left img-thumbnail" style="margin: 0 7px 7px 0">
				<a href="{DATA.link}" title="{DATA.title}"><img src="{DATA.image}" alt="{DATA.imagealt}" width="100" /></a>
			</div>
			<!-- END: image -->
			<p class="hoadau">{DATA.description}</p>
		    <!-- BEGIN: adminlink -->
			<p class="text-right adminlink">
				<em class="fa fa-edit fa-lg">&nbsp;</em><a href="{ADMIN_EDIT}">{GLANG.edit}</a>
				<em class="fa fa-trash-o fa-lg">&nbsp;</em> <a href="javascript:void(0);" onclick="nv_del_content({DATA.id}, '{ADMIN_CHECKSS}','{NV_BASE_ADMINURL}')">{GLANG.delete}</a>
			</p>
			<!-- END: adminlink -->
		</div>	</div>
	<!-- END: loop -->
	<div class="text-center">{GENERATE_PAGE}</div></div>
<!-- END: main -->