package com.yanyi.util;

public class ConstantUtil {
    /**
     * 微信开发平台应用ID
     */
    public static final String APP_ID="wx2421b1c4370ec43b";
    /**
     * 应用对应的凭证
     */
    public static final String APP_SECRET="1add1a30ac87aa2db72f57a2375d8fec";
    /**
     * 应用对应的密钥
     */
    public static final String APP_KEY="1add1a30ac87aa2db72f57a2375d8fec";
    /**
     * 微信支付商户号
     */
    public static final String MCH_ID="10000100";
    /**
     * 商品描述
     */
    public static final String BODY="充值";
    /**
     * 商户号对应的密钥
     */
    public static final String PARTNER_key="*******"; 

    /**
     * 商户id
     */
    public static final String PARTNER_ID="*******"; 
    /**
     * 常量固定值
     */
    public static final String GRANT_TYPE="client_credential";
    /**
     * 获取预支付id的接口url
     */
    public static String GATEURL = "https://api.mch.weixin.qq.com/pay/unifiedorder";
    /**
     * 微信服务器回调通知url
     */
    public static String NOTIFY_URL="http://url"; //可以访问的url
    /**
     * 微信服务器查询订单url
     */
    public static String ORDER_QUERY="https://api.mch.weixin.qq.com/pay/orderquery";

}
