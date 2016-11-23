package com.ray.cool.alipay.controller;

import com.alipay.api.AlipayApiException;
import com.ray.cool.weixin.util.FileUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 * Created by en on 2016/11/14.
 */
@RestController
@RequestMapping("/alipay")
public class AlipayController  {
    protected Log LOG = LogFactory.getLog(getClass());
    //回调get
    @RequestMapping(value="/api",method= RequestMethod.GET)
    public String getIndex(HttpServletRequest request){
        //获取支付宝POST过来反馈信息
        Map<String,String> params = new HashMap<String,String>();
        Map requestParams = request.getParameterMap();

        LOG.info("requestParams:"+requestParams.toString());
        FileUtil.log("方法getIndex:requestParams"+requestParams.toString());
        LOG.info("params:"+params.toString());
        for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext();) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i]
                        : valueStr + values[i] + ",";
            }
//乱码解决，这段代码在出现乱码时使用。如果mysign和sign不相等也可以使用这段代码转化
//valueStr = new String(valueStr.getBytes("ISO-8859-1"), "gbk");
            params.put(name, valueStr);
        }
        FileUtil.log("方法getIndex:params"+params.toString());
        return "index";
    }
    //回调post
    @RequestMapping(value="/api",method= RequestMethod.POST)
    public String postIndex(HttpServletRequest request) throws UnsupportedEncodingException, AlipayApiException {
        //获取支付宝POST过来反馈信息
        Map<String,String> params = new HashMap<String,String>();
        Map requestParams = request.getParameterMap();

        LOG.info("requestParams:"+requestParams.toString());
        FileUtil.log("方法postIndex:requestParams"+requestParams.toString());
        LOG.info("params:"+params.toString());
        for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext();) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i]
                        : valueStr + values[i] + ",";
            }
//乱码解决，这段代码在出现乱码时使用。如果mysign和sign不相等也可以使用这段代码转化
//valueStr = new String(valueStr.getBytes("ISO-8859-1"), "gbk");
            params.put(name, valueStr);
        }
        FileUtil.log("方法postIndex:params"+params.toString());
        return "index";
    }

    //应用网关
    @RequestMapping(value="/app")
    public String appIndex(HttpServletRequest request){
        //获取支付宝POST过来反馈信息
        Map<String,String> params = new HashMap<String,String>();
        Map requestParams = request.getParameterMap();

        LOG.info("requestParams:"+requestParams.toString());
        FileUtil.log("方法appIndex:requestParams"+requestParams.toString());
        LOG.info("params:"+params.toString());
        for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext();) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i]
                        : valueStr + values[i] + ",";
            }
            //乱码解决，这段代码在出现乱码时使用。如果mysign和sign不相等也可以使用这段代码转化
             //valueStr = new String(valueStr.getBytes("ISO-8859-1"), "gbk");
            params.put(name, valueStr);
        }
        FileUtil.log("方法appIndex:params"+params.toString());
        return "index";
    }
}
