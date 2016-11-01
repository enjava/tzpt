<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>我的注册资料</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/public_fun.js" ></script>{:* 函数库JS *:}
<script src="{:$var_x['path']['tem_dir_url']:}/script/three.js" type="text/javascript"></script>
<style type="text/css">
.d_list{width:94%; margin:15px auto;}
.d_box{border:1px solid #ccc; border-radius:5px; padding:10px 15px; background:#eee; margin-top:10px; box-shadow:1px 1px 3px #ccc;}
.d_box p{padding-top:10px; font-size:14px; line-height:22px;}
.d_box input{height:35px; padding-left:5px; font-size:18px; width:100%; box-sizing:border-box;}
.d_box input[type="submit"]{width:50%; margin:0 auto; border:0; height:40px; line-height:40px; text-align:center; color:#fff; background:#f3772d; display:block; border-radius:5px; -webkit-appearance:none;}
.d_box p select{width:48%; height:40px; border-radius:5px; border:1px solid #ccc; font-size:18px;}
</style>
<script type="text/javascript">
	function check_submit(){
		$('#from1').submit();
	}
</script>
</head>

<body>
<div class="d_top">我的注册资料</div>
<div class="d_list">
	<form method="post" action="" name="form1" id="from1">
	<div class="d_box">
    	<p style="padding-top:0;">手机号：<br /><input name="phone" type="text" value="{:$mle['user_data']['phone']:}" /></p>
        <p>所在省市：<br /><select name="sheng" id="s1"></select><select name="shi" id="s2" style="float:right;"></select></p>
        <input type="hidden" name="action" value="save">
        <p><input onclick="check_submit();" type="submit" value="确认修改" /></p>
    </div>
    </form>
</div><!--d_list end-->

<div style="margin-bottom:75px;"></div>
<div style="position:fixed; width:100%; bottom:0; background:#f1f1f1;">
{:include file="footer.tpl":}
</div>
</body>
</html>

<script type="text/javascript">
	(function(){
		setup();
		$('#s1').find('[value={:$mle['user_data']['sheng_data']['region_name']:}]').attr('selected','selected');
		$('#s1').change();
		$('#s2').find('[value={:$mle['user_data']['shi_data']['region_name']:}]').attr('selected','selected');
	    
	})();
</script>
