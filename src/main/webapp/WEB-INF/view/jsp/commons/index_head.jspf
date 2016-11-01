<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script>
  wx.config({
    debug: false,
    appId: '{:weixin::get_js_sdk_param("appId"):}',
    timestamp: {:weixin::get_js_sdk_param("timestamp"):},
    nonceStr: '{:weixin::get_js_sdk_param("nonceStr"):}',
    signature: '{:weixin::get_js_sdk_param("signature"):}',
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
		title: '{:$mle['share']['index']['title']:}', // 分享标题
		link: '{:if $mle['share']['index']['share_url']!='':}{:$mle['share']['index']['share_url']:}{:else:}http://{:$smarty.server.SERVER_NAME:}{:$smarty.server.REQUEST_URI:}'{:/if:}', // 分享链接
		imgUrl: '{:$var_x['path']['mleroot_url']:}/{:$mle['share']['index']['imgurl']:}'// 分享图标
	});
	
	//分享给朋友
    wx.onMenuShareAppMessage({
        title: '{:$mle['share']['index']['title']:}', // 分享标题
        desc: '{:$mle['share']['index']['desc']:}', // 分享描述
        link: '{:if $mle['share']['index']['share_url']!='':}{:$mle['share']['index']['share_url']:}{:else:}http://{:$smarty.server.SERVER_NAME:}{:$smarty.server.REQUEST_URI:}'{:/if:}', // 分享链接
        imgUrl: '{:$var_x['path']['mleroot_url']:}/{:$mle['share']['index']['imgurl']:}', // 分享图标
        type: '', // 分享类型,music、video或link，不填默认为link
        dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
    });
    
	//分享到QQ
    wx.onMenuShareQQ({
        title: '{:$mle['share']['index']['title']:}', // 分享标题
        desc: '{:$mle['share']['index']['desc']:}', // 分享描述
        link: '{:if $mle['share']['index']['share_url']!='':}{:$mle['share']['index']['share_url']:}{:else:}http://{:$smarty.server.SERVER_NAME:}{:$smarty.server.REQUEST_URI:}'{:/if:}', // 分享链接
        imgUrl: '{:$var_x['path']['mleroot_url']:}/{:$mle['share']['index']['imgurl']:}' // 分享图标
    });

    //分享到腾讯微博
    wx.onMenuShareWeibo({
        title: '{:$mle['share']['index']['title']:}', // 分享标题
        desc: '{:$mle['share']['index']['desc']:}', // 分享描述
        link: '{:if $mle['share']['index']['share_url']!='':}{:$mle['share']['index']['share_url']:}{:else:}http://{:$smarty.server.SERVER_NAME:}{:$smarty.server.REQUEST_URI:}'{:/if:}', // 分享链接
        imgUrl: '{:$var_x['path']['mleroot_url']:}/{:$mle['share']['index']['imgurl']:}' // 分享图标
    });
    
  });
</script>