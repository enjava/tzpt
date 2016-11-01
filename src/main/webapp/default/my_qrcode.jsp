<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>快来扫一扫，抢占东家地盘</title>
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<style type="text/css">
.ew{width:100%; max-width:640px; margin:0 auto; padding-bottom:40px; background:#fff; position:relative; box-sizing:border-box;}
.ew span{position:absolute; display:block; width:100%; height:40px; line-height:40px; text-align:center; color:#fff; bottom:0; left:0; background:#333;}
</style>
<script>
  wx.config({
    debug: false,
    appId: '{:$mle['signPackage']["appId"]:}',
    timestamp: {:$mle['signPackage']["timestamp"]:},
    nonceStr: '{:$mle['signPackage']["nonceStr"]:}',
    signature: '{:$mle['signPackage']["signature"]:}',
    jsApiList: [
      'onMenuShareTimeline',
      'onMenuShareAppMessage',
      'onMenuShareQQ',
      'onMenuShareWeibo'
    ]
  });
  wx.ready(function () {
	 wx.showOptionMenu()
	//分享到朋友圈
    wx.onMenuShareTimeline({
		title: '{:$mle['share']['qr_code']['title']:}', // 分享标题
		link: '{:$mle['share_url']:}', // 分享链接
		imgUrl: '{:$var_x['path']['mleroot_url']:}/{:$mle['share']['qr_code']['imgurl']:}'// 分享图标
	});
	
	//分享给朋友
    wx.onMenuShareAppMessage({
        title: '{:$mle['share']['qr_code']['title']:}', // 分享标题
        desc: '{:$mle['share']['qr_code']['desc']:}', // 分享描述
        link: '{:$mle['share_url']:}', // 分享链接
        imgUrl: '{:$var_x['path']['mleroot_url']:}/{:$mle['share']['qr_code']['imgurl']:}', // 分享图标
        type: '', // 分享类型,music、video或link，不填默认为link
        dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
    });
    
	//分享到QQ
    wx.onMenuShareQQ({
        title: '{:$mle['share']['qr_code']['title']:}', // 分享标题
        desc: '{:$mle['share']['qr_code']['desc']:}', // 分享描述
        link: '{:$mle['share_url']:}', // 分享链接
        imgUrl: '{:$var_x['path']['mleroot_url']:}/{:$mle['share']['qr_code']['imgurl']:}' // 分享图标
    });

    //分享到腾讯微博
    wx.onMenuShareWeibo({
        title: '{:$mle['share']['qr_code']['title']:}', // 分享标题
        desc: '{:$mle['share']['qr_code']['desc']:}', // 分享描述
        link: '{:$mle['share_url']:}', // 分享链接
        imgUrl: '{:$var_x['path']['mleroot_url']:}/{:$mle['share']['qr_code']['imgurl']:}' // 分享图标
    });
    
  });
</script>
</head>

<body>
<div class="ew">
	<img src="{:$mle['share_img_url']:}?{:$var_x['gmt_time']:}" />
    <span>快来扫一扫，抢占东家地盘</span>
</div>
</body>
</html>
