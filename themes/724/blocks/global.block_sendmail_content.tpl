<!-- BEGIN: main -->
<form id="frm-sendmail-content" method="post" class="form-inline">
	<input type="text" class="form-control required" name="content" required="required" oninvalid="setCustomValidity( nv_required )" oninput="setCustomValidity('')" oninvalid="setCustomValidity( nv_required )" oninput="setCustomValidity('')" placeholder="{LANG.content}..." autocomplete=off" >
	<input type="submit" name="sendmail_content" value="{LANG.send}" class="btn btn-primary">
</form>

<script>
	$('#frm-sendmail-content').submit(function(){
		$(this).find(":input").prop("disabled", true);
		$.post('{SELFURL}', 'sendmail_content=1&content=' + $(this).find('input[name="content"]').val(), function(res) {
			var r_split = res.split('_');
			if (r_split[0] == 'OK') {
				alert(r_split[1]);
				$('#frm-sendmail-content').find('input[name="content"]').val('');
			}
			else{
				alert(r_split[1]);
				$('#frm-sendmail-content').find('input[name="content"]').focus();
			}
			$('#frm-sendmail-content').find(":input").prop("disabled", false);
		});
		return !1;
	});
</script>
<!-- END: main -->