<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>代理商中心</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<link href="{:$var_x['path']['tem_dir_url']:}/script/jquery.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function chg(id_num){ 
	var oa = document.getElementById(id_num); 
	var oc = document.getElementById(id_num+"_img");
	if(oa.style.display == "block"){ 
		oa.style.display = "none"; 
		oc.src = "{:$var_x['path']['tem_dir_url']:}/images/zk_ico2.png";
	}else{ 
		oa.style.display = "block"; 
		oc.src = "{:$var_x['path']['tem_dir_url']:}/images/zk_ico1.png";
		//var sum=3;
//		for(var i=0;i<sum;i++){
//			if(('test'+i)!=id_num){
//				document.getElementById('test'+i).style.display = "none";
//				document.getElementById('test'+i+'_img').src = "{:$var_x['path']['tem_dir_url']:}/images/zk_ico2.png?77584";
//				
//			}
//		}
	} 
}
function onBridgeReady(){
 WeixinJSBridge.call('hideOptionMenu');
}

if (typeof WeixinJSBridge == "undefined"){
    if( document.addEventListener ){
        document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
    }else if (document.attachEvent){
        document.attachEvent('WeixinJSBridgeReady', onBridgeReady); 
        document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
    }
}else{
    onBridgeReady();
}
</script>
<style type="text/css">
.yj{height:40px; background:#4c4441; border-top:1px solid #ccc; box-shadow:0 3px 5px #666;}
.yj span{display:block; width:50%; height:36px; line-height:36px; margin-top:2px; float:left; box-sizing:border-box; color:#fff; text-align:center;}
.fx_box{width:94%; margin:0 auto; padding-top:10px;}
.fx_box a.fx{display:block; padding:0 10px; height:45px; line-height:45px; border-radius:8px; border:1px solid #ccc; background:url({:$var_x['path']['tem_dir_url']:}/images/menu_bg.png) repeat-x;}
.fx_box a.fx img{width:20px; vertical-align:sub; margin-right:10px;}
.fx_box a.fx span{display:block; background:#f00; color:#fff; float:right; height:25px; line-height:25px; margin-top:10px; border-radius:20px; padding:0 15px; font-size:14px;}
.rj_list{width:94%; margin:10px auto; border-radius:8px; border:1px solid #ccc; display:none;}
.rj_list a{color:#000;}
.rj_list ul li{height:40px; line-height:40px; font-size:14px; background:url({:$var_x['path']['tem_dir_url']:}/images/menu_bg.png) repeat-x; border-top:1px solid #ccc;}
.rj_list ul li img{width:23px; vertical-align:middle; margin:0  20px;}
.rj_list ul li span{ float:right; display:inline-block;  color:#f00;}
.rj_list ul li input[type="password"]{width:100%; height:38px; line-height:38px; font-size:18px; color:#666; padding-left:5px; box-sizing:border-box;}
.rj_list ul li input[type="submit"]{width:50%; height:35px; -webkit-appearance:none; border:none; font-size:18px; color:#000; display:block; margin:0 auto;}
</style>
</head>

<body>
{:include file="center_header_type_1.tpl":}
<div class="yj">
	<span>总销售：￥{:$mle['mem_info']['join_m_member_other_info']['partner_total_sales_money']:}</span>
    <span style="border-left:1px solid #fff;">可结算佣金：￥{:$mle['mem_info']['join_m_member_other_info']['partner_kickback_wait']:}</span>
</div>
<div style="padding:15px 0 25px;">
<!-- <div style="width:100%; font-size:12px; text-align:center;"> {:if $mle['mem_info']['father_id']['id']>0:} 你是由【{:$mle['mem_info']['father']['name']:}】推荐{:/if:}</div> -->
 
<div class="fx_box"><!--我的会员---------->
	<a class="fx" href="{:$var_x['path']['mleroot_url']:}/member/my_son_partner.php">
    	<img src="{:$var_x['path']['tem_dir_url']:}/images/zk_ico2.png" id="test0_img" />
        成员列表
        <span>{:$mle['total_sum']:}人</span>
    </a>
</div>
{:if $mle['mem_info']['partner_level']==1:}
<div class="fx_box"><!--我的代理商---------->
	<a class="fx" href="{:$var_x['path']['mleroot_url']:}/member/my_son_partner_level_2.php">
    	<img src="{:$var_x['path']['tem_dir_url']:}/images/zk_ico2.png" id="test0_img" />
        我的代理商
        <span>{:$mle['partner_level_2_sum']:}人</span>
    </a>
</div>
{:/if:}
<div class="fx_box"><!--我的佣金---------->
	<a class="fx" href="javascript:;" onClick="return chg('test2');">
    	<img src="{:$var_x['path']['tem_dir_url']:}/images/zk_ico2.png" id="test2_img" />
        合伙佣金
        <span>{:$mle['mem_info']['join_m_member_other_info']['partner_kickback_wait'] + $mle['mem_info']['join_m_member_other_info']['partner_kickback_already']:} 元</span>
    </a>
    <div class="rj_list" id="test2">
    	<ul>
        	<li style="border:0; border-top-left-radius:8px; border-top-right-radius:8px;">
            	<img src="{:$var_x['path']['tem_dir_url']:}/images/sqtx_ico.png" />待结算佣金<span>{:$mle['mem_info']['join_m_member_other_info']['partner_kickback_wait']:} 元<img src="{:$var_x['path']['tem_dir_url']:}/images/tg2_ico.png" /></span>
            </li>
            <li>
            	<img src="{:$var_x['path']['tem_dir_url']:}/images/sqtx_ico.png" />已结算佣金<span>{:$mle['mem_info']['join_m_member_other_info']['partner_kickback_already']:} 元<img src="{:$var_x['path']['tem_dir_url']:}/images/tg2_ico.png" /></span>
            </li>
        </ul>
    </div>
</div>

</div>

<div style="margin-bottom:75px;"></div>
<div style="position:fixed; width:100%; bottom:0; background:#f1f1f1;">
{:include file="footer.tpl":}
</div>
</body>
</html>
