<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<title>银行直联POS机 - 申请登记</title>
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/reset.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/common.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/home.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/index.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/widget_menu.css" rel="stylesheet" />
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/button.css" rel="stylesheet" />
<script type="text/javascript" src="{:$var_x['path']['tem_dir_url']:}/script/jquery.js"></script>
<style type="text/css">
body{padding:0; margin:0; font:normal 100% 微软雅黑; background:#fff;}
*{padding:0; margin:0;}
ul li,ol{ list-style:none;}
a{text-decoration:none; color:#000;}
a:hover{text-decoration:none;}
.n_top{width:100%; height:45px; background:#37c3a9; line-height:45px; text-align:center; color:#fff; font-size:16px;}
.news_list{ border-radius:8px; width:96%; margin:10px auto;}
.news_list ul{width:96%; margin:0 auto;}
.news_list ul li{border-top:1px solid #ccc; padding:10px 0; font-size:0.875em;}
.news_list ul li span{color:#999;}

#merchant_pos .input_text{width:90%; height:35px;}
</style>
</head>

<body>
<div class="n_top">申请登记</div>
<div class="news_list">
	<form action="" method="post"  id="merchant_pos">
		<input type="hidden" name="action" value="merchant_pos" />
		<div style="margin:0 auto;text-align:center;">
		姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<input type="text" name="name"  class="input_text"/><br /><br />
		联系方式：<input type="text" name="contact_way"   class="input_text"/><br /><br />
		安装地址：<input type="text" name="install_address"   class="input_text"/><br /><br />
		申请POS机类型：<br />
		<a href="javascript:;" onclick="$('#pos_type_1_div').hide();"><input type="radio" name="pos_type" value="0"  id="pos_type_0" checked/><label for="pos_type_0">网线机</label></a>
		<a href="javascript:;" onclick="$('#pos_type_1_div').show();"><input type="radio" name="pos_type" value="1"  id="pos_type_1" /><label for="pos_type_1">电话线机</label></a>
		<a href="javascript:;" onclick="$('#pos_type_1_div').hide();"><input type="radio" name="pos_type" value="2"  id="pos_type_2" /><label for="pos_type_2">移动机</label></a>
		<br />
		<div id="pos_type_1_div" style="display:none;">
			<br />
			座机号码：<input type="text" name="pos_phone"   class="input_text"/><br /><br />
	      (安装电话线机，必须提供座机号码)
      </div>
      <br /><br />
			<a href="javascript:;" onclick="$('#merchant_pos').submit();" class="button button-primary button-rounded button-large">提交信息</a>
		</div>
	</form>
</div>

</body>
<script type="text/javascript">
	if($('#pos_type_1').is(":checked")) $('#pos_type_1_div').show();
</script>
</html>
