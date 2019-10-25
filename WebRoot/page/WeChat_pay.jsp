
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.yanyi.main.*"%>
<%
	
	
		//https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx7bd34a521ff3ad48&redirect_uri=http%3a%2f%2fcpws.vxg105.10000net.cn%2famazon%2ftest%2fWeChat_test_info.jsp&response_type=code&scope=snsapi_base&state=STATE#wechat_redirect
		String appid = "wxc19662653e7edcd4";
		String appSecret = "987458afeb1b9a77d212243ca71b4885";
		//https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx5928d8f902239abb&redirect_uri=http://happydancer.cn/Wechat_pay.jsp&response_type=code&scope=snsapi_base&state=STATE#wechat_redirect
		//https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx52407a5ce08a4811&redirect_uri=http%3a%2f%2fcpws.vxg105.10000net.cn%2famazon%2ftest%2fWeChat_test_info.jsp&response_type=code&scope=snsapi_base&state=STATE#wechat_redirect
		/* String appid = "wx52407a5ce08a4811";
		String appSecret = "0c4ba23238738a9ee16aa1312b335190"; */
		
		/* String appid = "wx9932de40508c712c";//小胖个人
		String appSecret = "a7b634107b951b0601a5564e182890d1"; */
		String code = "test";
		if(request.getParameter("code") != null){
			code = request.getParameter("code");
		}
		String urls = "https://api.weixin.qq.com/sns/oauth2/access_token";
		//urls = "https://api.weixin.qq.com/cgi-bin/token";
		//?grant_type=client_credential&appid=APPID&secret=APPSECRET
		String param_products = "appid="+appid+"&secret="+appSecret+"&code="+code+"&grant_type=authorization_code";
		//param_products = "appid="+appid+"&secret="+appSecret+"&grant_type=client_credential";
		String result_products = HttpRequest.sendGet_GBK(urls, param_products);
		
		String openid = Read_json.getStringFromJsonSingle1(result_products,
				 "openid").replace("\"", "");
		
		Vector<String[]> vs_openid = new DBTest2().select2(datas.url_baidu, "select username, password, phone, email, id, isManager,photo from kx_users where openid like '"+openid+"'", false);
		String username = "";
		if(vs_openid.size() > 0){
			username = vs_openid.get(0)[0];
			session.putValue("username",vs_openid.get(0)[0]);
				session.putValue("name",vs_openid.get(0)[4]);
				session.putValue("isManager",vs_openid.get(0)[5]);
				session.putValue("tel",vs_openid.get(0)[2]);
				session.putValue("email",vs_openid.get(0)[3]);
				session.putValue("img",vs_openid.get(0)[6]);
		}
		
		
		String urls_access_token = "https://api.weixin.qq.com/cgi-bin/token";
		String param_access_token = "grant_type=client_credential&appid="+appid+"&secret="+appSecret;
		String result_access_token = HttpRequest.sendGet_GBK(urls_access_token, param_access_token);
		System.out.println(result_access_token);
	 	String access_token = Read_json.getStringFromJsonSingle1(result_access_token,
				 "access_token").replace("\"", "");
		String urls_userInfo = "https://api.weixin.qq.com/cgi-bin/user/info";
		String param_userInfo = "access_token="+access_token+"&openid="+openid+"&lang=zh_CN";
		String result_userInfo = HttpRequest.sendGet(urls_userInfo, param_userInfo);
		String headimgurl = "";
		headimgurl = Read_json.getStringFromJsonSingle1(result_userInfo, "headimgurl").replace("\"", "");
		String nickname = "";
		nickname = Read_json.getStringFromJsonSingle1(result_userInfo, "nickname").replace("\"", "");
		
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script> 
<style type="text/css">
.TCLogo0 {
	background-color: red;
	width: 330px;
	height: 140px;
}

.TCLogo {
	width: 250px;
	height: 380px;
	position: absolute;
	clip: rect(60px, 280px, 200px, 10px);
	margin-left: -0px;
	margin-top: -0px;
}

.TCL1 {
	width: 250px;
	height: 380px;
	float: left;
	display: inline;
}

.TCL2 {
	width: 250px;
	height: 380px;
	margin-left: 108px;
	float: left;
	display: inline;
}

.TCLogo2 {
	background-color: purple;
	width: 330px;
	height: 70px;
	position: absolute;
	margin-left: 0px;
	margin-top: -5px;
}

.product_name {
	margin-top: -6px;
}

.product_name2 {
	margin-top: -28;
}

body {
	margin: 0px 0px 0px 0px;
	background-color: white;
}
</style>
<title>HappyDance</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
  <link rel="stylesheet" href="./layui/css/layui.css"  media="all">

</head>

<body>
 	<%-- <%=username%>
 	<br>
 	<%=result_products %>
	<%=result_userInfo %>
	<br><%=headimgurl%>
	<img alt="" src="<%=headimgurl%>"> 
	 <%="code="+code %><br>
	<%="openid="+openid %><br> 
	<%=access_token %><br>
	<%="result_access_token="+result_access_token %><br>
	<%=result_userInfo %>  --%>
	
</body>
<script src="./layui/layui.js" charset="utf-8"></script>
<script src="./js/jquery3.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use('layer', function(){ //独立版的layer无需执行这一句
  var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
  
  //触发事件
  var active = {
    setTop: function(){
      var that = this; 
      //多窗口模式，层叠置顶
      layer.open({
        type: 2 //此处以iframe举例
        ,title: '当你选择该窗体时，即会在最顶端'
        ,area: ['390px', '260px']
        ,shade: 0
        ,maxmin: true
        ,offset: [ //为了演示，随机坐标
          Math.random()*($(window).height()-300)
          ,Math.random()*($(window).width()-390)
        ] 
        ,content: '//layer.layui.com/test/settop.html'
        ,btn: ['继续弹出', '全部关闭'] //只是为了演示
        ,yes: function(){
          $(that).click(); 
        }
        ,btn2: function(){
          layer.closeAll();
        }
        
        ,zIndex: layer.zIndex //重点1
        ,success: function(layero){
          layer.setTop(layero); //重点2
        }
      });
    }
    ,confirmTrans: function(){
      //配置一个透明的询问框
      layer.msg('大部分参数都是可以公用的<br>合理搭配，展示不一样的风格', {
        time: 20000, //20s后自动关闭
        btn: ['明白了', '知道了', '哦']
      });
    }
    ,notice: function(){
      //示范一个公告层
      layer.open({
        type: 1
        ,title: false //不显示标题栏
        ,closeBtn: false
        ,area: '300px;'
        ,shade: 0.8
        ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
        ,btn: ['火速围观', '残忍拒绝']
        ,btnAlign: 'c'
        ,moveType: 1 //拖拽模式，0或者1
        ,content: '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">你知道吗？亲！<br>layer ≠ layui<br><br>layer只是作为Layui的一个弹层模块，由于其用户基数较大，所以常常会有人以为layui是layerui<br><br>layer虽然已被 Layui 收编为内置的弹层模块，但仍然会作为一个独立组件全力维护、升级。<br><br>我们此后的征途是星辰大海 ^_^</div>'
        ,success: function(layero){
          var btn = layero.find('.layui-layer-btn');
          btn.find('.layui-layer-btn0').attr({
            href: 'http://www.layui.com/'
            ,target: '_blank'
          });
        }
      });
    }
    ,offset: function(othis){
      var type = othis.data('type')
      ,text = othis.text();
      
      layer.open({
        type: 1
        ,offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
        ,id: 'layerDemo'+type //防止重复弹出
        ,content: '<div style="padding: 20px 100px;">'+ text +'</div>'
        ,btn: '关闭全部'
        ,btnAlign: 'c' //按钮居中
        ,shade: 0 //不显示遮罩
        ,yes: function(){
          layer.closeAll();
        }
      });
    }
  };
  
  $('#layerDemo .layui-btn').on('click', function(){
    var othis = $(this), method = othis.data('method');
    active[method] ? active[method].call(this, othis) : '';
  });
  
});
</script>
<script type="text/javascript">
	if('<%=username%>' == ''){
              getName();
		
	}else{
		var url =  'index.jsp';
		//alert(url);
		location.href = url;
	}
	<%-- function getName(){
		  if(confirm("欢迎来到HappyDancer,请问是否绑定钉钉中的账号呢？")){
                	var value001 = prompt("请输入钉钉中登录的手机号","");
                	 var mydatas = {
				     				type : 'addPhoneName',
				     				phone: value001,
				     				openid: '<%=openid%>',
				     				headimgurl: '<%=headimgurl%>',
				     			};
				     				jQuery.ajax({
				     				url : 'servlet.jsp',
				     				data : mydatas,
				     				type : "POST",
				     				traditional:true,
				     				// 期待的返回值类型
				     				complete : function(xhr, result) {
				     				},
				     				success : function(msg) {
				     					if(msg == ''){
				     						var url =  'index.jsp';
											//alert(url);
										    location.href = url;
				     					}else{
				     						alert(msg);
				     						getName();
				     					}
				     					//window.location.href = window.location.href;
				     				}
				     			}); 
                    //System.out.println("选择是后执行的代码");    //点击“是”后执行这个代码块
                }else{
                   var url =  'index.jsp';
					//alert(url);
				   //location.href = url;
				   
				   if('<%=nickname%>' == ''){
				   		alert("您还没有关注公众号哦，请‘添加朋友－公众号’，搜索开心舞蹈服务号。关注。");
				   		
				   }else{
				   			
				   		 var mydatas = {
				     				type : 'webNewUser',
				     				nickname:  '<%=nickname%>',
				     				openid: '<%=openid%>',
				     				headimgurl: '<%=headimgurl%>',
				     			};
				     				jQuery.ajax({
				     				url : 'servlet.jsp',
				     				data : mydatas,
				     				type : "POST",
				     				traditional:true,
				     				// 期待的返回值类型
				     				complete : function(xhr, result) {
				     				},
				     				success : function(msg) {
				     					if(msg == ''){
				     						var url =  'index.jsp';
										    location.href = url;
				     					}else{
				     						alert(msg);
				     						//getName();
				     					}
				     					//window.location.href = window.location.href;
				     				}
				     			}); 
				   }
				   
                }
	} --%>
	
	function getName(){
		 
                   var url =  'index.jsp';
					//alert(url);
				   //location.href = url;
				   
				   if('<%=nickname%>' == ''){
				   		alert("您还没有关注公众号哦，请‘添加朋友－公众号’，搜索开心舞蹈服务号。关注。");
				   		
				   }else{
				   			
				   		 var mydatas = {
				     				type : 'webNewUser',
				     				nickname:  '<%=nickname%>',
				     				openid: '<%=openid%>',
				     				headimgurl: '<%=headimgurl%>',
				     			};
				     				jQuery.ajax({
				     				url : 'servlet.jsp',
				     				data : mydatas,
				     				type : "POST",
				     				traditional:true,
				     				// 期待的返回值类型
				     				complete : function(xhr, result) {
				     				},
				     				success : function(msg) {
				     					if(msg == ''){
				     						var url =  'index.jsp';
										    location.href = url;
				     					}else{
				     						alert(msg);
				     						//getName();
				     					}
				     					//window.location.href = window.location.href;
				     				}
				     			}); 
				   }
	}

</script> 
</html>
