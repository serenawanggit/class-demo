<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/page/common/common.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>在线教育</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/weui-v=3.2.0.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/index-v=3.2.0.css" />
	<style type="text/css">
	.tabbar_wrap .weui_tabbar_item .weui_tabbar_label { color: #555555; } /* 底部导航栏字体未选中颜色 */
	.tabbar_wrap .weui_tabbar_item.weui_bar_item_on .weui_tabbar_label { color: #ff9000; }/* 底部导航栏字体选中颜色 */
	</style>
  </head>
  
<body>
	<div class="page-container" id="page-container">
		<iframe id="iframeId" src="home-phone.jsp" style="width:100%;height:100%;" frameborder="no" border="0" ></iframe>
		<!-- 底部导航 -->
		<div id="footer-nav" class="footer-nav">
			<a class="weui-tabbar__item"> 
				<img id="home" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/zGBD88TBj338v8B8e4Mcbfj24b4e2E.png" class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">首页</p>
			</a> 
			<a class="weui-tabbar__item "> 
				<img id="allCourse" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/dTMsHQ40Pgk56pPBFb0F4TP55BQmC5.png" class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">全部课程</p>
			</a>
			<a class="weui-tabbar__item "> 
				<img id="course" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/TpV44OvJa244122Wp41800m5Im188e.png" class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">我的课程</p>
			</a> 
			<a class="weui-tabbar__item "> 
				<img id="myself" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/xQEED07OKwwqowKx1xKE49ZWsk4qO9.png" class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">个人中心</p>
			</a>
		</div>
		<!-- /底部导航 -->
		<script type="text/javascript">
			$(function(){
				$("#footer-nav a").click(function(){
					$("#footer-nav a").removeClass("weui-bar__item_on");
					$(this).addClass("weui-bar__item_on");
					var data = $(this).children("p").html();
					if(data=="首页"){
						$("#home").attr("src","${pageContext.request.contextPath }/image/img-home1.png");
						$("#allCourse").attr("src","${pageContext.request.contextPath }/image/img-allCourse0.png");
						$("#course").attr("src","${pageContext.request.contextPath }/image/img-myCourse0.png");
						$("#myself").attr("src","${pageContext.request.contextPath }/image/img-myself0.png");
						$("#iframeId").attr("src","${pageContext.request.contextPath }/page/home-phone.jsp");
					}else if(data=="全部课程"){ 
						$("#home").attr("src","${pageContext.request.contextPath }/image/img-home0.png");
						$("#allCourse").attr("src","${pageContext.request.contextPath }/image/img-allCourse1.png");
						$("#course").attr("src","${pageContext.request.contextPath }/image/img-myCourse0.png");
						$("#myself").attr("src","${pageContext.request.contextPath }/image/img-myself0.png");
						$("#iframeId").attr("src","${pageContext.request.contextPath }/page/course-all.jsp");
					}else if(data=="我的课程"){ 
						$("#home").attr("src","${pageContext.request.contextPath }/image/img-home0.png");
						$("#allCourse").attr("src","${pageContext.request.contextPath }/image/img-allCourse0.png");
						$("#course").attr("src","${pageContext.request.contextPath }/image/img-myCourse1.png");
						$("#myself").attr("src","${pageContext.request.contextPath }/image/img-myself0.png");
						$("#iframeId").attr("src","${pageContext.request.contextPath }/page/course-my.jsp");
					}else if(data=="个人中心"){ 
						$("#home").attr("src","${pageContext.request.contextPath }/image/img-home0.png");
						$("#allCourse").attr("src","${pageContext.request.contextPath }/image/img-allCourse0.png");
						$("#course").attr("src","${pageContext.request.contextPath }/image/img-myCourse0.png");
						$("#myself").attr("src","${pageContext.request.contextPath }/image/img-myself1.png");
						$("#iframeId").attr("src","${pageContext.request.contextPath }/page/myself.jsp");
					}
				});
			});
		</script>
	</div>
</body>
</html>
