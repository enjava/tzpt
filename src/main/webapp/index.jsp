<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title>酷么加盟</title>
    <%@include file="WEB-INF/view/jsp/commons/index_head.jspf" %>
    <%--{:*微信api初始化有延迟，优先加载*:}--%>
<script src="${pageContext.request.contextPath}/script/jquery.js" ></script>
<link type="text/css" href="${pageContext.request.contextPath}/style/common.css" rel="stylesheet" />
<link type="text/css" href="${pageContext.request.contextPath}/style/home.css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath}/script/swipe_min.js"></script>
<style type="text/css">
	body{ margin: 0; padding: 0;}
	.page img{width:100%; padding:0px; margin:0px;}
	.searh_div{position:relative;}
	{:if strlen($mle['region_data_ofqu']['region_name'])<=6:}
		.place_div{position:absolute; padding:0 0 0 7%; left:0%; top:29%; width:13%; height:69%; font-size:18px; color:#fff; }
	{:else:}
		.place_div{position:absolute; padding:0 0 0 7%; left:0%; top:15%; width:13%; height:69%; font-size:12px; color:#fff; }
	{:/if:}
	.search_keywork{position:absolute; left:22%; top:17%; border-radius:8px; width:65%; height:65%; font-size:18px; background-color:#C7C8CA; border:0px; color:#888888; }
	.search_a{position:absolute; left:80%; top:17%; width:18%; height:70%;}
	/*顶部消费提示*/
	.top_cost_tip{ width:100%; height:50px; line-height:50px; }
	.top_cost_tip .text_tip{ width:85%; height:50px; line-height:50px; background:#fffbf0; float:left; }
	.top_cost_tip .text_tip .msg{ color:#000; text-align:center; display:block; margin:0 auto; font-size:15px; }
	.top_cost_tip .text_tip .price{ color:#C00; font-weight:bold; font-size:19px; padding:0 5px;}

	.top_cost_tip .button{ width:15%; height:50px; background:#E8E8E8; float:left; }
	.top_cost_tip .button .text{ width:50px; height:50px; line-height:15px; display:block; margin:0 auto; text-align:center; padding-top:10px; color:#FF0000; font-weight:bold; }
</style>
</head>
<body>
	<div style="display:none;" id="loading_back">
		<a href="javascript:void(0);" onclick="$(this).parent().attr('style','display:none;')">
			<div style="position:fixed; z-index:99999; width:100%; top:0; height:100%; background:url(${pageContext.request.contextPath}/images/h_fxBG.png);"><!-- <img style="width:274px; float:right; left:50px; bottom:90px; position:fixed;" src="{:$web['path']:}images/tip/memo.png" /> --></div>
		</a>
	</div>
	<div class="page">
		<div class="searh_div">
			<img src="${pageContext.request.contextPath}/image/top_search.jpg" />
			<a href="#">
				<div class="place_div">
					<span></span>
				</div>
			</a>
			<form action="#" method="get" id="search_form">
				<input type="search" name="keywords" placeholder="搜索你想要的智能商品~~~" value="" class="search_keywork" id="form_keywords"/>
				<input type="hidden" name="web_title" value="" id="form_web_title"/>
			</form>
			<a href="javascript:void(0);" class="search_a" onclick="$('#form_web_title').val($('#form_keywords').val()); $('#search_form').submit();"></a>
		</div>



<img src="" srcX="${pageContext.request.contextPath}/image/03.jpg" heightX='644'  border="0" usemap="#Map3" class="index_prod_img" onclick="javascript:;"/>
      <map name="#Map3">
        <area shape="rect" coords="3,4,246,133" href="#">
        <area shape="rect" coords="250,4,499,131" href="#">
        <area shape="rect" coords="504,4,747,130" href="#">
      </map>

        <div data-role="widget" data-widget="slider_1_9136" class="slider_1">
            <section class="widget_wrap">
                <div id="slider_2_wrap_9136" class="slider_1_wrap">
                    <ul>
	                    	<li>
	                            <a href="#"><img src="${pageContext.request.contextPath}/image/06_1.jpg"  onclick="javascript:;" /></a>
	                        </li>
	                        <li>
	                            <a href="#"><img src="${pageContext.request.contextPath}/image/06_2.jpg" onclick="javascript:;" /></a>
	                        </li>
                    </ul>
                    <div id="slider_1_indicate_9136" class="slider_1_indicate"></div>
                </div>
            </section>
            <!--图片轮播脚本/需要导入swipe_min.js-->
            <script type="text/javascript">
                var slider_2 = (function () {
                    var that = {};
                    that.initSlider = function () {
                        that.slider = new Swipe(document.getElementById('slider_2_wrap_9136'), {
                            speed: 500,
                            loop: true,
                            auto:3000,
                            indicate: "#slider_2_indicate_9136"
                        });
                        return that;
                    }
                    return that;
                })().initSlider();
            </script>
		</div>
      
      <!-- <a href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id=107"><img src="" srcX="${pageContext.request.contextPath}/image/06_2.jpg" class="index_prod_img" onclick="javascript:;" /></a> -->
      
<img src="" srcX="${pageContext.request.contextPath}/image/07.jpg" border="0" usemap="#Map7" class="index_prod_img" onclick="javascript:;" />
<map name="Map7">
  <area shape="rect" coords="5,78,247,399" href="JavaScript:;">
  <area shape="rect" coords="5,418,247,731" href="JavaScript:;">
  <area shape="rect" coords="507,77,747,397" href="JavaScript:;">
  <area shape="rect" coords="255,77,496,397" href="JavaScript:;">
  <area shape="rect" coords="255,417,496,731" href="JavaScript:;">
  <area shape="rect" coords="505,409,746,730" href="JavaScript:;">
</map>
<a href="#"><img src="" srcX="${pageContext.request.contextPath}/image/10.jpg" usemap="#Map10"  class="index_prod_img" onclick="javascript:;" /></a>
<img src="" srcX="${pageContext.request.contextPath}/image/11.jpg" border="0" usemap="#Map11" class="index_prod_img" onclick="javascript:;" />
<map name="Map11">
  <area shape="rect" coords="3,63,185,286" href="JavaScript:;">
  <area shape="rect" coords="193,67,367,280" href="JavaScript:;">
  <area shape="rect" coords="380,66,555,280" href="JavaScript:;">
  <area shape="rect" coords="562,65,742,280" href="JavaScript:;">
  <area shape="rect" coords="247,285,502,355" href="JavaScript:;" onclick="$('html,body').animate({scrollTop:0},200);" is_fun="1">
</map>

<div id="bottom_div_br" style="height:45px;"></div>
<!--固定屏幕底部导航-->
<%@include file="WEB-INF/view/jsp/commons/bottom_menu_type_1.jspf"%>
		<!--留言以及返回顶部按钮-->
        <div data-widget="tools" data-tools="tools_widget" id="tools_widget" class="tools_widget">
        	<div class="widget_wrap">
            	<ul class="tools_widget_wrap">
                	<li id="tools_widget_goTop" >
                    	<a href="javascript:window.scrollTo(0,0);" class="tools_widget_goTop">顶部</a>
                    </li>
                    <!-- 
                    <li id="tools_kfli">
                    	<a href="" class="tolls_widget_message">客服</a>
                    </li>
                     -->
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
<script type="text/javascript">
var var_x = {
		'path':{
			'mleroot_url' : '{:$var_x['path']['mleroot_url']:}',
			'tem_dir_url' : '${pageContext.request.contextPath}',
		},
		'data':{
			'shop_id' : '{:$mle['par']['shop_id']:}',
			'time_id' : '{:$mle['par']['time_id']:}',
		}
	};
</script>
<script type="text/javascript">
	//跳转前黑屏
	$('area').on('click',function(){
		if($(this).attr('is_fun') == '1'){
			return true;
		}
		
		$('#loading_back').show();
		var url_ship = $(this).attr('href');
		setTimeout(function(){
			location = url_ship;
		},50);//延时3秒 
		return false;
	});

</script>
<script type="text/javascript">
	//图片加载特效
	var ratio = $(document).width() / 750;
	var img_i = 0;
	$('.index_prod_img').each(function(){
		img_i++;
		setTimeout( init_img_special( this ), img_i * 100 );
	});

	function init_img_special(img_obj){
		//
		var Map_load_html = '';//加载中特效html
		//
		var Map_Sid = $(img_obj).attr('usemap');//标示
		Map_Sid = Map_Sid.substr(1);
		//
		var height = $(img_obj).attr('heightX')  * ratio / 2 - 60;
		if( height < 0) height = 0;
		Map_load_html += '<div class="spinner" id="' + Map_Sid + '" style="margin: ' + height + 'px auto;">';
		Map_load_html += '		<div class="double-bounce1"></div>';
		Map_load_html += '		<div class="double-bounce2"></div>';
		Map_load_html += '</div>';
		$(img_obj).before(Map_load_html);
		$(img_obj).attr( 'onload',  "$('#" + Map_Sid + "').hide(500); $(this).show(500); " );
		$(img_obj).attr( 'src', $(img_obj).attr('srcx') );
	}
</script>
</html>