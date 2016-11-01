document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
window.shareData = {
		"timeLineLink": "http://weixin.kyger.com.cn/laoshouxing/",
		"sendFriendLink": "http://weixin.kyger.com.cn/laoshouxing/",
		"weiboLink": "http://weixin.kyger.com.cn/laoshouxing/",
		"tTitle": "老寿星水壶",
		"tContent": "星爷说：壶好，水才好！"
	};
	// 发送给好友
	WeixinJSBridge.on('menu:share:appmessage', function (argv) {
		WeixinJSBridge.invoke('sendAppMessage', {
			"img_url": "http://weixin.kyger.com.cn/laoshouxing/images/fx.jpg",
			"img_width": "257",
			"img_height": "216",
			"link": window.shareData.sendFriendLink,
			"desc": window.shareData.tContent,
			"title": window.shareData.tTitle
		}, function (res) {
			_report('send_msg', res.err_msg);
		})
	});
	// 分享到朋友圈
	WeixinJSBridge.on('menu:share:timeline', function (argv) {
		WeixinJSBridge.invoke('shareTimeline', {
			"img_url": "http://weixin.kyger.com.cn/laoshouxing/images/fx.jpg",
			"img_width": "401",
			"img_height": "275",
			"link": window.shareData.timeLineLink,
			"desc": window.shareData.tContent,
			"title": '星爷说：壶好，水才好！'
		}, function (res) {
			_report('timeline', res.err_msg);
		});
	});
}, false)