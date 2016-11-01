var mle = mle || {version : '1.1.2'};
//公用函数 需载入Jquery库
mle.fun = {};

/**
* 功能：地址跳转
* @param int url
* @param bool is_history 是否让浏览器记录后退信息[[true-记住-默认][false-不记住]]
*/
mle.fun.toUrl = function(url, is_history){
	if(is_history!=true && is_history!=false){
		is_history = true;//默认为true
	}
	
	if(is_history){
		location = url;
	}else{
		window.location.replace(url);
	}
}

/**
* 
*/
mle.fun.print_r = function (){
 for(var i=0;i<arguments[0].length;i++){
 document.write(arguments[0][i] +'\r\n');
 }
}
/**
* 修改地址栏URL参数
*/
mle.fun.changeUrlPar = function (url, ref, value) {
    var str = "";
    if (url.indexOf('?') != -1)
        str = url.substr(url.indexOf('?') + 1);
    else
        return url + "?" + ref + "=" + value;
    var returnurl = "";
    var setparam = "";
    var arr;
    var modify = "0";
    if (str.indexOf('&') != -1) {
        arr = str.split('&');
        for (i in arr) {
            if (arr[i].split('=')[0] == ref) {
                setparam = value;
                modify = "1";
            }
            else {
                setparam = arr[i].split('=')[1];
            }
            returnurl = returnurl + arr[i].split('=')[0] + "=" + setparam + "&";
        }
        returnurl = returnurl.substr(0, returnurl.length - 1);
        if (modify == "0")
            if (returnurl == str)
                returnurl = returnurl + "&" + ref + "=" + value;
    }
    else {
        if (str.indexOf('=') != -1) {
            arr = str.split('=');
            if (arr[0] == ref) {
                setparam = value;
                modify = "1";
            }
            else {
                setparam = arr[1];
            }
            returnurl = arr[0] + "=" + setparam;
            if (modify == "0")
                if (returnurl == str)
                    returnurl = returnurl + "&" + ref + "=" + value;
        }
        else
            returnurl = ref + "=" + value;
    }
    return url.substr(0, url.indexOf('?')) + "?" + returnurl;
}

/*--获取网页传递的参数--*/
    mle.fun.request = function (paras)
    { 
        var url = location.href; 
        var paraString = url.substring(url.indexOf("?")+1,url.length).split("&"); 
        var paraObj = {} 
        for (i=0; j=paraString[i]; i++){ 
        paraObj[j.substring(0,j.indexOf("=")).toLowerCase()] = j.substring(j.indexOf("=")+1,j.length); 
        } 
        var returnValue = paraObj[paras.toLowerCase()]; 
        if(typeof(returnValue)=="undefined"){ 
        return ""; 
        }else{ 
        return returnValue; 
        } 
    }


/**
* 发送POST表单
* @param URL发送地址
* @param PARAMS发送数组(数组)
*/
mle.fun.post_from = function(URL, PARAMS){ 
    var temp = document.createElement("form");  
	temp.action = URL;   	
    temp.method = "post";      
    temp.style.display = "none";      
    for (var x in PARAMS) {      
        var opt = document.createElement("textarea");      
        opt.name = x;      
        opt.value = PARAMS[x];       
        temp.appendChild(opt);      
    }      
    document.body.appendChild(temp);     
    temp.submit();      
    return temp;         
}
/**
* 数据验证(未完成)
*
*/
/*
mle.fun.check_data(){
	//arguments.length
	// select = arguments[0];
	//$(select).
	
}
*/
/**
*日期 转换为 Unix时间戳
* @param string 2014-01-01 20:20:20  日期格式              
* @return int unix时间戳(秒)             
*/
mle.fun.data_totime = function(string) {
    var f = string.split(' ', 2);
    var d = (f[0] ? f[0] : '').split('-', 3);
    var t = (f[1] ? f[1] : '').split(':', 3);
    return (new Date(
            parseInt(d[0], 10) || null,
            (parseInt(d[1], 10) || 1) - 1,
            parseInt(d[2], 10) || null,
            parseInt(t[0], 10) || null,
            parseInt(t[1], 10) || null,
            parseInt(t[2], 10) || null
            )).getTime() / 1000;
}

/**
*日期 计算两个时间戳之间的差
* @param string 2014-01-01 20:20:20  日期格式              
* @return int unix时间戳(秒)             
*/
mle.fun.time_diff = function(){
	begin_time = arguments[0] || '0';
	end_time = arguments[1] || '0';
	is_relevance = arguments[2]==null ?'2': arguments[2];
	return_type = arguments[3] || '';
	var starttime = 0;
	
	if(begin_time < end_time){ 
		starttime = begin_time; 
		endtime = end_time; 
	}else{ 
		starttime = end_time; 
		endtime = begin_time; 
	}
	
	var timediff = 0;
	var remain = 0;
	var days,hours,mins,secs;
	timediff = endtime-starttime; 
	if(is_relevance){
		//时间单位关联
		days	= parseInt(timediff/86400, 10); 
		remain	= timediff%86400; 
		hours	= parseInt(remain/3600, 10); 
		remain	= remain%3600; 
		mins	= parseInt(remain/60, 10); 
		secs	= remain%60; 
	}else{
		//时间单位独立
		days 	= parseInt(timediff/86400, 10); 
		hours 	= parseInt(timediff/3600, 10); 
		mins 	= parseInt(timediff/60, 10); 
		secs 	= timediff;
	}
	
	res = {"day" : days,"hour" : hours,"min" : mins,"sec" : secs}; 
	if(return_type!=''){
		return res[return_type];
	}else{
		return res; 
	}
	
	
}


/**
* 功能：滚动条下拉到底部的设定的阀值，就出发一个事件
* @param function func 回调函数
* @param int threshold 阀值（底部离滚动条位置的距离）
*/
mle.fun.scroll_event = function(func, threshold){
	$(window).scroll(function(){
		if($(document).height()-$(window).scrollTop()<threshold){
			func();
		}
	});
}













