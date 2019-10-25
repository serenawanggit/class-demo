<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/page/common/common.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="format-detection" content="telephone=no">
<meta name="full-screen" content="yes">
<meta name="browsermode" content="application">
<meta name="x5-orientation" content="portrait">
<meta name="x5-fullscreen" content="true">
<meta name="x5-page-mode" content="app">
<title>全部分类</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/weui-v=3.2.0.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/font-awesome.min-v=3.2.0.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/index-v=3.2.0.css" />
<link href="${pageContext.request.contextPath }/assets/css/alert-v=3.2.0.css" rel="stylesheet" />

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery.min-v=3.2.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/swiper.3.4.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery.qrcode.min-v=3.2.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/alert-v=3.2.0.js"></script>

<script src="https://res.wx.qq.com/open/js/jweixin-1.3.2.js"></script>

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
.section-status-btn {color: #fff; /* 首页课程[已完结]字体颜色 */background-color: #619cfd; /* 首页课程[已完结]字体背景颜色 */}
.course_item .section-update-num { color: #4285f4; }/* 首页课程已更新课程数量字体背景颜色 */
.course_item .sale-on-btn {color: #fff; /* 首页课程[仅剩:]字体颜色 */background-color: #f55245; /* 首页课程[仅剩:]字体背景颜色 */}
.course_item .course-buy-num { color: #4285f4; }/* 首页课程已学习人数字体背景颜色 */

.bottom{ height:70px; text-align:center; }
.bottom .col{ float:left; width:25%; }
.course-img{float: left;width: 100px;height: 100px;border-radius: 100%;}
.layadmin-caller{padding-top:15px;padding-left:10px;padding-right:10px;}
.layadmin-caller .caller-contar .caller-item{padding:6px 0;overflow: hidden;border-bottom: 1px solid #e0e0e0;}
.layadmin-caller .caller-contar .caller-item .caller-main p:first-child{padding-top:8px;}
.lesson_div_top{position: relative;padding-bottom: 36%;padding-top:10px;color: white;background-repeat: no-repeat;background-position: center center;background-size: cover;background-image: url(${pageContext.request.contextPath }/image/agency-top.jpg);}
.lesson_div_top .user_div{position: absolute;left: 45%;right: 0;top: 45%;}
</style>
</head>
<body>
		<div class="page-container" id="page-container">
<link href="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/style/cssv2/mylesson.css?v=3.2.0" rel="stylesheet">

<div class="mine_head mine_head2" style="background-image:url(${pageContext.request.contextPath}/image/agency-top.jpg);">
	<div class="titlebar">
		<a onclick="history.go(-1)" class="icon_back1"></a>
		<span>我的订单</span>
	</div>
	<div class="mine_head_body">
		<div class="tx">
			<img src="${pageContext.request.contextPath }/image/default_avatar.jpg" id="btn-avatar" alt="会员头像">
		</div>
		<div class="tip"><span id="username"> </span>，欢迎回来</div>
	</div>
</div>

<!-- 顶部导航  -->
<ul class="tab_wrap" id="tabTopUl">
	<li class="tab_item tab_item_on" ><a>全部订单</a></li>
	<li class="tab_item" ><a>待付款</a></li>
	<li class="tab_item"><a>已付款</a></li>
	<li class="tab_item"><a>已取消</a></li>
</ul>
<!-- /顶部导航  -->

<!-- 订单列表  -->
<!-- <div class="my_empty"> -->
    <div class="layadmin-caller">
      <div class="caller-contar" id="courseList">
      
        <%-- <div class="caller-item" id="course-0">
          <img src="${pageContext.request.contextPath}/image/351.jpg" class="course-img">
          <div class="flex10" style="padding-left:8px;width:45%;float:left;">
				<div>
					<div class="grid_title2"><span class="grid_info">课程名称：</span>3333333333</div>
					<div class="flex0 font_12"><span class="grid_info">课程规格：</span>长期有效</div>
					<div class="flex0 font_12"><span class="grid_info">核销状态：</span><i class="green-color">未核销</i></div>
					<div class="flex0 font_12"><span class="grid_info">下单时间：</span>2019-10-10</div>
				</div>
			</div>
          <div style="width:10%;height:30px;float:right;">
          	<button class="layui-btn layui-btn-primary layui-btn-xs" onclick="del(0)"><i class="layui-icon">&#xe640;</i></button>
          </div>
        </div>
        
        <div class="caller-item" id="course-0">
          <img src="${pageContext.request.contextPath}/image/351.jpg" class="course-img">
          <div class="flex10" style="padding-left:8px;width:45%;float:left;">
				<div>
					<div class="grid_title2"><span class="grid_info">课程名称：</span>3333333333</div>
					<div class="flex0 font_12"><span class="grid_info">课程规格：</span>长期有效</div>
					<div class="flex0 font_12"><span class="grid_info">核销状态：</span><i class="green-color">未核销</i></div>
					<div class="flex0 font_12"><span class="grid_info">下单时间：</span>2019-10-10</div>
				</div>
			</div>
          <div style="width:12%;height:30px;float:right;">
			
          </div>
        </div> --%>
        
				
      </div>
    </div>
<!-- </div> -->
<!-- 订单列表  -->
<div id="loading_div" class="loading_div"><div class="loading_bd">没有了，已经到底了</div></div>

<div id="loadingToast" style="display: none;">
	<div class="weui-mask_transparent"></div>
	<div class="weui-toast">
		<i class="weui-loading weui-icon_toast"></i>
		<p class="weui-toast__content">加载数据中</p>
	</div>
</div>

    <script type="text/javascript" src="${pageContext.request.contextPath }/js/course-my.js"></script>
    
    <footer></footer>
    
    <!-- 底部导航 -->
		<div id="footer-nav" class="footer-nav">
			<a href="${pageContext.request.contextPath }/home/index" class="weui-tabbar__item "> 
				<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/o6QGTwRgr44zM64AW63abA4wC6MRw7.png" class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">首页</p>
			</a> <a href="${pageContext.request.contextPath }/page/course-all.jsp" class="weui-tabbar__item "> 
				<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/dTMsHQ40Pgk56pPBFb0F4TP55BQmC5.png" class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">全部课程</p>
			</a>
			<a href="${pageContext.request.contextPath }/page/course-my.jsp" class="weui-tabbar__item weui-bar__item_on"> 
				<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/img-buyCourse.png" class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">我的课程</p>
			</a> 
			<a href="${pageContext.request.contextPath }/page/myself.jsp" class="weui-tabbar__item "> 
				<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/xQEED07OKwwqowKx1xKE49ZWsk4qO9.png" class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">个人中心</p>
			</a>
		</div>
		<!-- /底部导航 -->
	</div>

	<script type="text/javascript">
		var uniacid = "10";
		localStorage.setItem('lastPage_' + uniacid,
				"${pageContext.request.contextPath }/page/course-my.jsp");

		window.localStorage.setItem('lesson_back_' + uniacid, 0);

		//兼容iphoneX、XSMax、XR底部菜单
		var isIPhoneX = /iphone/gi.test(window.navigator.userAgent)
				&& window.devicePixelRatio && window.devicePixelRatio === 3
				&& window.screen.width === 375 && window.screen.height === 812;
		var isIPhoneXSMax = /iphone/gi.test(window.navigator.userAgent)
				&& window.devicePixelRatio && window.devicePixelRatio === 3
				&& window.screen.width === 414 && window.screen.height === 896;
		var isIPhoneXR = /iphone/gi.test(window.navigator.userAgent)
				&& window.devicePixelRatio && window.devicePixelRatio === 2
				&& window.screen.width === 414 && window.screen.height === 896;
		if (isIPhoneX || isIPhoneXSMax || isIPhoneXR) {
			var footer_nav = document.getElementById("footer-nav");
			var footer_nav_height = (footer_nav.clientHeight || footer_nav.offsetHeight) * 1 + 20;

			document.getElementById('page-container').style.marginBottom = '20px';
			var iphonex_head = document.head
					|| document.getElementsByTagName('head')[0];
			var iphonex_system = document.createElement('style');
			iphonex_system.innerHTML = '.page-container{margin-bottom:20px;}.footer-nav{height:'
					+ footer_nav_height + 'px;}';
			iphonex_head.appendChild(iphonex_system);
		}
	</script>
     
  </body>
</html>
