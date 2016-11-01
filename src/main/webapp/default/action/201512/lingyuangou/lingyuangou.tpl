<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title>零元购 - 好+居12月活动</title>
<style type="text/css">
	body{ margin: 0; padding: 0;}
	.page img{width:100%; padding:0px; margin:0px; display:block;}
</style> 
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}
</head>

<body>
    <div class="page">
  	  <img src="{:$var_x['path']['tem_dir_url']:}/images/action/201512/lingyuangou/01.jpg" />
      <img src="{:$var_x['path']['tem_dir_url']:}/images/action/201512/lingyuangou/02.jpg" />
      <img src="{:$var_x['path']['tem_dir_url']:}/images/action/201512/lingyuangou/03.jpg" />
      <img src="{:$var_x['path']['tem_dir_url']:}/images/action/201512/lingyuangou/04.jpg" border="0" usemap="#Map" />
      <map name="Map">
        <area shape="rect" coords="394,0,623,62" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php">
      </map>
      <img src="{:$var_x['path']['tem_dir_url']:}/images/action/201512/lingyuangou/05.jpg" />
      <img src="{:$var_x['path']['tem_dir_url']:}/images/action/201512/lingyuangou/06.jpg" />
      <img src="{:$var_x['path']['tem_dir_url']:}/images/action/201512/lingyuangou/07.jpg" border="0" usemap="#Map2" />
      <map name="Map2">
        <area shape="rect" coords="5,2,235,167" href="{:$var_x['config']['weixin']['subscribe_url']:}">
        <area shape="rect" coords="236,2,503,169" href="javascript:;" onclick="$('html,body').animate({scrollTop:0},200);">
        <area shape="rect" coords="503,2,746,171" href="{:$var_x['path']['mleroot_url']:}/mobile/prod_class_1117.php">
      </map>
      <img src="{:$var_x['path']['tem_dir_url']:}/images/action/201512/lingyuangou/08.jpg" />
    </div>
</body>
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
<script type="text/javascript">
var var_x = {
		'path':{
			'mleroot_url' : '{:$var_x['path']['mleroot_url']:}',
			'tem_dir_url' : '{:$var_x['path']['tem_dir_url']:}',
		},
		'data':{
			'shop_id' : '{:$mle['par']['shop_id']:}',
			'time_id' : '{:$mle['par']['time_id']:}',
		}
	};
</script>
	{:include file="common_wx_share_head_type2.tpl":}{:*微信api*:}
</html>
