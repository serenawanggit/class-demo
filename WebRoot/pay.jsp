<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery.min-v=3.2.0.js"></script>
<title>微信支付JSP</title>
</head>
<body onload="pay()">
<!-- code : ${param.code } -->
<input id="code" type="hidden" value="${param.code }">
<!-- <button onclick="pay()">微信支付</button> -->
<script type="text/javascript">
	var appId,timeStamp,nonceStr,package,signType,paySign;  
 	function pay(){
		var code = $("#code").val();//页面链接上的code参数
		if(code){
			var url = "${pageContext.request.contextPath}/pay/lesson?code="+code+"";
	  		$.get(url,function(data) {
	  			var result = JSON.parse(data);
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
				} else {
					onBridgeReady();
				}
			});
		} else {
			alert("服务器错误");
		};
	}
function onBridgeReady(){
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
                 console.log('支付成功');
                 //支付成功后跳转的页面
             }else if(res.err_msg == "get_brand_wcpay_request:cancel"){
          	   console.log('支付取消');
             }else if(res.err_msg == "get_brand_wcpay_request:fail"){
          	   console.log('支付失败');
                 WeixinJSBridge.call('closeWindow');
             } //使用以上方式判断前端返回,微信团队郑重提示：res.err_msg将在用户支付成功后返回ok,但并不保证它绝对可靠。
   });   
};
</script>




	<%-- <div class="index_box">
		<div class="apply_name">微信js支付测试</div>
		<div class="branch_con">
			<ul>
				<li><span class="name">测试支付信息[]</span></li>
			</ul>
			<p class="cz_btn">
				<a href="javascript:pay();" rel="external nofollow" class="btn_1">立即支付</a>
			</p>
		</div>
	</div>
	<% String code = request.getParameter("code"); %>
	<input type="text" id="code" value="<%out.print(code);%>" />
	<input type="text" id="path" value="${pageContext.request.contextPath}" />
	<div><hr />
		code:<% out.print(code); %>
	</div>
	<script type="text/javascript">
		var appId, timeStamp, nonceStr, pg, signType, paySign;
		function onBridgeReady() {
			WeixinJSBridge.invoke('getBrandWCPayRequest', {
				"appId" : appId, //公众号名称，由商户传入  
				"timeStamp" : timeStamp, //时间戳，自1970年以来的秒数  
				"nonceStr" : nonceStr, //随机串  
				"package" : "prepay_id=" + pg,
				"signType" : signType, //微信签名方式:  
				"paySign" : paySign
			//微信签名 
			}, function(res) {
				if (res.err_msg == "get_brand_wcpay_request:ok") {

					alert("支付成功");
				}
			});
		}
		function pay() {
			var code = document.getElementById("code").value;
			var path = document.getElementById("path").value;
			send_request(function(value) {
				var json = eval("(" + value + ")");
				if (json.length > 0) {
					appId = json[0].appId;
					timeStamp = json[0].timeStamp;
					nonceStr = json[0].nonceStr;
					pg = json[0].pg;
					signType = json[0].signType;
					paySign = json[0].paySign;
					if (typeof WeixinJSBridge == "undefined") {
						if (document.addEventListener) {
							document.addEventListener('WeixinJSBridgeReady',
									onBridgeReady, false);
						} else if (document.attachEvent) {
							document.attachEvent('WeixinJSBridgeReady',
									onBridgeReady);
							document.attachEvent('onWeixinJSBridgeReady',
									onBridgeReady);
						}
					} else {
						onBridgeReady();
					}
				}
			}, "${pageContext.request.contextPath}/classDemo/pay/payparm.htm?openId=" + code, true);
		}
		function send_request(callback, urladdress, isReturnData) {
			var xmlhttp = getXMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4) {
					try {
						if (xmlhttp.status == 200) {
							if (isReturnData && isReturnData == true) {
								callback(xmlhttp.responseText);
							}
						} else {
							callback("页面找不到！" + urladdress + "");
						}
					} catch (e) {
						callback("请求发送失败，请重试！" + e);
					}
				}
			}
			xmlhttp.open("POST", urladdress, true);
			xmlhttp.send(null);
		}
		function getXMLHttpRequest() {
			var xmlhttp;
			if (window.XMLHttpRequest) {
				try {
					xmlhttp = new XMLHttpRequest();
					xmlhttp.overrideMimeType("text/html;charset=UTF-8");
				} catch (e) {
				}
			} else if (window.ActiveXObject) {
				try {
					xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
				} catch (e) {
					try {
						xmlhttp = new ActiveXObject("Msxml2.XMLHttp");
					} catch (e) {
						try {
							xmlhttp = new ActiveXObject("Msxml3.XMLHttp");
						} catch (e) {
						}
					}
				}
			}
			return xmlhttp;
		}
	</script> --%>
</body>
</html>
