package com.ray.cool.alipay.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by en on 2016/11/14.
 */
@RestController
@RequestMapping("/alipay")
public class AlipayController  {

    //回调get
    @RequestMapping(value="/api",method= RequestMethod.GET)
    public String getIndex(){
        return "index";
    }
    //回调post
    @RequestMapping(value="/api",method= RequestMethod.POST)
    public String postIndex(){


        return "index";
    }

    //应用网关
    @RequestMapping(value="/app")
    public String appIndex(){
        return "index";
    }
}
