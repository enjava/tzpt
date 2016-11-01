

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0">

<title>团队管理</title>

<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}

<script src="{:$var_x['path']['mleroot_url']:}/inc/script/public_fun.js" ></script>{:* 函数库JS *:}

<style type="text/css">

body{padding:0; margin:0; font:normal 100% 微软雅黑; background:#efeff4;}

*{padding:0; margin:0;}

ul li,ol{ list-style:none;}

img{width:100%; border:0;}

a{text-decoration:none; color:#000;}

a:hover{text-decoration:none;}

.top{height:38px; padding-top:7px; background:#fc6846; line-height:45px; position:relative;}

.top img{height:20px; width:auto; position:absolute; left:10px; top:13px;}

.t_sea{width:70%; margin:0 auto; height:31px; background:#ec5a38; border-radius:5px; position:relative;}

.t_sea input[type="search"]{width:100%; height:31px; background:none; text-align:center; border:none; color:#fff; font-size:16px;}

.t_sea input::-webkit-input-placeholder{color:#fff; font-size:16px;}

.t_sea input[type="image"]{height:21px; width:auto; position:absolute; left:5px; top:5px;}

.kh_tit{background:#fff; height:59px; border-bottom:1px solid #eee;}

.kh_tit ol{float:left; width:50%; height:52px; padding-top:8px; line-height:20px; text-align:center; position:relative;}

.kh_tit ol a{font-size:16px; color:#666666;}

.kh_tit ol.active{background:url(images/xl.png) center bottom no-repeat;}

.kh_tit ol.active a{color:#ec5a38;}

.lidf{position:fixed; top:105px; width:100%; left:0; background:#fff; display:none; z-index:999;}

.lidf ul li{height:35px; line-height:35px; padding-left:50px;}

.kh_tit ol.active .lidf ul li a{display:block; height:34px; border-bottom:1px solid #ccc; color:#000; font-size:14px; text-align:left; padding:0 55px 0 5px; color:#000;}

.lidf ul li a span{color:#ec5a38;}

.kh_tit ol.active .lidd ul li a{text-align:right;}

.zg{padding-top:80px; text-align:center; font-size:16px; color:#73737a;}

.zg a.fx{width:70%; height:40px; line-height:40px; text-align:center; border:1px solid #000; border-radius:5px; display:block; margin:30px auto; font-size:16px; color:#73737a; letter-spacing:2px;}

</style>





</head>



<body>

<div class="top">

	<a href="javascript:history.back(-1);"><img src="{:$var_x['path']['tem_dir_url']:}/images/lback.png" /></a>

	<div class="t_sea">

    <form method="get" action="" name="" onsubmit="return check_search();">

    	<input type="search" name="search_keyword" placeholder="搜索会员昵称、id、手机号" value="{:$smarty.get.search_keyword:}"/>

        <input name="" type="image" src="{:$var_x['path']['tem_dir_url']:}/images/ts_btn.png" />

        <input type="hidden" name="page" value="1">

	    <input type="hidden" name="level" value="{:$smarty.get.level:}">

	    <input type="hidden" name="son_type" value="{:$smarty.get.son_type:}">

    </form>

    </div>

</div>



<div class="kh_tit">

	<ol>

    	<a href="javascript:;" class="cli">会员<br />（{:$mle['son']['son_total']['num']:}）</a>

        <div class="lidf">

        	<ul>

            	<li><a href="?son_type=0&level=0">全部客户（{:$mle['son']['son_total']['num']:}）</a></li>

                <li><a href="?son_type=0&level=1">一星会员（<span>{:$mle['son']['son_total']['level_1']['num']:}</span>）</a></li>

                <li><a href="?son_type=0&level=2">二星会员（<span>{:$mle['son']['son_total']['level_2']['num']:}</span>）</a></li>

                <li><a href="?son_type=0&level=3">三星会员（<span>{:$mle['son']['son_total']['level_3']['num']:}</span>）</a></li>

            </ul>

        </div>

    </ol>

   {:if $mle['mem_info']['level'] >= 7:}

    <ol>

    	<a href="javascript:;" class="cli">代理商专属<br />（{:$mle['total_sum']:}）</a>

    	<div class="lidf lidd">

        	<ul>

            	<li><a href="?son_type=1&level=0">全部成员（<span>{:$mle['total_sum']:}</span>）</a></li>

            	{:if $mle['mem_info']['partner_level'] == 0:}

            		<li><a href="?son_type=1&level=1">下属代理（<span>{:$mle['partner_level_2_sum']:}</span>）</a></li>

            	{:/if:}

            </ul>

        </div>

    </ol>

    {:/if:}

    <div style="clear:both;"></div>

</div>

<script type="text/javascript">

$('.cli').click(function(){

        var $li = $(this).next().find('li').outerHeight(true);

        var $leng = $(this).next().find('li').length;

        var $hig = $leng*$li;

        var rest = $(this).attr('data-num');

        if(rest==1){

            $(this).next().stop(true, true).animate({height:0},200,function(){$(this).hide()})

            $(this).removeAttr('data-num');

			$(this).parent().removeClass('active');

        }else{

            $('.cli').next().hide();

            $('.cli').removeAttr('data-num');

            $(this).attr('data-num','1');

            $(this).next().css({height:0}).show();

            $(this).next().stop(true, true).animate({height:$hig},200);

			$('.cli').parent().removeClass('active');

			$(this).parent().addClass('active');

        }

    })

</script>

{:if $mle['par']['son_type']==0:}

	{:include file="my_retail_show_memtype_0.tpl":}

{:else:}

	{:if $mle['par']['level']==0:}

		{:include file="my_retail_show_memtype_1_all_member.tpl":}

	{:else:}

		{:include file="my_retail_show_memtype_1_partner.tpl":}

	{:/if:}

	

{:/if:}





</body>

</html>

