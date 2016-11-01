package com.ray.cool.weixin.util;

/**
 * 常量
 * @author herosky
 *
 */
public class Constants {
	/**
	 * APPID
	 */
	public static String APPID = "wx0a567168805b392d";
	/**
	 * SECRET
	 */
	public static String SECRET = "2d4c196f388111938c89a508e1ac2fa7";
	/**
	 * 获取ACCESS_TOKEN接口
	 */
	public static String GET_ACCESSTOKEN_URL = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET";
	/**
	 * ACCESS_TOKEN有效时间(单位：ms)
	 */
	public static int EFFECTIVE_TIME = 700000;
	/**
	 * conf.properties文件路径
	 */
	public static String CONF_PROPERTIES_PATH = "config.properties";
	/**
	 * 微信接入token ，用于验证微信接口
	 */
	public static String TOKEN = "abc123";
}
