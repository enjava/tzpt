<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>填写订单</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/public_fun.js" ></script>{:* 函数库JS *:}
<script src="{:$var_x['path']['tem_dir_url']:}/script/three.js" type="text/javascript"></script>
<style type="text/css">
.dd{width:90%; margin:20px auto;}
.dd p{padding-bottom:15px;}
.dd p label{padding-bottom:3px; display:block; padding-left:5px;}
.dd p label span{color:#ff810c; font-size:18px; vertical-align:sub; padding-left:5px;}
.dd p input[type="text"]{width:100%; height:40px; line-height:40px; font-size:18px; border-radius:5px; border:1px solid #ccc; padding-left:5px; box-sizing:border-box;}
.dd p select{width:48%; height:40px; border-radius:5px; border:1px solid #ccc; font-size:18px;}
a.ps{width:90%; margin:0 auto; margin-top:20px; height:40px; line-height:40px; text-align:center; color:#fff; background:#f3772d; display:block; border-radius:5px;}
</style>
<script type="text/javascript">
	function check_submit(){
		/*
		if($('#s2').val()=='城市'){
			alert('请选择省市');
			return false;
		}
		*/
		if($.trim($("input[name='address']").val())==''){
			alert('请输入详细地址');
			return false;
		}
		
		if($.trim($("input[name='user_name']").val())==''){
			alert('请输入收货人姓名');
			return false;
		}
		
		$('#from1').submit();
	}
</script>
</head>

<body onLoad="setup();">
<form method="post" action="" name="form1" id="from1">
<div class="dd">
<!-- 
	<p>
    	<label>省市<span>*</span></label>
        <select name="sheng" id="s1"></select>
        <select name="shi" id="s2" style="float:right;"></select>
    </p>
 -->
    <p>
    	<label>详细地址<span>*</span></label>
        <input name="address" type="text" name="" value="{:$mle['address_data']['address']:}" />
        (提示请认真详细填写收货地址)
    </p>
    <p>
    	<label>收货人姓名<span>*</span></label>
        <input name="user_name" type="text" name="" value="{:$mle['address_data']['name']:}" />
    </p>
    <p>
    	<label>手机号码<span>*</span></label>
        <input name="user_mobile_phone" type="text" name="" value="{:$mle['address_data']['mobile_phone']:}" />
    </p>
     <p>
    	<label>联系电话<span></span></label>
        <input name="user_phone" type="text" name="" value="{:$mle['address_data']['phone']:}" />
    </p>
    <!-- 
     <p>
    	<label>邮政区号<span></span></label>
        <input name="area_code" type="text" name="" value="" />
    </p>
    
    <p>
    	<label>电子邮箱<span></span></label>
        <input name="user_email" type="text" name="" value="" />
    </p>
     -->
    <p style="display:none;">
    	<label>配送时间</label>
        <select name="user_post_time">
        	<!-- <option value="0">请选择送货时间</option> -->
            <option value="1">任何时间</option>
            <option value="2">周一至周五</option>
            <option value="3">周六、周日</option>
        </select>
    </p>
    <p style="text-align:center; padding-top:10px; display:none;">
	    <label for="set_default_address" style="cursor : pointer">
		   <input type="checkbox" name="set_default_address" id="set_default_address" value="1" style="width:15px; height:15px; vertical-align:middle;" />&nbsp;&nbsp;设置成默认地址
	    </label>
	     
    </p>
    <input type="hidden" name="action" value="save">
     
     <input type="hidden" name="goto_type" value="{:$smarty.get.goto_type:}">
    <a onclick="check_submit();" href="javascript:void(0);" class="ps">保存地址</a>
</div>
</form>

<div style="margin-bottom:75px;"></div>
<div style="position:fixed; width:100%; bottom:0; background:#f1f1f1;">
{:include file="footer.tpl":}
</div>
</body>
</html>
