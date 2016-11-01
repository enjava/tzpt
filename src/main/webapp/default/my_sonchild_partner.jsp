<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>会员中心</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
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
.rj_list ul li span{ float:right; display:inline-block; padding-top:8px;}
.rj_list ul li span img{width:23px;}
</style>
</head>

<body>
<div class="top">
	<table width="100%" cellpadding="0" cellspacing="0">
    	<tr>
        	<td width="120" align="center"><img src="{:$mle['son_info_data']['headimg']:}" /></td>
            <td>
            <span>
	            会员ID：{:$mle['son_info_data']['id']:}<br />
	            昵称：{:$mle['son_info_data']['name']:}<br />
	            关注时间：{:$mle['son_info_data']['subscribe_time']:}<br />
	            会员等级：{:member::get_level_toname($mle['son_info_data']['level']):}<br />
	            </span>
            </td>
        </tr>
    </table>
</div>
<div class="yj">
	<span>累计消费：￥{:$mle['son_info_data']['cost_money']:}元</span>
    <span style="border-left:1px solid #fff;">贡献佣金：￥{:$mle['total']['give_kickback']:}元</span>
</div>
<div style="padding:15px 0 25px;">
<div class="fx_box"><!--我的会员---------->
	<a class="fx" href="javascript:;" onClick="return chg('test0');">
    	<img src="{:$var_x['path']['tem_dir_url']:}/images/zk_ico2.png" id="test0_img" />
        他的一级会员
        <span>{:$mle['sonchild']['son_total']['level_1']['num']:}人</span>
    </a>
    <div class="rj_list" id="test0">
    	<ul>
    	{:foreach $mle['sonchild']['sonchild_tree_data']['level_1'] as $sonchild_tree_val:}
        	<li style="border:0; border-top-left-radius:8px; border-top-right-radius:8px;">
            	<img src="{:$var_x['path']['tem_dir_url']:}/images/hy_ico.png" />{:$sonchild_tree_val['join_m_members']['name']:}<span></span>
            </li>
        {:foreachelse:}
            <li style="border:0; border-top-left-radius:8px; border-top-right-radius:8px;">
            	<img src="{:$var_x['path']['tem_dir_url']:}/images/hy_ico.png" />暂无<span></span>
            </li>
        {:/foreach:}
        </ul>
    </div>
</div>
<div class="fx_box"><!--我的推广---------->
	<a class="fx" href="javascript:;" onClick="return chg('test1');">
    	<img src="{:$var_x['path']['tem_dir_url']:}/images/zk_ico2.png" id="test1_img" />
        他的二级会员
        <span>{:$mle['sonchild']['son_total']['level_2']['num']:}人</span>
    </a>
    <div class="rj_list" id="test1">
    	<ul>
    	{:foreach $mle['sonchild']['sonchild_tree_data']['level_2'] as $sonchild_tree_val:}
        	<li style="border:0; border-top-left-radius:8px; border-top-right-radius:8px;">
            	<img src="{:$var_x['path']['tem_dir_url']:}/images/hy_ico.png" />{:$sonchild_tree_val['join_m_members']['name']:}<span></span>
            </li>
        {:foreachelse:}
            <li style="border:0; border-top-left-radius:8px; border-top-right-radius:8px;">
            	<img src="{:$var_x['path']['tem_dir_url']:}/images/hy_ico.png" />暂无<span></span>
            </li>
        {:/foreach:}
        </ul>
    </div>
</div>
<div class="fx_box"><!--我的佣金---------->
	<a class="fx" href="javascript:;" onClick="return chg('test2');">
    	<img src="{:$var_x['path']['tem_dir_url']:}/images/zk_ico2.png" id="test2_img" />
        他的三级会员
        <span>{:$mle['sonchild']['son_total']['level_3']['num']:}人</span>
    </a>
    <div class="rj_list" id="test2">
    	<ul>
    	{:foreach $mle['sonchild']['sonchild_tree_data']['level_3'] as $sonchild_tree_val:}
        	<li style="border:0; border-top-left-radius:8px; border-top-right-radius:8px;">
            	<img src="{:$var_x['path']['tem_dir_url']:}/images/hy_ico.png" />{:$sonchild_tree_val['join_m_members']['name']:}<span></span>
            </li>
        {:foreachelse:}
            <li style="border:0; border-top-left-radius:8px; border-top-right-radius:8px;">
            	<img src="{:$var_x['path']['tem_dir_url']:}/images/hy_ico.png" />暂无<span></span>
            </li>
        {:/foreach:}
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
