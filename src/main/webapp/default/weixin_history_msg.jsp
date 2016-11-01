<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<title>消息中心 - 创富商盟</title>
    <link href="{:$var_x['path']['tem_dir_url']:}/style/page/weixin_history_msg/index.css" rel="stylesheet" />
	<script type="text/javascript">
		var var_x = {
					'path':{
						'mleroot_url' : '{:$var_x['path']['mleroot_url']:}',{:*网站根目录URL地址*:}
						'tem_dir_url' : '{:$var_x['path']['tem_dir_url']:}',{:*模板URL地址*:}
						'current_url' : 'http://{:$smarty.server.SERVER_NAME:}{:$smarty.server.REQUEST_URI:}',{:*当前URL地址*:}
					},
					'page_data':{
						'data_count' : {:count($mle['history_msg_data']):},{:*第一页的数据数*:}
						'limit_take' : {:$mle['par']['limit_take']:},{:*每页显示的数据数*:}
						'start_data_id' : {:(int)$mle['history_msg_data'][ count($mle['history_msg_data']) - 1 ]['id']:},{:**:}
						
					},
				};
	</script>
</head>
<body>
    <div class="main">
    	<div class="load_main">
    		<img class="load_ico" src="{:$var_x['path']['tem_dir_url']:}/images/commom/load_ico_2.gif"/>
    		<span class="load_str">正在加载</span>
    	</div>
        <div class="main_inner clearfix">
            <div class="panel"></div>
            <div id="chatArea" class="box chat">
                <div class="box_hd"></div>
                <div class="box_bd" id="messageList">
               		<span id="load_data_site"></span>
                     {:include file="weixin_history_msg_data.tpl":}
                </div>
            </div>
        </div>
    </div>

    <script src="{:$var_x['path']['tem_dir_url']:}/script/jquery.js"></script>
    <script src="{:$var_x['path']['tem_dir_url']:}/script/page/weixin_history_msg/index.js"></script>

</body>
</html>