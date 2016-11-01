<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>确认收货地址</title>
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/public_fun.js" ></script>{:* 函数库JS *:}
<script src="{:$var_x['path']['tem_dir_url']:}/script/three.js" type="text/javascript"></script>
<style type="text/css">
.dd{width:98%; margin:20px auto;}
.dd ul li{ border-bottom:1px solid #ccc; font-size:14px; padding:10px 5px; line-height:24px;}
.dd ul li div{float:left;}
.dd ul li a{color:#6f5d53;}
.dd ul li input[type="radio"]{width:15px; height:15px; margin:5px 8px 0 0;}
.nd{width:90%; margin:15px auto; height:45px; line-height:45px; text-align:center; border-radius:8px; border:1px solid #ccc; background:url({:$var_x['path']['tem_dir_url']:}/images/menu_bg.png) repeat-x;}
a.ps{width:90%; margin:0 auto; margin-top:20px; height:40px; line-height:40px; text-align:center; color:#fff; background:#f3772d; display:block; border-radius:5px;}
</style>
<script type="text/javascript">
	function go_affirm_order(){
		address_id = $("input[name='select_address']:checked").val();
		if(address_id>0){
			mle.fun.toUrl('affirm_order.php?address_id='+address_id);
		}else{
			alert('地址选择错误');
		}
	}	
</script>
</head>

<body onLoad="setup();">
<form method="" action="" name="">
<div class="dd">
	<ul>
	{:foreach $mle['re_address_data'] as $adddress_val name=foo:}
    	<li>
        	<div><input type="radio" name="select_address" value='{:$adddress_val['id']:}' {:if $smarty.foreach.foo.index==0:}checked{:/if:}/></div>
            <div>
            	<p>联系人：{:$adddress_val['name']:}</p>
                <p>地址：{:$adddress_val['sheng']['region_name']:}&nbsp;&nbsp;{:{:$adddress_val['shi']['region_name']:}:}&nbsp;&nbsp;{:$adddress_val['address']:}</p>
                <p>电话：{:$adddress_val['phone']:}</p>
                <p><a onclick="if(confirm('你确定删除该地址吗？')==false) return; mle.fun.toUrl('?action=del_address&address_id={:$adddress_val['id']:}', false);" href="javascript:void(0);">【删除】</a></p>
            </div>
            <span style="clear:both; display:block;"></span>
        </li>
	{:foreachelse:}
       <div class="nd">暂无收货地址</div>
	{:/foreach:}
    </ul>
    {:if !empty($mle['re_address_data']):}
    <a onclick="go_affirm_order();" href="javascript:void(0);" class="ps">配送到这个地址</a>
    {:/if:}
    
    <a href="add_address.php" class="ps">新增一个收货地址</a>
</div>
</form>

{:include file="footer.tpl":}
</body>
</html>
