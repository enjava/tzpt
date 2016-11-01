	<div class="bottom_menu_div" id="bottom_menu_div" style="position:fixed; bottom:0px; width:100%;">
		<img src="" srcX="{:$var_x['path']['tem_dir_url']:}/images/index/20151219/bottom_menu.png" border="0" usemap="#Map16" class="index_prod_img" onclick="javascript:;" />
		<map name="Map16">
		  <area shape="rect" coords="29,34,142,155" href="{:$var_x['path']['mleroot_url']:}/member/center.php">
		  <area shape="rect" coords="159,33,282,154" href="{:$var_x['path']['mleroot_url']:}/mobile/product.php">
		  <area shape="rect" coords="464,33,591,156" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php">
		  <area shape="rect" coords="606,34,726,157" href="{:$var_x['path']['mleroot_url']:}/mobile/cart.php">
		  <area shape="rect" coords="304,3,454,155" href="{:$var_x['path']['mleroot_url']:}/index.php">
		</map>
	</div>
	<div id="bottom_div_br"></div>
<script type="text/javascript">
//重建图片热点坐标
	var ratio = $(document).width() / 750;
	$('area').each(function(){
		var coords = $(this).attr('coords');
		var coords_array = coords.split(',');
		var coords_new = '';
		coords_new += parseInt(coords_array[0] * ratio)+',';
		coords_new += parseInt(coords_array[1] * ratio)+',';
		coords_new += parseInt(coords_array[2] * ratio) +',';
		coords_new += parseInt(coords_array[3] * ratio)+',';
		//coords_new = '0,0,0,0';
		$(this).attr('coords', coords_new)
		console.log(coords, coords_new);
	});

</script>