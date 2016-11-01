<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>填写订单</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<link href="style/main.css" rel="stylesheet" type="text/css" />
<script src="script/jquery.js" type="text/javascript"></script>
<script src="script/three.js" type="text/javascript"></script>
<style type="text/css">
.dd{width:90%; margin:20px auto;}
.dd p{padding-bottom:15px;}
.dd p label{padding-bottom:3px; display:block; padding-left:5px;}
.dd p label span{color:#ff810c; font-size:18px; vertical-align:sub; padding-left:5px;}
.dd p input[type="text"]{width:100%; height:35px; border-radius:5px; border:1px solid #ccc; padding-left:5px; box-sizing:border-box;}
.dd p select{width:48%; height:35px; border-radius:5px; border:1px solid #ccc;}
a.ps{width:90%; margin:0 auto; margin-top:20px; height:40px; line-height:40px; text-align:center; color:#fff; background:#f3772d; display:block; border-radius:5px;}
</style>
</head>

<body onLoad="setup();">
<form method="" action="" name="">
<div class="dd">
	<p>
    	<label>省市<span>*</span></label>
        <select id="s1"></select>
        <select id="s2" style="float:right;"></select>
    </p>
    <p>
    	<label>详细地址<span>*</span></label>
        <input type="text" name="" value="" />
    </p>
    <p>
    	<label>收货人姓名<span>*</span></label>
        <input type="text" name="" value="" />
    </p>
    <p>
    	<label>联系电话<span>*</span></label>
        <input type="text" name="" value="" />
    </p>
    <p>
    	<label>手机号码</label>
        <input type="text" name="" value="" />
    </p>
    <p>
    	<label>电子邮箱<span>*</span></label>
        <input type="text" name="" value="" />
    </p>
    <p>
    	<label>配送时间</label>
        <select>
        	<option>请选择送货时间</option>
            <option>任何时间</option>
            <option>周一至周五</option>
            <option>周六、周日</option>
        </select>
    </p>
    <a href="" class="ps">配送到这个地址</a>
    <a href="" class="ps">新增一个收货地址</a>
</div>
</form>

<div style="margin-bottom:75px;"></div>
<div style="position:fixed; width:100%; bottom:0; background:#f1f1f1;">
{:include file="footer.tpl":}
</div>
<!--<div class="footer">
	<p><a href="">首页</a><a class="lr" href="">用户中心</a><a href="">购物车</a></p>
    <p><a href="javascript:;" id="ft"><img src="images/ftop.png" style="width:20px; vertical-align:sub;" />&nbsp;返回顶部</a></p>
    <p>&copy;&nbsp;凯格网络科技</p>
</div>-->
</body>
</html>
