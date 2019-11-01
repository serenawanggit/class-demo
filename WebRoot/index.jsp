<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery.min-v=3.2.0.js"></script>
<title>微信支付JSP</title>
</head>
<body> 
<!-- https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxc19662653e7edcd4&redirect_uri=http%3a%2f%2fwangfang.51vip.biz%2fclassDemo%2fpay.jsp&response_type=code&scope=snsapi_base#wechat_redirect -->
<!-- https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx35588e41748bb51f&redirect_uri=http%3a%2f%2fwangfang.51vip.biz%2fclassDemo%2fpay.jsp&response_type=code&scope=snsapi_base#wechat_redirect -->
	<a href="https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx35588e41748bb51f&redirect_uri=http%3a%2f%2fwangfang.51vip.biz%2fclassDemo%2fpay.jsp&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect">去支付页面pay.jsp并携带code</a>
	<!-- <input type="button" value="进行微信支付" id="payId">
	<script type="text/javascript">
	
		$(function(){
			var appId,timeStamp,nonceStr,package,signType,paySign; 
			
			$("#payId").click(function(){
				pay();
			});
			
			//去后台拿六个参数
			function pay(){   
				var url = "${pageContext.request.contextPath }/pay/orders";
			  	$.get(url,function(result) {	
		  				appId = result.appId;
						timeStamp = result.timeStamp;
						nonceStr = result.nonceStr;
						package = result.package;
						signType = result.signType;
						paySign = result.paySign;
						
						if (typeof WeixinJSBridge == "undefined") {
							if (document.addEventListener) {
								document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
							} else if (document.attachEvent) {
								document.attachEvent('WeixinJSBridgeReady', onBridgeReady);
								document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
							}
							alert("请在微信上进行支付操作！");
							onBridgeReady();
						} else { 
							onBridgeReady();
						}
					});
				}
			//去微信那边发起支付请求
			function onBridgeReady(){
				
				 alert("appId:"+appId+" "+"timeStamp:"+timeStamp+" "+"nonceStr:"+nonceStr+" "+"package:"+package+" "+"signType:"+signType+" "+"paySign:"+paySign+" ");
				
				  WeixinJSBridge.invoke( 'getBrandWCPayRequest', {
					  "appId":appId,     //公众号名称,由商户传入     
			          "timeStamp":timeStamp,         //时间戳,自1970年以来的秒数     
			          "nonceStr":nonceStr, //随机串     
			          "package":package,     
			          "signType":signType,         //微信签名方式：     
			          "paySign":paySign //微信签名 
			         }, 
			         function(res){
			      	   if(res.err_msg == "get_brand_wcpay_request:ok" ) {
			                 //alert('支付成功');
			                 console.log("支付成功");
			                 //支付成功后跳转的页面
			             }else if(res.err_msg == "get_brand_wcpay_request:cancel"){
			            	 alert('支付取消');
			             }else if(res.err_msg == "get_brand_wcpay_request:fail"){
			            	 alert('支付失败');
			            	 
			            	 alert(JSON.stringify(res));
			            	 
			                 WeixinJSBridge.call('closeWindow');
			             } //使用以上方式判断前端返回,微信团队郑重提示：res.err_msg将在用户支付成功后返回ok,但并不保证它绝对可靠。
			   });
			}
		});
</script> -->

</body>
</html>
