<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>我的积分账单</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/public_fun.js" ></script>{:* 函数库JS *:}
<style type="text/css">
body{padding:0; margin:0; font: normal 100% 微软雅黑; background:#e5e5e5;}
*{padding:0; margin:0;}
ul,li,ol{ list-style:none;}
img{width:100%; border:0;}
a{text-decoration:none; color:#000;}
a:hover{text-decoration:none;}
.clear{height:0; clear:both;}

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
/*顶部按钮*/
.button_css_1 {background-color:#FF7F50; padding:3px 20px; color:#FFF5EE;}
.activity {background-color:#CC3800; color:#FFF;}
.activity a:link,a:visited  {color:#FFF;}
</style>
<style type="text/css">
.ztop{height:45px; background:#fc6846; line-height:45px; text-align:center; font-size:16px; color:#fff; position:relative;}
.ztop img{height:20px; width:auto; position:absolute; left:10px; top:13px;}
</style>
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/public_fun.js" ></script>{:* 函数库JS *:}
<script type="text/javascript">
function check_search(){
	/*
	if($.trim($("input[name='search_keyword']").val())==''){
		alert('请输入搜索内容');
		return false;
	}
	*/
	return true;
}
</script>
</head>

<body>
<!--<div class="d_top">我的账单</div>-->
<div class="ztop">
	<a href="javascript:history.back(-1);"><img src="{:$var_x['path']['tem_dir_url']:}/images/0625/lback.png" /></a>
	<div>
	<a href="javascript:void(0)" onclick="mle.fun.toUrl('my_kickback_bill.php', false);" class="button_css_1">收入账单</a><a href="javascript:void(0)" onclick="mle.fun.toUrl('my_integral_log.php', false);" class="button_css_1 activity">积分账单</a>
	</div>
</div>
<div class="sea">
<form method="get" action="" name="" onsubmit="return check_search();">
	<input type="search" name="search_keyword" value="{:$smarty.get.search_keyword:}" placeholder="搜索会员昵称/id"/>
    <input type="image" src="{:$var_x['path']['tem_dir_url']:}/images/search_btn.png"/>
    <input type="hidden" name="page" value="1">
</form>
</div>
<div class="zd">
	<ul>
	{:foreach $mle['bill_data'] as $bill_value:}
    	<li>
        	<table width="100%">
            	<tr>
                	<td>
                    	<h3>
                    	{:if $bill_value['integral_type']==0:}
                    		积分{:if $bill_value['content'] !='':}({:$bill_value['content']:}){:/if:}
                    	{:elseif $bill_value['integral_type']==1:}
                 	   		【{:$bill_value['name']:}】贡献{:if $bill_value['level']>0:}{:fun::num_toch($bill_value['level'], false):}级{:/if:}积分
                    	{:elseif $bill_value['integral_type']==2:}
                 		   	订单积分
                    	{:elseif $bill_value['integral_type']==3:}
                 	   		积分分红
                    	{:else:}
                 	   		{:$bill_value['content']:}
                    	{:/if:}
                    	</h3>
                        <p>
		                   {:if $bill_value['integral_type']==0:}
	                    		{:date('Y-m-d H:i:s', $bill_value['addtime']):}
	                    	{:elseif $bill_value['integral_type']==1:}
	                 	   		订单号：{:$bill_value['oid']:}&nbsp;&nbsp;{:date('Y-m-d H:i:s', $bill_value['addtime']):}
	                    	{:elseif $bill_value['integral_type']==2:}
	                 	   		订单号：{:$bill_value['oid']:}&nbsp;&nbsp;{:date('Y-m-d H:i:s', $bill_value['addtime']):}
	                    	{:elseif $bill_value['integral_type']==3:}
	                 	   		{:date('Y-m-d H:i:s', $bill_value['addtime']):}
	                    	{:else:}
	                 	   		{:date('Y-m-d H:i:s', $bill_value['addtime']):}
	                    	{:/if:}
                        </p>
                    </td>
                    <td align="right"><span style="font-size:16px; color:{:if $bill_value['integral']>0:}#009900{:else:}#CC3333{:/if:}">{:if $bill_value['integral']>0:}+{:/if:}{:$bill_value['integral']:}</span></td>
                </tr>
            </table>
        </li>
    {:foreachelse:}
        <div class="nd">暂无账单</div>
	{:/foreach:}
    </ul>
    <!----page-------->
    <div class="page">
    	{:if $mle['bill_page_data']['data']['up_page']=='':}
    		<span>上一页</span>
    	{:else:}
      	  <a href="javascript:void(0)" onclick="mle.fun.toUrl('{:$mle['bill_page_data']['data']['up_page']:}', false);">上一页</a>
        {:/if:}
        {:if $mle['bill_page_data']['data']['next_page']=='':}
        	<span class="r">下一页</span>
        {:else:}
       	 	<a href="javascript:void(0)" onclick="mle.fun.toUrl('{:$mle['bill_page_data']['data']['next_page']:}', false);" class="r">下一页</a>
        {:/if:}
        <div class="clear"></div>
        
    </div>
    <div class="page_num">
    	<span>{:$mle['bill_page_data']['data']['current_page']:}/{:$mle['bill_page_data']['data']['page_max']:}</span><br />
   		 <span>共{:$mle['bill_page_data']['count']:}条</span>
    </div>
</div>

<div style="margin-bottom:75px;"></div>
<div style="position:fixed; width:100%; bottom:0; background:#f1f1f1;">
{:include file="footer.tpl":}
</div>
</body>
</html>
