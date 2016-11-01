<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title>{:if $smarty.get.web_title != '':}{:$smarty.get.web_title:} - {:/if:}{:if $smarty.get.keywords != '':}的搜索结果 - {:/if:}商品</title>
{:*include file="common_wx_share_head.tpl"*:}{:*微信分享*:}
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/reset.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/common.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/widget_menu.css" rel="stylesheet" />
<script type="text/javascript" src="{:$var_x['path']['tem_dir_url']:}/script/jquery.js"></script>
<script type="text/javascript" src="{:$var_x['path']['mleinc_url']:}/script/public_fun.js"></script>
<style type="text/css">
body{background:#f1f1f1;}
.c_top{position:fixed; width:100%; height:45px; top:0; left:0; background:#37c3a9; z-index:999;}
.c_top a.menu_i{ display:block; position:absolute; z-index:99; width:25px; height:25px; left:10px; top:10px; background:url({:$var_x['path']['tem_dir_url']:}/images/top_menu.png) no-repeat;}
.px{position:relative; height:45px; line-height:45px; text-align:center; color:#fff; font-size:16px;}
.px img{width:18px; margin-left:5px; vertical-align:middle;}
.px_list{position:absolute; width:100%; top:45px; display:none; background:#eee;}
.px_list a{display:block; width:100%; height:40px; line-height:40px; border-bottom:1px solid #ccc; font-size:14px; color:#666; text-align:center;}
.pro{max-width:100%; margin:45px auto 0;}
.pro ul{width:98%; float:inherit;}
.pro ul li{width:100%;}
.pro ul li a{display:block; margin:3px; padding:10px; border:1px solid #ced3d7; border-radius:3px; background:#fff; position:relative;}
.pro ul li a span.p_img{display:block; margin-bottom:5px;}
.pro ul li a span.p_img img{width:100%; vertical-align:bottom;}
.pro ul li a h3{font-size:14px; font-weight:normal; margin:0; padding:0; color:#000; overflow:hidden; white-space:nowrap; text-overflow:ellipsis;}
.pro ul li a p{font-size:14px; color:#ff5366; padding:5px 0;}
.pro ul li a p span{display:inline-block; border-radius:10px; color:#fff; background:#3e3e3e; padding:0 8px; margin-left:5px;}

.pro .che_more{display:block; width:100%; height:40px; line-height:40px; border-bottom:1px solid #ccc; font-size:14px; color:#666; text-align:center;}

.page{width:70%; margin:0 auto; padding:10px 0;}
.page a{width:100px; height:30px; line-height:30px; text-align:center; background:#37c3a9; color:#fff; display:block; float:left;}
.page span{width:100px; height:30px; line-height:30px; text-align:center; background:#c7ccc6; color:#fff; display:block; float:left;}
</style>
<script type="text/javascript">
page = 1;
get_page_data_status = {:if count($mle['product_data']) == 0:}1{:else:}0{:/if:};//0-空闲 1-正在获取

function get_prod_data_page(){
	if(get_page_data_status == 1) return ;
	get_page_data_status = 1;
	$('.che_more').html("正在获取……");
	page++;
	var url = 'http://{:$smarty.server.SERVER_NAME:}{:$smarty.server.REQUEST_URI:}';
	$.post(url, {'action':'get_product', 'page':page}, function(data){
		console.info(data);
		if(data != ''){
			$('#mark_page_data').before(data);
			$('.che_more').html('查看更多&nbsp;<img src="{:$var_x['path']['tem_dir_url']:}/images/check_more.png" />');
			get_page_data_status = 0;
		}else{
			//$('.che_more').hide();
			$('.che_more').html("没有了");
		}
	});
}
//下拉自动加载
mle.fun.scroll_event(auto_load_next_page, 800);
function auto_load_next_page(){
	get_prod_data_page();
}
</script>
</head>

<body>
<div class="c_top">
	<a href="{:$var_x['path']['mleroot_url']:}/mobile/category.php" class="menu_i"></a>
    <div class="px">
    	<span class="pxa"><span>
    	{:if $smarty.get.sort==0:}默认排序{:/if:}
    	{:if $smarty.get.sort==1:}时间从低到高{:/if:}
    	{:if $smarty.get.sort==2:}时间从高到低{:/if:}
    	{:if $smarty.get.sort==3:}销量从低到高{:/if:}
    	{:if $smarty.get.sort==4:}销量从高到低{:/if:}
    	
    	</span><img src="{:$var_x['path']['tem_dir_url']:}/images/xl.png" /></span>
        <div class="px_list">
        	<a href="{:fun::url_replace($mle['imp']['where_url'], 'sort', 0):}">默认排序</a>
        	<a href="{:fun::url_replace($mle['imp']['where_url'], 'sort', 1):}">时间从低到高</a>
            <a href="{:fun::url_replace($mle['imp']['where_url'], 'sort', 2):}">时间从高到低</a>
            <a href="{:fun::url_replace($mle['imp']['where_url'], 'sort', 3):}">销量从低到高</a>
            <a href="{:fun::url_replace($mle['imp']['where_url'], 'sort', 4):}">销量从高到低</a>
        </div>
    </div>
    <script type="text/javascript">
		var $li = $('.px_list').outerHeight(true);
		$('.pxa').toggle(function(){
			$('.px_list').css({height:0}).show();
			$('.px_list').stop(true, true).animate({height:$li},300);
		},
		function(){
			$('.px_list').stop(true, true).animate({height:0},300,function(){$('.px_list').hide()});
		})
	</script>
</div><!----c_top end---------------->

<div class="pro">
	{:include file="product_product_list_data_page.tpl":}
	<div style="clear:both;"></div>
    <div id="mark_page_data" style="display:none;"></div>
	<div style="clear:both;"></div>
	{:if count($mle['product_data']) >0:}
		<a href="javascript:void(0);" onclick="get_shop_data_page();" class="che_more">{:if count($mle['shop_data'])==10:}查看更多&nbsp;<img src="{:$var_x['path']['tem_dir_url']:}/images/check_more.png" />{:else:}没有了{:/if:}</a>
	{:/if:}
</div><!-----pro end----------->

<!--固定屏幕底部导航-->
{:include file="bottom_menu_type_1.tpl":}
</body>
</html>
