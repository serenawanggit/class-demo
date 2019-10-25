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
.section-status-btn { color: #fff; /* 首页课程[已完结]字体颜色 */ background-color: #619cfd; /* 首页课程[已完结]字体背景颜色 */ }
.course_item .section-update-num { color: #4285f4; }/* 首页课程已更新课程数量字体背景颜色 */
.course_item .sale-on-btn { color: #fff; /* 首页课程[仅剩:]字体颜色 */ background-color: #f55245; /* 首页课程[仅剩:]字体背景颜色 */ }
.course_item .course-buy-num { color: #4285f4; }/* 首页课程已学习人数字体背景颜色 */
</style>
</head>
<body>
	<div class="page-container" id="page-container">
		<link href="${pageContext.request.contextPath }/assets/css/search-v=3.2.0.css" rel="stylesheet" />

		<!-- 顶部搜索框 -->
		<div class="fix_grid_96">
			<div class="fix_grid">
				<div class="search_grid">
					<div class="search flex0">
						<i class="layui-icon layui-icon-search"></i>
						<form method="post">
							<input type="hidden" name="i" value="10" /> 
							<input type="hidden" name="c" value="entry" /> 
							<input type="hidden" name="do" value="search" /> 
							<input type="hidden" name="m" value="fy_lessonv2" /> 
							<input class="flex-al1" type="text" id="keyword" name="keyword" value="" placeholder="搜索您感兴趣的课程">
						</form>
					</div>
				</div>
				
				<div class="list_menu_grid flex0_1">
					<!-- <div class="list_menu flex-al1 flex9" onclick="showsort()"><input type="hidden" id="showsortVal" value="0">
						<span>综合排序</span><i class="layui-icon layui-icon-down" style="margin-top:5px;margin-left:3px;"></i>
					</div> -->
					<div class="list_menu flex-al1 flex9" onclick="showcategory()"><input type="hidden" id="showcategoryVal" value="0">
						<span id="courseTypeNameSpan">全部分类</span><i class="layui-icon layui-icon-down" style="margin-top:5px;margin-left:3px;"></i>
					</div>
				</div>
			</div>
		</div>
		<!-- /顶部搜索框 -->

		<!-- 筛选条件 -->
		<!-- <div class="sort_list_grid hidden">
			<a href="javascript:;" class="curr">综合排序</a> 
			<a href="javascript:;">免费课程</a>
			<a href="javascript:;">价格优先</a>
			<a href="javascript:;">人气优先</a>
			<a href="javascript:;">好评优先</a>
			<div class="mark" onclick="closesort()"></div>
		</div> -->
		<!-- /筛选条件 -->
		<!-- 课程分类 -->
		<div class="nav" data-active="cate">
			<div class="nav_panel nav_panel-cate">
				<!-- 一级分类 -->
				<ul class="nav_menu nav_panel_cate_mt" id="courseTypeParentUl"></ul>
				<!-- 二级分类 -->
				<ul id="courseTypeDiv" class="nav_menu nav_panel-cate_st" style="display:block;"></ul>
			</div>
		</div>
		<div class="nav_mask"></div>
		<!-- /课程分类 -->

		<!-- 课程列表 -->
		<div class="section">
			<div class="list_grid" id="lesson-list1">
				<a href="javascript:;" class="normal_grid flex0_1">
					<div class="normal_grid_a flex_g0">
						<div class="img-box flex_g0">
							<div class="img"><img src="${pageContext.request.contextPath}/assets/layuiadmin/style/res/template/portrait.png" style="width:100%;height:100%;"></div>
							<div class="learned">这是数据1</div>
							<i class="ico_common "></i>
						</div>
					</div>
					<div class="flex-al1 flex10">
						<div>
							<div class="grid_title2" onclick="jump(1)">这是数据2</div>
							<div class="grid_info flex0">
								<span class="price flex_g0 index_price_lesson ios-system">¥75</span>
								<span class="mar5 ios-system">|</span>
								<span class="index_section_number">26节</span>
							</div>
						</div>
						<div class="grid_bottom2 flex1">
							<div class="text">已完结</div>
							<span class="eva index_lesson_evaluation">99.99%好评</span>
						</div>
					</div>
				</a>
			</div>
			<input type="hidden" id="pageNum" value="1">
			<div id="loading_div" class="loading_div" style="padding:15px 0 30px 0;">
				<a href="javascript:loadCourseList();" id="btn_Page" ><i class="layui-icon layui-icon-down"></i>加载更多</a>
				<div id="btn_Finish" style="display: none;height: 100%;text-indent: -9999px;overflow: hidden;background: url('${pageContext.request.contextPath}/image/loaded-v=3.png') no-repeat center;background-size: auto 100%;"></div>
			</div>
		</div>
		<script type="text/javascript">
			function jump(data){
				location.href = "${pageContext.request.contextPath }/page/myCourse/course-detail.jsp";
			}
		</script>
		<!-- /课程列表 -->

		<!-- 遮罩层 -->
		<div id="sort_background" class="dropdown__background"></div>
		<!-- /遮罩层 -->


		<!-- 底部导航 -->
		<div id="footer-nav" class="footer-nav">
			<a href="${pageContext.request.contextPath }/home/index" class="weui-tabbar__item "> 
				<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/o6QGTwRgr44zM64AW63abA4wC6MRw7.png" class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">首页</p>
			</a> <a href="${pageContext.request.contextPath }/page/course-all.jsp" class="weui-tabbar__item weui-bar__item_on"> 
				<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/mHg51xpP914gG3412HxQBGC41145ct.png" class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">全部课程</p>
			</a>
			<a
				href="${pageContext.request.contextPath }/page/course-my.jsp" class="weui-tabbar__item "> 
				<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/TpV44OvJa244122Wp41800m5Im188e.png" class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">我的课程</p>
			</a> <a
				href="${pageContext.request.contextPath }/page/myself.jsp" class="weui-tabbar__item"> 
				<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/xQEED07OKwwqowKx1xKE49ZWsk4qO9.png" class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">个人中心</p>
			</a>
		</div>
		<!-- /底部导航 -->
	</div>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/course-all.js"></script>

	<script type="text/javascript">
		var uniacid = "10";
		localStorage.setItem('lastPage_' + uniacid,
				"${pageContext.request.contextPath }/page/course-type.jsp");

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
	<script> ; </script>
	<script type="text/javascript" src="index.php-i=10&c=utility&a=visit&do=showjs&m=fy_lessonv2.html"></script>
</body>
</html>
