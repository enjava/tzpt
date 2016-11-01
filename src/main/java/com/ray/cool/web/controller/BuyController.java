package com.ray.cool.web.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by en on 2016/11/1.
 */
@RestController
@RequestMapping("/buy")
public class BuyController {
    @RequestMapping(value="/",method= RequestMethod.GET)
    public String index(){
        return "index";
    }
}
