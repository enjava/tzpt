<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<title>收货地址管理</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<meta charset="utf-8">
<meta content="" name="description">
<meta content="" name="keywords">
<meta content="eric.wu" name="author">
<meta content="application/xhtml+xml;charset=UTF-8" http-equiv="Content-Type">
<meta content="telephone=no, address=no" name="format-detection">
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<link href="{:$var_x['path']['tem_dir_url']:}/style/reset.css" rel="stylesheet" />
<link href="{:$var_x['path']['tem_dir_url']:}/style/common.css" rel="stylesheet" />
<link href="{:$var_x['path']['tem_dir_url']:}/style/my_address.css" rel="stylesheet" />
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/public_fun.js" ></script>{:* 函数库JS *:}
</head>
<body onselectstart="return true;" ondragstart="return false;">
<div data-role="container" class="container my_address">
  <header data-role="header"></header>
  <section data-role="body" class="body">
    <div>
      <ul id="list_address" class="list_address on">
      {:foreach $mle['re_address_data'] as $adddress_val name=foo:}
			<li>
			  <a href="javascript:void(0);" onclick="mle.fun.toUrl('affirm_order.php?address_id={:$adddress_val['id']:}');">
	          <label class="tbox" data-default="{:if $mle['default_address_id']==$adddress_val['id']:}默认地址{:/if:}" >
	          <div>
				<span>
	         	   <input type="radio" class="radio" name="my_address" value="10542" data-index="0" {:if $mle['par']['select_address_id']==$adddress_val['id']:}checked="checked"{:/if:}>
	            </span>
			  </div>
	          <div>
	            <p>
	              <label>姓名</label>
	              &nbsp;{:$adddress_val['name']:}</p>
	            <p>
	              <label>手机</label>
	              &nbsp;{:$adddress_val['mobile_phone']:}</p>
	            <p>
	              <label>地址</label>
	              &nbsp;{:$adddress_val['address']:}</p>
	          </div>
	          <div>
	            <p style="width:60px;">&nbsp;</p>
	          </div>
	          </label>
	          <a href="{:$var_x['path']['mleroot_url']:}/mobile/add_address.php?address_id={:$adddress_val['id']:}" ><div class="icon_edit data-index="0" style="right:60px;" ></div> </a>
	          <a href="javascript:void(0);" onclick="if( !confirm('是否删除该收货地址？')) return false; mle.fun.toUrl('{:$var_x['php_self']:}?action=del_address&address_id={:$adddress_val['id']:}', false);"><div class="icon_del" data-index="0"></div> </a>
	          </a>
          </li>
		{:foreachelse:}
	       <div class="nd" style="text-align:center; padding-top:30px; font-size:18px;">暂无收货地址</div>
		{:/foreach:}
      </ul>
    </div>
  </section>
  <footer data-role="footer">
    <div class="div_section_btn footer_div_section_btn">
      <div class="widget_wrap">
        <ul>
          <li> <a href="add_address.php" class="btn red" id="btn_addAddress">新增收货地址</a> </li>
        </ul>
      </div>
    </div>
  </footer>
</div>
<div style="margin-bottom:230px;"></div>
</body>
</html>
