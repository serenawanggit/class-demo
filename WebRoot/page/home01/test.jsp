<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>学习平台</title>
	<style type="text/css">
		.bottom{ height:70px; text-align:center; }
		.bottom .col{ float:left; width:25%; }
		.top1{
			width:100%;
			background-color: #fff;
		}
		.top2{
			width:100%;
			height:70%;
			background-color: #fff;
			margin-top:10px;
			padding-bottom:25px;
			padding-top:15px;
		}
		.top2 table{ width:95%; margin-left:20px;}
		.myself-img{width: 60px;height: 60px;border-radius: 100%;margin:20px;margin-right:10px;}
	</style>
  </head>
  <body>
	 <div class="page-container" id="page-container">
	   <div class="top1">
	   	 <img src="${pageContext.request.contextPath}/assets/layuiadmin/style/res/template/portrait.png" alt="" class="myself-img">
	   	 <font style="font-size:24px;color:#000;">暖。</font>
	   </div>
	   <div class="top2">
	   	 <table>
	   	 	<tr style="border-bottom:1px solid #F2F2F2;height:40px;">
	   	 		<td style="padding-left:10px;">个人信息修改</td>
	   	 		<td style="text-align:right;padding-right:10px;"><i class="layui-icon layui-icon-right" style="font-size: 20px;"></i> </td>
	   	 	</tr>
	   	 	<tr style="border-bottom:1px solid #F2F2F2;height:40px;">
	   	 		<td style="padding-left:10px;">已购课程管理</td>
	   	 		<td style="text-align:right;padding-right:10px;"><i class="layui-icon layui-icon-right" style="font-size: 20px;"></i> </td>
	   	 	</tr>
	   	 	<tr style="border-bottom:1px solid #F2F2F2;height:40px;">
	   	 		<td style="padding-left:10px;">反馈建议</td>
	   	 		<td style="text-align:right;padding-right:10px;"><i class="layui-icon layui-icon-right" style="font-size: 20px;"></i> </td>
	   	 	</tr>
	   	 </table>
	   </div>
	</div>
  </body>
</html>
