<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title>商城合伙人积分</title>
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/reset.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/common.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/home.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/index.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/widget_menu.css" rel="stylesheet" />
<script type="text/javascript" src="{:$var_x['path']['tem_dir_url']:}/script/jquery.js"></script>
<script type="text/javascript" src="{:$var_x['path']['mleinc_url']:}/script/public_fun.js"></script>
<script type="text/javascript" src="{:$var_x['path']['tem_dir_url']:}/script/swipe_min.js"></script>
<style type="text/css">
/**/
.user_mas{background:#fc6846; border:2px solid #ffff01; padding:15px 10px; margin-top:0px; font-size:16px; line-height:26px; color:#fff;}
/**/
.sea{padding:7px; background:#c7c7c7; width:100%; box-sizing:border-box; position:relative;}
.sea input[type="text"]{width:100%; height:35px; line-height:35px; background:#fff; border:none; border-radius:5px; text-align:center; font-size:18px; color:#a3a3a3;}
.sea input[type="image"]{position:absolute; width:25px; right:13px; top:12px;}
.c_tit{margin:0 4px; height:40px; background:url({:$var_x['path']['tem_dir_url']:}/images/c_titBG.png) left center repeat-x;}
.c_tit span{display:block; text-align:center; color:#ff5366; background:#f1f1f1; height:40px; line-height:40px; font-size:16px; width:100px; margin:0 auto;}
</style>
<script type="text/javascript">
page = 1;
function get_product_data_page(){
	page++;
	var url = 'http://{:$smarty.server.SERVER_NAME:}{:$smarty.server.REQUEST_URI:}';
	$.post(url, {'action':'get_product', 'page':page}, function(data){
		//console.info(data);
		if(data=='-1'){
			$('.che_more').hide();
			return false;
		}
		if(data != ''){
			$('#mark_page_data').before(data);
		}
	});
	
}

</script>
</head>

<body onselectstart="return true;" ondragstart="return false;">

<div data-role="container" class="container home" >
    <header data-role="header">
        
    </header>
<div class="user_mas">
	<table width="100%" cellpadding="0" cellspacing="0">
    	<tr>
        	<td width="120" align="center"><img src="{:$var_x['user']['data']['headimg']:}" style="width:80px;" /></td>
            <td>
            	累计积分：{:$var_x['user']['data']['total_integral']:}<br />
				返利积分：{:if $var_x['user']['data']['total_integral'] >= 500:}{:intval($var_x['user']['data']['total_integral'] / 500, 0):}(元){:else:}（未达返利单元返利系统未启动）{:/if:}<br />
				留存积分：{:$var_x['user']['data']['integral']:}<br />
				本期新增积分：{:$var_x['user']['data']['last_accord_later_new_integral']:}{:if $var_x['user']['data']['last_accord_later_new_integral']<100:}(还差{:intval( 100 - $var_x['user']['data']['last_accord_later_new_integral'] ):}积分即可开启下一期积分返现){:/if:}<br />
				<!-- 已返现：{:$mle['other_mem_data']['total_integral_participation']:}(元) -->
            </td>
        </tr>
    </table>
</div>

<div style="margin:0 15px; text-align:left;">
	<br /><br />
1.凡参与推广及消费本商城的会员产品且有经济行为发生，都将成会员并取<br />
得商城积分，成为商城的众筹合伙人之。<br />
2.积分为会员的投入及给公司创造的价值：<br />
①可用于公司返利分红；<br />
②可用于公司发展上市原始股的转换(待开展)；<br />
③可用于商城产品兑换(待开展)；<br />
④可用于公司活动奖品兑换(待开展)；<br />
⑤可用于公司参加拓展及旅游活动(待开展)；<br />
3.积分分红返利方案:<br />
①以500积分为一个分红单元，每天系统分红返1元，返完500积分为止。<br />
 （例：5000积分为10个单元，每天返利10元，返完为止；3000积分为<br />
   6个单元，每天返利6元，返完为止）；<br />
②每月为一个返利周期，每月25号计算是否符合返利条件；<br />
③成功参与活动后，次月新增积分低于100的暂停返利，待新积分进入大<br />
于100后，可继续返利。<br />
积分兑换产品，在返利额度内等值兑换，额度不足用现金补足；<br />
公司发展顺利计划上市，则积分可转化为公司原始股份；<br />
具体股方案细则在上市前2个月予以公布。<br />
</div>

<!--
    <section data-role="body" class="body">
-->
        <!--搜索-->
<!--
        <div class="sea">
           <form action="{:$var_x['path']['mleroot_url']:}/mobile/product_ofintegral.php" method="get" name="">
                <input type="text" name="keywords" value="" placeholder="搜你想要的" />
                <input type="image" src="{:$var_x['path']['tem_dir_url']:}/images/search_ico.png" />
           </form>
        </div>
-->
        
        <!--商品列表-->
<!--
        <style type="text/css">
        .cate a{display:block; float:left; width:25%; height:40px; line-height:40px; text-align:center; color:#000; font-size:14px; border-bottom:1px solid #c7c7c7;}
		.cate a.active{border-bottom:1px solid #fe3b3f;}
		.pro_list{width:94%; margin:0 auto;}
		.pro_list a{display:block; border:1px solid #ccc; border-radius:5px; margin-top:10px;}
		.pro_list a img{width:100%; border-radius:5px 5px 0 0;}
		.pro_tit{padding:10px 100px 10px 10px; position:relative;}
		.pro_tit p{font-size:16px; margin:0; padding:0 0 5px; color:#fe3b3f;}
		.pro_tit p em{font-size:22px; font-weight:bold;}
		.pro_tit h3{margin:0; padding:0; font-size:16px; font-weight:normal; color:#000;}
		.pro_tit div.qg{position:absolute; width:80px; height:30px; border-radius:20px; background:#fe3b3f; line-height:30px; text-align:center; color:#fff; right:10px; top:50%; margin-top:-15px;}
		a.che_more{display:block; height:30px; line-height:30px; text-align:center; color:#999; font-size:16px; margin:20px auto;}
		a.che_more img{width:20px; vertical-align:middle; margin-bottom:3px;}
        </style>
        <div class="cate">
        	<a href="{:fun::url_replace('', 'sort', '0'):}" {:if $mle['par']['sort']==0:}class="active"{:/if:}>综合推荐</a>
            <a href="{:fun::url_replace('', 'sort', '1'):}" {:if $mle['par']['sort']==1:}class="active"{:/if:}>最新上线</a>
            <a href="{:fun::url_replace('', 'sort', '2'):}" {:if $mle['par']['sort']==2:}class="active"{:/if:}>兑换量最高</a>
            <a href="{:fun::url_replace('', 'sort', '3'):}" {:if $mle['par']['sort']==3:}class="active"{:/if:}>浏览最高</a>
            <div style="clear:both;"></div>
        </div>
        <div class="pro_list">
        	{:foreach $mle['product']['data'] as $i => $product_value:}
        	<a href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$product_value['id']:}">
            	<img src="{:$var_x['path']['mleroot_url']:}/{:$product_value['picture'][0]:}" />
                <div class="pro_tit">
                	<p>
                	{:if $product_value['deal_price']>0:}<em>{:$product_value['deal_price']:}</em>&nbsp;元{:/if:}
                	{:if $product_value['price_ofintegral']>0:}
	                	{:if $product_value['deal_price']>0:}&nbsp;+&nbsp;{:/if:}
	                	<em>{:$product_value['price_ofintegral']:}积分</em> 
                	{:/if:}
                    <h3>{:$product_value['title']:}</h3>
                    <div class="qg">立即抢购</div>
                </div>
            </a>
            {:/foreach:}
            <div id="mark_page_data" style="display:none;"></div>
        </div>
        {:if count($mle['product']['data']) == 8:}<a href="javascript:void(0);" onclick="get_product_data_page();" class="che_more">查看更多&nbsp;<img src="{:$var_x['path']['tem_dir_url']:}/images/check_more.png" /></a>{:/if:}
	</section>
-->
</div>
<div style="margin-bottom:75px;"></div>
<div style="position:fixed; width:100%; bottom:0; background:#f1f1f1;">
{:include file="footer.tpl":}
</div>
</body>
</html>
