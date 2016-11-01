<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
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

	//分享到朋友圈
    wx.onMenuShareTimeline({
		title: '{:$mle['share']['detail']['title']:}', // 分享标题
		link: '{:$mle['share']['detail']['share_url']:}', // 分享链接
		imgUrl: '{:$var_x['path']['mleroot_url']:}/{:$mle['share']['detail']['imgurl']:}'// 分享图标
	});
	
	//分享给朋友
    wx.onMenuShareAppMessage({
        title: '{:$mle['share']['detail']['title']:}', // 分享标题
        desc: '{:$mle['share']['detail']['desc']:}', // 分享描述
        link: '{:$mle['share']['detail']['share_url']:}', // 分享链接
        imgUrl: '{:$var_x['path']['mleroot_url']:}/{:$mle['share']['detail']['imgurl']:}', // 分享图标
        type: '', // 分享类型,music、video或link，不填默认为link
        dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
    });
    
	//分享到QQ
    wx.onMenuShareQQ({
        title: '{:$mle['share']['detail']['title']:}', // 分享标题
        desc: '{:$mle['share']['detail']['desc']:}', // 分享描述
        link: '{:$mle['share']['detail']['share_url']:}', // 分享链接
        imgUrl: '{:$var_x['path']['mleroot_url']:}/{:$mle['share']['detail']['imgurl']:}' // 分享图标
    });

    //分享到腾讯微博
    wx.onMenuShareWeibo({
        title: '{:$mle['share']['detail']['title']:}', // 分享标题
        desc: '{:$mle['share']['detail']['desc']:}', // 分享描述
        link: '{:$mle['share']['detail']['share_url']:}', // 分享链接
        imgUrl: '{:$var_x['path']['mleroot_url']:}/{:$mle['share']['detail']['imgurl']:}' // 分享图标
    });
    
  });
</script>