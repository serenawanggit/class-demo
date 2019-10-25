<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/page/common/common.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>在线教育</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/weui-v=3.2.0.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/font-awesome.min-v=3.2.0.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/index-v=3.2.0.css" />
	<link href="${pageContext.request.contextPath }/assets/css/alert-v=3.2.0.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath }/assets/css/swiper.fylesson-v=3.2.0.css" rel="stylesheet" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery.min-v=3.2.0.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/swiper.3.4.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery.qrcode.min-v=3.2.0.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/alert-v=3.2.0.js"></script>
	
	<style type="text/css">
	.tabbar_wrap .weui_tabbar_item .weui_tabbar_label { color: #555555; } /* 底部导航栏字体未选中颜色 */
	.tabbar_wrap .weui_tabbar_item.weui_bar_item_on .weui_tabbar_label { color: #ff9000; }/* 底部导航栏字体选中颜色 */
	.BreakingNewsController ul li a { color: #333; } /* 首页公告字体颜色 */
	.BreakingNewsController .bn-arrows { color: red; }/* 首页公告右侧[更多]字体颜色 */
	.newlesson-list li a.package .package__content .package__name { color: #333333; }/* 首页最新更新课程标题字体颜色 */
	.newlesson-list li a.package .package__content .package__info .section-title-color{ color: #f6686e; }/* 首页最新更新课程章节字体颜色 */
	.newlesson-list li a.package .package__content .package__info .update-time-color{ color: #808080; }/* 首页最新更新课程更新时间字体颜色 */
	.course_wrap .course_hd .bor-l { background: #ff9000; }/* 首页课程板块名称前面竖杠颜色 */
	.course_wrap .course_hd { color: #333333; }/* 首页课程板块名称字体颜色 */
	.course_wrap .more { color: red; }/* 首页课程板块右侧[更多]字体颜色 */
	.course_item .course-price-color,.lesson-list .course-price-color { color: red; }/* 首页课程价格字体颜色 */
	.section-status-btn {
		color: #fff; /* 首页课程[已完结]字体颜色 */
		background-color: #619cfd; /* 首页课程[已完结]字体背景颜色 */
	}
	.course_item .section-update-num { color: #4285f4; }/* 首页课程已更新课程数量字体背景颜色 */
	.course_item .sale-on-btn {
		color: #fff; /* 首页课程[仅剩:]字体颜色 */
		background-color: #f55245; /* 首页课程[仅剩:]字体背景颜色 */
	}
	.course_item .course-buy-num { color: #4285f4; }/* 首页课程已学习人数字体背景颜色 */
	</style>

  </head>
  
  <body>
    <div class="page-container" id="page-container">
		<div id="showDiv"></div>
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
				$("#showDiv").load("${pageContext.request.contextPath }/page/home01/home-phone.jsp");
				$("#footer-nav a").click(function(){
					$("#footer-nav a").removeClass("weui-bar__item_on");
					$(this).addClass("weui-bar__item_on");
					var data = $(this).children("p").html();
					if(data=="首页"){
						$("#home").attr("src","${pageContext.request.contextPath }/image/img-home1.png");
						$("#allCourse").attr("src","${pageContext.request.contextPath }/image/img-allCourse0.png");
						$("#course").attr("src","${pageContext.request.contextPath }/image/img-myCourse0.png");
						$("#myself").attr("src","${pageContext.request.contextPath }/image/img-myself0.png");
						$("#showDiv").load("${pageContext.request.contextPath }/page/home01/home-phone.jsp");
					}else if(data=="全部课程"){ 
						$("#home").attr("src","${pageContext.request.contextPath }/image/img-home0.png");
						$("#allCourse").attr("src","${pageContext.request.contextPath }/image/img-allCourse1.png");
						$("#course").attr("src","${pageContext.request.contextPath }/image/img-myCourse0.png");
						$("#myself").attr("src","${pageContext.request.contextPath }/image/img-myself0.png");
						$("#showDiv").load("${pageContext.request.contextPath }/page/home01/course-all.jsp");
					}else if(data=="我的课程"){ 
						$("#home").attr("src","${pageContext.request.contextPath }/image/img-home0.png");
						$("#allCourse").attr("src","${pageContext.request.contextPath }/image/img-allCourse0.png");
						$("#course").attr("src","${pageContext.request.contextPath }/image/img-myCourse1.png");
						$("#myself").attr("src","${pageContext.request.contextPath }/image/img-myself0.png");
						$("#showDiv").load("${pageContext.request.contextPath }/page/home01/course-my.jsp");
					}else if(data=="个人中心"){ 
						$("#home").attr("src","${pageContext.request.contextPath }/image/img-home0.png");
						$("#allCourse").attr("src","${pageContext.request.contextPath }/image/img-allCourse0.png");
						$("#course").attr("src","${pageContext.request.contextPath }/image/img-myCourse0.png");
						$("#myself").attr("src","${pageContext.request.contextPath }/image/img-myself1.png");
						$("#showDiv").load("${pageContext.request.contextPath }/page/home01/test.jsp");
					}
				});
			});
		</script>
	</div>
  </body>
</html>
