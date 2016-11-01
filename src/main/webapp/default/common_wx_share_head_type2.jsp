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

	var wx_share_title = '{:$mle['wx_share']['title']:}';
	if( wx_share_title == '' ) wx_share_title = document.title;
	var wx_share_desc = '{:$mle['wx_share']['desc']:}';
	var wx_share_link = '{:if $mle['wx_share']['link'] != '':}{:$mle['wx_share']['link']:}{:else:}http://{:fun::url_replace($smarty.server.SERVER_NAME|cat:$smarty.server.REQUEST_URI, 'father_id', $var_x['user']['data']['id']):}{:/if:}';
	var wx_share_imgurl = '{:if $mle['wx_share']['imgurl']!='':}{:$var_x['path']['mleroot_url']:}/{:$mle['wx_share']['imgurl']:}{:else:}{:$var_x['path']['tem_dir_url']:}/images/commom/logo.png{:/if:}';

  
  wx.ready(function () {
	  wx.showOptionMenu()
		
	//分享到朋友圈
    wx.onMenuShareTimeline({
		title: wx_share_title, // 分享标题
		link: wx_share_link, // 分享链接
		imgUrl: wx_share_imgurl// 分享图标
	});
	
	//分享给朋友
    wx.onMenuShareAppMessage({
        title: wx_share_title, // 分享标题
        desc: wx_share_desc, // 分享描述
        link: wx_share_link, // 分享链接
        imgUrl: wx_share_imgurl, // 分享图标
        type: '', // 分享类型,music、video或link，不填默认为link
        dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
    });
    
	//分享到QQ
    wx.onMenuShareQQ({
        title: wx_share_title, // 分享标题
        desc: wx_share_desc, // 分享描述
        link: wx_share_link, // 分享链接
        imgUrl: wx_share_imgurl // 分享图标
    });

    //分享到腾讯微博
    wx.onMenuShareWeibo({
        title: wx_share_title, // 分享标题
        desc: wx_share_desc, // 分享描述
        link: wx_share_link, // 分享链接
        imgUrl: wx_share_imgurl // 分享图标
    });
    
  });
</script>