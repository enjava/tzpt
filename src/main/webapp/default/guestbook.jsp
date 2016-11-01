<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>{:$lang['page']['title']:}</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<meta charset="utf-8">
<meta content="" name="description">
<meta content="" name="keywords">
<meta content="swan.xie" name="author">
<meta content="application/xhtml+xml;charset=UTF-8" http-equiv="Content-Type">
<meta content="telephone=no, address=no" name="format-detection">
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/reset.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/common.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/home.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/index.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/widget_menu.css" rel="stylesheet" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
<script type="text/javascript">
$(function(){
	// 文本域交互样式
	//$('.form .input').add('textarea').focus(function(){$(this).css({'border-color':'#40B3FF','background-color':'#E5F5FF'});});
	//$('.form .input').add('textarea').blur(function(){$(this).css({'border-color':'#C8C8FF','background-color':'#FFFFFF'});});
	// 表单检验
	$('#guestbook').submit(function(){
		// 非必填项初始化
		$('#phone').val() == '{:$lang['page']['form'][4]:}' && $('#phone').val('');
		$('#fax').val() == '{:$lang['page']['form'][5]:}' && $('#fax').val('');
		$('#company').val() == '{:$lang['page']['form'][6]:}' && $('#company').val('');
		$('#address').val() == '{:$lang['page']['form'][7]:}' && $('#address').val('');
		$('#qq').val() == '{:$lang['page']['form'][8]:}' && $('#qq').val('');
		
		// 必填项检测
		var s = true;
		if($('#title').val() == '{:$lang['page']['form'][0]:}' || $('#title').val() == ''){$('#title').css({'border-color':'#F60','background-color':'#FFF2F2','color':'#F33'}); s = false;}
		if($('#content').val() == '{:$lang['page']['form'][1]:}' || $('#content').val() == ''){$('#content').css({'border-color':'#F60','background-color':'#FFF2F2','color':'#F33'}); s = false;}
		if($('#nickname').val() == '{:$lang['page']['form'][2]:}' || $('#nickname').val() == ''){$('#nickname').css({'border-color':'#F60','background-color':'#FFF2F2','color':'#F33'}); s = false;}
		if($('#email').val().match(/^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/) == null){$('#email').css({'border-color':'#F60','background-color':'#FFF2F2','color':'#F33'}); s = false;}
				return s;
	});
});
</script>
<style type="text/css">
a{font-family:"微软雅黑"; font-weight:normal; text-decoration:none; color:#333; font-size:14px;}
body{background:#f0f0f0;}
.div_ly{width:100%; height:auto; margin:0 0 10px;}
.div_ly ul{width:100%; height:40px;  border-bottom:solid 2px #1C1C1C;}
.div_ly ul li{width:50%; height:38px; display:block; float:left; overflow:hidden;}
.div_ly ul li a{display:block; width:100%; height:40px; line-height:40px; font-size:14px; text-align:center; background:#f0f0f0;}
.div_ly ul li.yes {padding:0;border:none;}
.div_ly ul li.yes a{color:#FFF; background:#1C1C1C;}
.no { display:none;}
.div_ly #test0{width:94%; height:auto; margin:15px auto 0; min-height:600px;}
.div_ly #test0 ul{width:100%; height:auto}
.div_ly #test0 ul li{width:100%; height:auto; display:block; padding:3px 2%; margin:0 auto 10px; border:solid 1px #CCCCCC; border-radius:5px; background:#fff;}
.div_ly #test0 ul li p{width:100%; height:auto; margin:0; padding:0; color:#333; font-size:13px; border-bottom:solid 1px #f1f1f1;}
.div_ly #test0 ul li div{width:100%; height:auto; font-size:12px; color:#777; margin:5px auto 0;}
.div_ly #test1{width:94%; height:auto; margin:15px auto 0; min-height:550px;}
.div_ly #test1 form{width:100%; height:auto; margin:0; padding:0;}
.div_ly #test1 input{display:block; width:100%; height:40px; border:none; margin:10px 0 0; padding:0 3%; background:#fff; color:#999; font-size:14px;}
.div_ly #test1 textarea{display:block; width:100%; height:140px; border:none; margin:10px 0 0; padding:5px 3%; background:#fff; color:#999; font-size:14px;}
.div_ly #test1 #bot_tj{width:60%; height:40px; color:#FFF; margin:20px auto 0; background:-webkit-gradient(linear, 0 30%, 0 100%, from(#1C1C1C), to(#1C1C1C));}
</style>  
</head>
<body onselectstart="return true;" ondragstart="return false;">
<div data-role="container" class="container usercenter">
	<div class="div_ly">
        <ul id="menu">
            <li class="yes" onclick="javascript:test_item(0);"><a href="Javascript: void(0)" onfocus="this.blur()">{:$lang['page']['check']:}</a></li>
            <li onclick="javascript:test_item(1);"><a href="Javascript: void(0)" onfocus="this.blur()">{:$lang['page']['need']:}</a></li>   
        </ul>
    
        <div class="content" id="test0">
            {:foreach msg_data(5) as $msg:}
            <ul>
                <li>
                    <p><span>{:$lang['page']['name']:}{:$msg['nickname']:}</span><span style="float:right">{:date('Y-m-d H:i:s',$msg['addtime']):}</span></p>
                    <div>{:if $msg['visible'] != 1:}{:$lang['page']['content']:}{:$msg['content']:}{:else:}<font color="#999">{:$lang['page']['private']:}</font>{:/if:}</div>
                    {:if $msg['reply'] != '':}<!--管理员回复-->
                    <div style="border-top:solid 1px #CCCCCC; color:#333; padding:5px 0">				
                           <font color="#CC0000">{:$lang['page']['admin']:}</font>{:$msg['reply']:}
                           <span style="float:right; font-size:12px">{:date('Y-m-d H:i:s',$msg['replytime']):}</span>
                     </div>
                     {:/if:}
                </li>              
            </ul> 
            {:foreachelse:}
            <div>{:$lang['page']['notdata']:}</div>
            {:/foreach:}
            <div style="clear:both"></div>
        </div>
        <div id="test1" class="no">
            <form method="post" action="guestbook.php" name="guestbook" id="guestbook">
                <input type="text" class="input" name="title" id="title" maxlength="100" value="{:$lang['page']['form'][0]:}" onfocus="if(this.value == '{:$lang['page']['form'][0]:}'){this.value = '';}" onblur="if(this.value==''){this.value='{:$lang['page']['form'][0]:}';}" />
				<input type="text" class="input" name="phone" id="phone" maxlength="20" value="{:$lang['page']['form'][4]:}" onfocus="if(this.value == '{:$lang['page']['form'][4]:}'){this.value = '';}" onblur="if(this.value==''){this.value='{:$lang['page']['form'][4]:}';}" />
				<textarea name="content" id="content" onkeyup="if(value.length>1000){value=value.substr(0,1000);}" onfocus="if(this.value == '{:$lang['page']['form'][1]:}'){this.value = '';}" onblur="if(this.value==''){this.value='{:$lang['page']['form'][1]:}';}">{:$lang['page']['form'][1]:}</textarea>
				<input type="text" class="input" name="nickname" id="nickname" maxlength="50" value="{:$lang['page']['form'][2]:}" onfocus="if(this.value == '{:$lang['page']['form'][2]:}'){this.value = '';}" onblur="if(this.value==''){this.value='{:$lang['page']['form'][2]:}';}" />
				<input type="text" class="input" name="email" id="email" maxlength="50" value="{:$lang['page']['form'][3]:}" onfocus="if(this.value == '{:$lang['page']['form'][3]:}'){this.value = '';}" onblur="if(this.value==''){this.value='{:$lang['page']['form'][3]:}';}" />
				<input type="text" class="input" name="captcha" id="captcha" maxlength="12" value="{:$lang['page']['form'][9]:}" onfocus="if(this.value == '{:$lang['page']['form'][9]:}'){this.value = '';this.style.color = '#000';}; document.getElementById('siimage_div').style.display='block';" onblur="if(this.value==''){this.value='{:$lang['page']['form'][9]:}';this.style.color = '#999';}" onchange="document.getElementById('siimage_div').style.display='none'" />
				<a href="#" onClick="document.getElementById('siimage').src = '../inc/include/captcha.php?sid=' + Math.random(); return false;"><img id="siimage" src="../inc/include/captcha.php?sid=1421746081" style="margin-top:10px;"/></a>{:$lang['page']['click']:}
				<input id="bot_tj" value="{:$lang['page']['form'][17]:}" type="submit" />
            </form>
        </div>
	</div>         

	<script type="text/javascript" language="javascript"> 
        function test_item(n){
            var menu = document.getElementById("menu");
            var menuli = menu.getElementsByTagName("li");
            for(var i = 0; i< menuli.length;i++){
                menuli[i].className= "";
                menuli[n].className="yes";
                document.getElementById("test"+ i).className = "no";
                document.getElementById("test"+ n).className = "content";
            }
        }
    </script>
    
</div>
<!--固定屏幕底部导航-->
        {:include file="bottom_menu_type_1.tpl":}
</body>
</html>