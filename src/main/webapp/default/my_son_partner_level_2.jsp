<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>成员列表</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.hy_box{width:94%; margin:0 auto; position:relative; margin-top:15px; background:url({:$var_x['path']['tem_dir_url']:}/images/menu_bg.png); background-size:100% 100%; padding:15px 0; border:1px solid #ccc; border-radius:5px; line-height:26px; font-size:14px;}
.nd{width:94%; margin:15px auto; height:45px; line-height:45px; text-align:center; border-radius:8px; border:1px solid #ccc; background:url({:$var_x['path']['tem_dir_url']:}/images/menu_bg.png) repeat-x;}
.yz{position:absolute; width:80px; right:23px; top:50%; margin-top:-20px;}
</style>

<style type="text/css">
.sea{height:30px; padding:10px 20px; background:#fff; position:relative;}
.sea input[type="search"]{width:100%; padding-left:5px; font-size:16px; height:30px; box-sizing:border-box; border:1px solid #e5e5e5;}
.sea input[type="image"]{border:none; width:50px; height:28px; position:absolute; right:21px; top:11px;}
.nd{width:94%; margin:15px auto; height:45px; line-height:45px; text-align:center; border-radius:8px; border:1px solid #ccc; background:url({:$var_x['path']['tem_dir_url']:}/images/menu_bg.png) repeat-x;}
.zd{width:94%; margin:0 auto;}
.zd ul li{padding:10px 5px; border-bottom:1px solid #ccc;}
.zd ul li h3{font-size:14px; color:#000; font-weight:normal; padding-bottom:5px;}
.zd ul li p{font-size:12px; color:#999;}
.page{width:300px; margin:0 auto; padding:20px 0;}
.page a,.page span{display:block; background:#009143; width:130px; height:35px; line-height:35px; text-align:center; color:#fff; font-size:14px; border-radius:3px; float:left;}
.page a.r,.page span.r{float:right;}
.page span{background:#ccc;}
.page_num {width:100%; text-align:center; color:#ccc;}
</style>
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/public_fun.js" ></script>{:* 函数库JS *:}
<script type="text/javascript">
// 隐藏微信中网页底部导航栏和分享
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
</head>

<body>
<div class="sea">
	<form method="get" action="" name="" onsubmit="return check_search();">
		<input type="search" name="search_keyword" value="{:$smarty.get.search_keyword:}" placeholder="搜索会员昵称/id"/>
	    <input type="image" src="{:$var_x['path']['tem_dir_url']:}/images/search_btn.png"/>
	    <input type="hidden" name="page" value="1">
	    <input type="hidden" name="level" value="{:$smarty.get.level:}">
	</form>
</div>
<!--<div class="d_top">我的家族-{:$mle['level_chinese']:}级成员</div>-->
{:foreach $mle['son']['new_all_son_data_id_array'] as $sontree_mem_id:}
	{:$sontree_data_val = $mle['son']['new_all_son_data'][$sontree_mem_id]:}
	
	<div class="hy_box">
		<a href="my_sonchild_partner.php?son_id={:$sontree_data_val['id']:}"><table width="100%" cellpadding="0" cellspacing="0">
		{:if $sontree_data_val['is_merchant']:}<img class="yz" src="{:$var_x['path']['tem_dir_url']:}/images/yz2.png" /><!--东家印章-->{:/if:}
	    	<tr>
	        	<td width="75" align="center"><img style="width:55px; height:55px;"src="{:$sontree_data_val['headimg']:}" /></td>
	            <td>
					昵称：{:$sontree_data_val['name']:}<br />
					关注时间：{:if $sontree_data_val['subscribe_time']>0:}{:fun::time_todate('', $sontree_data_val['subscribe_time']):}{:else:}未关注{:/if:}<br />
					消费额：{:$sontree_data_val['cost_money']:}元<br />
					贡献佣金：{:$sontree_data_val['give_kickback']:}元<br />
					会员等级：{:member::get_level_toname($sontree_data_val['level']):}
					{:if $sontree_data_val['deal_new_up_partner_data']['id']>0:}
						<br />
						上级代理：{:$sontree_data_val['deal_new_up_partner_data']['name']:}<br />
					{:/if:}
	            </td>
	            <td width="30"><img style="width:20px;" src="{:$var_x['path']['tem_dir_url']:}/images/m_ico.png" /></td>
	        </tr>
	    </table></a>
	</div>
{:foreachelse:}
        <div class="nd">暂无成员</div>
{:/foreach:}
    <!----page-------->
    <div class="page">
    	{:if $mle['all_page_data']['data']['up_page']=='':}
    		<span>上一页</span>
    	{:else:}
      	  <a href="javascript:void(0)" onclick="mle.fun.toUrl('{:$mle['all_page_data']['data']['up_page']:}', false);">上一页</a>
        {:/if:}
        {:if $mle['all_page_data']['data']['next_page']=='':}
        	<span class="r">下一页</span>
        {:else:}
       	 	<a href="javascript:void(0)" onclick="mle.fun.toUrl('{:$mle['all_page_data']['data']['next_page']:}', false);" class="r">下一页</a>
        {:/if:}
        <div class="clear"></div>
        
    </div>
    <div class="page_num">
    	<span>{:$mle['all_page_data']['data']['current_page']:}/{:$mle['all_page_data']['data']['page_max']:}</span><br />
   		 <span>共{:$mle['all_page_data']['count']:}条</span>
    </div>
<div style="margin-bottom:75px;"></div>
<div style="position:fixed; width:100%; bottom:0; background:#f1f1f1;">
{:include file="footer.tpl":}
</div>
</body>
</html>
