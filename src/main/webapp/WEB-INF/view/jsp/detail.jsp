<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title>智能售卖机 - 酷么加盟</title>
<%@include file="commons/detail_wx_share.jsp"%><%--{:include file="detail_wx_share.tpl":}<%--{:*微信api初始化有延迟，优先加载*:}--%>
<%--<script type="text/javascript">--%>
	<%--var mleroot_url = '{:$var_x['path']['mleroot_url']:}';{:* 网站根目录 *:}--%>
<%--</script>--%>
<link type="text/css" href="${pageContext.request.contextPath}/style/reset.css" rel="stylesheet" />
<link type="text/css" href="${pageContext.request.contextPath}/style/common.css" rel="stylesheet" />
<link type="text/css" href="${pageContext.request.contextPath}/style/widget_menu.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/style/slider_1.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/inc/script/jquery.js" ></script><%--{:* jquery *:}--%>
<script src="${pageContext.request.contextPath}/script/public_fun.js" ></script><%--{:* 函数库JS *:}--%>
<script src="${pageContext.request.contextPath}/script/api/cart.js" ></script><%--{:* 购物车JS *:}--%>
<script src="${pageContext.request.contextPath}/script/page/detail.js" ></script><%--{:* page.detail JS *:}--%>
<script src="${pageContext.request.contextPath}/script/swipe_min.js" ></script>

<style type="text/css">
body{background:#f1f1f1;}
.pro_t{background:#fff; border:1px solid #ced3d7; margin-bottom:7px;}
.pro_t ul{padding:10px;}
.pro_t ul li{padding:6px 3px;}
.pro_t ul li h3{font-size:16px; font-weight:normal; padding:0 65px 10px 0;}
.pro_t ul li .price{color:#ff5366; font-size:16px; line-height:24px; padding-bottom:5px;}
.pro_t ul li .price span{display:block; color:#7f8c8d; font-size:12px; text-decoration:line-through;}
.pro_t ul li p{font-size:12px; color:#5f646e; line-height:20px;}
.pro_t ul li p label{float:right;}
.pro_t ul li table{margin-top:5px; font-size:14px; color:#4b4b4b;}
.pro_t a.sc{display:block; width:60px; padding-left:5px; text-align:center; font-size:12px; border-left:1px solid #ced3d7; position:absolute; top:0px; right:0; color:#666;}
.num_box{width:105px; height:32px; border:1px solid #a6a8ac; position:relative; margin:0 10px;}
.num_box a.add{display:block; position:absolute; left:0; top:0; width:30px; height:30px; border-right:1px solid #a6a8ac; line-height:30px; text-align:center; background:#eee; color:#000;}
.num_box a.jj{display:block; position:absolute; right:0; top:0; width:30px; height:30px; border-left:1px solid #a6a8ac; line-height:30px; text-align:center; background:#eee; color:#000;}
.num_box input{width:100%; height:30px; text-align:center; font-size:18px; font-weight:bold; border:none;}
.pro_con{background:#fff; border:1px solid #ced3d7; margin-bottom:70px;}
.menubox{border-bottom:1px solid #ced3d7;}
.menubox ul li{height:40px; line-height:40px; text-align:center; width:33.33333%; border-right:1px solid #ced3d7; float:left; font-size:14px; color:#4a4a4a;}
.menubox ul li.hover{color:#ff5366;}
#con_menu_1 p{padding:10px 5px; font-size:14px; color:#666; border-bottom:1px solid #ced3d7;}
#con_menu_1 p span{color:#999;}
#con_menu_3{font-size:14px; line-height:22px;}
#con_menu_2 img{width:100% !important; height:auto !important;}
/****购买按钮************/
.buy_box{background:#e3e3e3; border:1px solid #ced3d7; padding:10px; width:100%; position:fixed; box-sizing:border-box; left:0; bottom:0;}
.buy_box a{width:80%; height:40px; line-height:40px; text-align:center; border-radius:5px; color:#fff; font-size:16px;}
.buy_box a.add_c{background:#f69555;}
.buy_box a.buy_n{ background:#ff5366; display:block; margin:0 auto;}
.cart_num{position:absolute; width:40px; height:40px; top:10px; left:10px; border:1px solid #ccc; border-radius:3px; background:url(${pageContext.request.contextPath}/image/cart_ico.png) center center no-repeat;}
.p_num{background:#f00; color:#fff; font-size:12px; display:block; border-radius:50%; position:absolute; right:-8px; top:-8px; padding:0 4px;}
/*评论*/
.check,.com{border:1px solid #ccc; border-radius:3px; width:96%; margin:10px auto; font-size:0.875em;}
.c_title{padding:0 10px; height:35px; line-height:35px; font-size:16px;}
.c_text div{ padding:5px; font-size:0.75em; border-bottom:1px solid #ddd;}
.c_txt form{width:96%; margin:0 auto; padding-bottom:10px;}
.c_txt textarea{height:120px; width:100%; color:#ccc; box-shadow:inset 0 1px 4px rgba(0,0,0,.2); border-radius:0.6em; padding:0.4em; margin:0.5em 0; box-sizing: border-box;}
.c_txt input{ width:100%; height:35px; color:#fff; border-radius:3px; font-size:14px; border:1px solid #ccc; letter-spacing:2px; background:#313131;}
/*评论end*/

.intro_detail img{width:100% !important; height:auto !important;}/*详细信息*/
</style>
</head>

<body>
	<div style="display:none;" id="share_qr">
		<a href="javascript:void(0);" onclick="$(this).parent().attr('style','display:none;')">
			<div style="position:fixed; z-index:99999; width:100%; top:0; height:100%; background:url(${pageContext.request.contextPath}/image/h_fxBG.png);">
			<div style="text-align:center; height:100%; width:100%; ">
			<div style="vertical-align:middle; position:relative; top:250px;">
				<span style="color:#FFF;">发送给好友扫二维码，即可查看商品</span>
				<img id="share_qr_img" style="width:274px; " src="" />
			</div>

			</div>
			<!-- <img style="width:274px; float:right; left:50px; bottom:90px; position:fixed;" src="{:$web['path']:}image/tip/memo.png" /> -->
			</div>
			
		</a>
	</div>
<!--图片滚播-->
<div data-role="widget" class="slider_1">
    <div id="slider_1" class="slider_1_wrap">
        <ul >
	        <%--{:foreach $mle['product_data']['picture'] as $picture:}--%>
                <li>
                    <img src="${pageContext.request.contextPath}/image/product/330B_01.jpg" />
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/image/product/330B_02.jpg" />
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/image/product/330B_04.jpg" />
                </li>

	        <%--{:/foreach:}--%>
        </ul>
        <div id="slider_1_indicate" class="slider_1_indicate"></div>
    </div>
    <script type="text/javascript">
        var slider_1 = (function () {
            var that = {};
            that.initSlider = function () {
                that.slider = new Swipe(document.getElementById('slider_1'), {
                    speed: 500,
                    loop: true,
                    auto:3000,
                    indicate: "#slider_1_indicate"
                });
                return that;
            }
            return that;
        })().initSlider();
    </script>
</div>

<div class="pro_t">
	<ul>
    	<li style="border-bottom:1px solid #ced3d7; position:relative;"">
        	<h3>自动售货机</h3>
        	<%--{:if $smarty.get.pagetype == 'iframe':}--%>
           <%--{:* 在iframe框架中显示 *:}share_qr_img--%>
        		<%--<a onclick="$(parent.document.getElementById('share_qr_img')).attr('src', '{:$var_x['path']['mleroot_url']:}/api/qr_api.php?action=create_qr&content={:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$mle['product_data']['id']:}&u=&logo_url={:$var_x['path']['mleroot_url']:}/{:$mle['product_data']['picture'][0]:}&size=16'); $(parent.document.getElementById('share_qr_prod_17')).show();" href="javascript:void(0);" class="sc" style="right:62px;">--%>
        	<%--{:else:}--%>
        		<a onclick="$('#share_qr_img').attr('src', '{:$var_x['path']['mleroot_url']:}/api/qr_api.php?action=create_qr&content={:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$mle['product_data']['id']:}&u=&logo_url={:$var_x['path']['mleroot_url']:}/{:$mle['product_data']['picture'][0]:}&size=16'); $('#share_qr').show();" href="javascript:void(0);" class="sc" style="right:62px;">
        	<%--{:/if:}--%>
        	<img style="width:19px; height:19px;" src="${pageContext.request.contextPath}/image/share.png" />
        	<br /><span>分享</span>
        	</a>
        	<a onclick="click_collect_a({:$mle['product_data']['id']:});" href="javascript:void(0);" class="sc" >
        	<img style="width:19px; height:19px;" id="colltect_status_img" src="${pageContext.request.contextPath}/image/sc_active.png" no_collect_src="${pageContext.request.contextPath}/image/sc.png" collect_src="${pageContext.request.contextPath}/image/sc_active.png" is_collect="{:if $mle['is_collect_prod'] == true:}1{:else:}0{:/if:} "/>
        	<br /><span id="colltect_status_text">收藏</span>
        	</a>
            <div class="price">
            <%--{:if $mle['product_data']['is_advance_prod'] == 1:}--%>
            	<%--新品预告--%>
            <%--{:else:}--%>
	            <%--{:if $mle['product_data']['price'] == $mle['product_data']['deal_price']:}活动价{:else:}重消价格{:/if:}：￥{:$mle['product_data']['deal_price']:}--%>
				<%--{:if $mle['product_data']['price_ofintegral']>0:}--%>
					<%--{:if $mle['product_data']['deal_price']>0:}&nbsp;+&nbsp;{:/if:}--%>
					<%--<em>{:$mle['product_data']['price_ofintegral']:}积分</em> --%>
				<%--{:/if:}--%>
		           <%--{:if $mle['product_data']['market_price'] != $mle['product_data']['deal_price']:}--%>
		           	<%--<span>原价：￥{:$mle['product_data']['market_price']:}</span>--%>
		        <%--{:/if:}--%>
	        <%--{:/if:}--%>
            </div>
            <p><!-- 快递&nbsp;&nbsp;免运费 -->&nbsp;&nbsp;<label>销量&nbsp;&nbsp;51件</label></p>
        </li>
        <li>
        	<table cellpadding="0" cellspacing="0">
            	<tr>
                	<td>数量</td>
                    <td>
                    	<div class="num_box">
                        	<a href="javascript:void(0);" class="add" id="jh">-</a>
                            <input type="text" value="1" id="pnum" readonly/>
                            <a href="javascript:void(0);" class="jj" id="add">+</a>
                        </div>
                    </td>
                    <td>100</td>
                    <%--(剩余{:if $mle['product_data']['stock']<=0:} 0（库存不足，无法购买）{:else:}{:$mle['product_data']['stock']:}{:/if:})--%>
                </tr>
            </table>
        </li>
    </ul>
</div>

<div class="pro_con">
	<script>
	  function setTab(name,cursel,n){
	  for(i=1;i<=n;i++){
	  var menu=document.getElementById(name+i);
	  var con=document.getElementById("con_"+name+"_"+i);
	  menu.className=i==cursel?"hover":"";
	  con.style.display=i==cursel?"block":"none";
	  }
	  }
	</script>
	<%--{:if $smarty.get.pagetype == 'iframe':}--%>
    <%--{:* 在iframe框架中显示 *:}--%>
		<div class="buy_box" style="position:static;">
			<%--{:if $mle['product_data']['is_advance_prod'] == 1:}--%>
				<%--<a onclick="alert('新品预告，即将上架');" href="javascript:void(0);" class="buy_n">新品预告，即将上架</a>--%>
			<%--{:else:}--%>
				<%--<a onclick="mle.fun.post_from('{:$var_x['path']['mleroot_url']:}/mobile/cart.php', {'action':'at_buy', 'product_id':'{:$mle['product_data']['id']:}', 'prod_num':$('#pnum').attr('value')});" href="javascript:void(0);" class="buy_n">立即购买</a>--%>
			<%--{:/if:}--%>
		    <div style="clear:both;"></div>
		</div>
	<%--{:/if:}--%>
    <div class="menubox">
      <ul>
        <li id="menu1" onClick="setTab('menu',1,3)" >商品属性</li>
        <li id="menu2" onClick="setTab('menu',2,3)" class="hover">图文详情</li>
        <li id="menu3" onClick="setTab('menu',3,3)" >评论</li>
        <div style="clear:both;"></div>
      </ul>
    </div>
    <div style="padding:10px; font-size:14px; line-height:22px;">
        <div id="con_menu_1" style="display:none" class="hover">
          <p>商品货号：<span>CM398</span></p>
          <p>所属品牌：<span>酷么</span></p>
          <p>商品规格：<span>综合机型</span></p>
        </div>
        <div id="con_menu_2" class="intro_detail">
            <%--{:if $mle['product_data']['intro_detail']!='':}--%>
         	   <%--{:$mle['product_data']['intro_detail']:}--%>
            <%--{:else:}--%>
         	   暂无介绍
            <%--{:/if:}--%>
		</div>
		
        <div id="con_menu_3">
	        <!-----评价----->
	        <script type="text/javascript">
				function chg(id_num){ 
					var oa = document.getElementById(id_num); 
					var oc = document.getElementById(id_num+"_img");
					if(oa.style.display == "block"){ 
						oa.style.display = "none"; 
						oc.src = "${pageContext.request.contextPath}/image/comment_sub1.png";
					}else{ 
						oa.style.display = "block"; 
						oc.src = "${pageContext.request.contextPath}/image/comment_sub2.png";
					} 
				}
			</script>
        	<!--<center>暂无评价！</center>-->
            <!--查看评论-->
            <%--{:foreach $mle['comment_data'] as $comment_value:}--%>
              <%--<div class="c_text">--%>
                  <%--<div style="font-size:0.75em;">评论：{:$comment_value['content']:}<br /><span style="color:#666;">时间：{:date('Y-m-d', $comment_value['addtime']):}</span></div>--%>
              <%--</div>--%>
            <%--{:/foreach:}--%>
             
            <!--我要评论-->
            <%--{:if $mle['comment_ticket_order_id']>0:}--%>
            <div class="com">
                <div class="c_title" onClick="return chg('test1');" style="cursor:pointer;">
                    我要评论
                    <a href="javascript:void(0);" id="test1_a"><img id="test1_img" style="width:22px; float:right; padding-top:7px;" src="${pageContext.request.contextPath}/image/comment_sub2.png" /></a>
                    <br class="clear" />
                </div>
                <div class="c_txt" id="test1" style="display:block;">
                    <form name="form_comment_reply" method="post" action="{:$var_x['path']['mleroot_url']:}/mobile/comment.php" onsubmit="return check_comment();" id="view_comment_form" >
                        <!--<input type="text" id="quote" name="quote" value="{:$lang['page']['name'][0]:}"  onfocus="if(this.value == '{:$lang['page']['name'][0]:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['name'][0]:}';this.style.color = '#999';}"/>-->
                        <input type="hidden" name="order_id" value="{:$mle['comment_ticket_order_id']:}" >
                        <input type="hidden" name="prod_id" value="{:$mle['product_data']['id']:}" >
                        <textarea name="comment_content" id="comment_content" onkeyup="if(value.length>1000){value=value.substr(0,1000);}"></textarea>
                        <input type="submit" value="提交">
                    </form>
                </div>
            </div>
            <%--{:/if:}--%>
        </div>
        <!----评价 end-------->
    </div>
</div>
<%--{:if $smarty.get.pagetype != 'iframe':}--%>
    <%--{:* 在iframe框架中不显示 *:}--%>
<div class="buy_box" >
<!-- 
	<div class="cart_num" onclick="mle.fun.toUrl('cart.php');">
    	<span class="p_num">{:count($mle['re_cart_data']):}</span>
    </div>

	<a onclick="cart_add_product({:$mle['product_data']['id']:}, $('#pnum').attr('value'));" href="javascript:void(0);" class="add_c">加入购物车</a>
-->
	<%--{:if $mle['product_data']['is_advance_prod'] == 1:}--%>
		<%--<a onclick="alert('新品预告，即将上架');" href="javascript:void(0);" class="buy_n">新品预告，即将上架</a>--%>
	<%--{:else:}--%>
		<a onclick="mle.fun.post_from('{:$var_x['path']['mleroot_url']:}/mobile/cart.php', {'action':'at_buy', 'product_id':'{:$mle['product_data']['id']:}', 'prod_num':$('#pnum').attr('value')});" href="javascript:void(0);" class="buy_n">立即购买</a>
	<%--{:/if:}--%>
    
    
    <div style="clear:both;"></div>
</div>
<%--{:/if:}--%>
<!--留言以及返回顶部按钮-->
<div data-widget="tools" data-tools="tools_widget" id="tools_widget" class="tools_widget">
    <div class="widget_wrap">
        <ul class="tools_widget_wrap">
            <li>
                <a href="javascript:window.scrollTo(0,0);" id="tools_widget_goTop" class="tools_widget_goTop">顶部</a>
            </li>
            <li id="tools_kfli">
                <a href="guestbook.php" class="tolls_widget_message">留言</a>
            </li>
        </ul>
    </div>
</div>
<script type="text/javascript">
	//默认不可见
	$('#tools_widget_goTop').css("display","none");
	$(window).scroll(function() {//监听页面上下滚动
		var scroll_top = $(document).scrollTop();
		if(scroll_top == 0){//页面位于顶部时
			$('#tools_widget_goTop').css("display","none");
		}else{
			$("#tools_widget_goTop").css("display", "");
		}
	});
</script>
</body>
</html>
<script type="text/javascript">
	function check_comment(){
		if($('#comment_content').val()==''){
			alert('请输入评论内容');
		return false;
		}
		return true;
	}
	$(function(){
		var  window_width = $(window.parent.document).width();
		if(window_width>0){
			$('body').css('width', window_width + 'px');
		}
	});
</script>