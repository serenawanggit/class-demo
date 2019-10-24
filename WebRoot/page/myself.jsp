<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/page/common/common.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="format-detection" content="telephone=no">
<meta name="full-screen" content="yes">
<meta name="browsermode" content="application">
<meta name="x5-orientation" content="portrait">
<meta name="x5-fullscreen" content="true">
<meta name="x5-page-mode" content="app">

<title>学习平台</title>

<link rel="stylesheet" href="../assets/css/weui-v=3.2.0.css" />
<link rel="stylesheet" href="../assets/css/font-awesome.min-v=3.2.0.css" />
<link rel="stylesheet" href="../assets/css/index-v=3.2.0.css" />
<link href="../assets/css/alert-v=3.2.0.css" rel="stylesheet" />

<script type="text/javascript" src="../assets/js/jquery.min-v=3.2.0.js"></script>
<script type="text/javascript" src="../assets/js/swiper.3.4.1.min.js"></script>
<script type="text/javascript"
	src="../assets/js/jquery.qrcode.min-v=3.2.0.js"></script>
<script type="text/javascript" src="../assets/js/alert-v=3.2.0.js"></script>



<script src="https://res.wx.qq.com/open/js/jweixin-1.3.2.js"></script>
<style type="text/css">
.tabbar_wrap .weui_tabbar_item .weui_tabbar_label {
	color: #555555;
} /* 底部导航栏字体未选中颜色 */
.tabbar_wrap .weui_tabbar_item.weui_bar_item_on .weui_tabbar_label {
	color: #ff9000;
} /* 底部导航栏字体选中颜色 */
.BreakingNewsController ul li a {
	color: #333;
} /* 首页公告字体颜色 */
.BreakingNewsController .bn-arrows {
	color: red;
} /* 首页公告右侧[更多]字体颜色 */
.newlesson-list li a.package .package__content .package__name {
	color: #333333;
} /* 首页最新更新课程标题字体颜色 */
.newlesson-list li a.package .package__content .package__info .section-title-color
	{
	color: #f6686e;
} /* 首页最新更新课程章节字体颜色 */
.newlesson-list li a.package .package__content .package__info .update-time-color
	{
	color: #808080;
} /* 首页最新更新课程更新时间字体颜色 */
.course_wrap .course_hd .bor-l {
	background: #ff9000;
} /* 首页课程板块名称前面竖杠颜色 */
.course_wrap .course_hd {
	color: #333333;
} /* 首页课程板块名称字体颜色 */
.course_wrap .more {
	color: red;
} /* 首页课程板块右侧[更多]字体颜色 */
.course_item .course-price-color,.lesson-list .course-price-color {
	color: red;
} /* 首页课程价格字体颜色 */
.section-status-btn {
	color: #fff; /* 首页课程[已完结]字体颜色 */
	background-color: #619cfd; /* 首页课程[已完结]字体背景颜色 */
}

.course_item .section-update-num {
	color: #4285f4;
} /* 首页课程已更新课程数量字体背景颜色 */
.course_item .sale-on-btn {
	color: #fff; /* 首页课程[仅剩:]字体颜色 */
	background-color: #f55245; /* 首页课程[仅剩:]字体背景颜色 */
}

.course_item .course-buy-num {
	color: #4285f4;
} /* 首页课程已学习人数字体背景颜色 */
</style>
<style type="text/css">
.bottom {
	height: 70px;
	text-align: center;
}

.bottom .col {
	float: left;
	width: 25%;
}

.top1 {
	width: 100%;
	background-color: #fff;
}

.top2 {
	width: 100%;
	height: 70%;
	background-color: #fff;
	margin-top: 10px;
	padding-bottom: 25px;
	padding-top: 15px;
}

.top2 table {
	width: 95%;
	margin-left: 20px;
}

.myself-img {
	width: 60px;
	height: 60px;
	border-radius: 100%;
	margin: 20px;
	margin-right: 10px;
}
</style>
</head>
<body>
	<div class="page-container" id="page-container">
		<link
			href="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/style/cssv2/self.css?v=3.2.0"
			rel="stylesheet">

		<div class="mine_head"
			style="background-image:url(http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/agency-top.jpg?v=2);">
			<a class="aui-member-setting"
				href="./index.php?i=10&amp;c=mc&amp;a=profile&amp;"> <img
				src="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/self-icon-setting.png?v=2">
			</a>
			<div class="mine_head_body">
				<div class="tx">
					<img
						src="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/default_avatar.jpg"
						id="btn-avatar" alt="会员头像">
				</div>
				<div class="nickname" id="nickname"></div>
				<div class="idno" id="study_NO"></div>
			</div>
		</div>


		<div class="mine_unit ios-system">
			<a href="./course-my.jsp" class="line-grid icon_right flex1"
				style="border-bottom: 1px solid #e4e5ea;">
				<div class="boldtext flex-al1">全部订单</div>
				<div class="more">查看全部订单</div>
			</a>
		</div>
		<div class="mine_menu_grid li4 ios-system">
			<a href="./course-my.jsp?id=noPay" class="mine_menu">
				<div class="img">
					<img
						src="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/self-icon-nopay.png">
				</div>
				<div>待付款</div>
			</a> <a href="./course-my.jsp?id=payed" class="mine_menu">
				<div class="img">
					<img
						src="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/self-icon-pay.png">
				</div>
				<div>已付款</div>
			</a> <a href="./course-my.jsp?id=cancelled" class="mine_menu">
				<div class="img">
					<img
						src="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/self-icon-noverify.png">
				</div>
				<div>可核销</div>
			</a> <a href="./course-my.jsp?id=noReview" class="mine_menu">
				<div class="img">
					<img
						src="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/self-icon-evaluate.png">
				</div>
				<div>待评价</div>
			</a>
		</div>

		<div class="mine_unit">
			<a class="line-grid flex1" href="javascript:;" id="subscribe-btn">
				<div class="img flex0">
					<img class="flex_g0"
						src="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/self-icon-subscribe.png?v=8"
						style="width: 16px;">
				</div>
				<div class="flex-al1">订阅消息</div> <i class="fa fa-toggle-on"
				id="subscribe-status" data-subscribe="1"></i>
			</a> <a href="" class="line-grid icon_right flex1">
				<div class="img flex0">
					<img class="flex_g0"
						src="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/self-icon-vip-service.png?v=8"
						style="width: 16px;">
				</div>
				<div class="flex-al1">VIP服务</div>
			</a> <a href="" class="line-grid icon_right flex1 ios-system">
				<div class="img flex0">
					<img class="flex_g0"
						src="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/self-icon-teacher-buy.png?v=8"
						style="width: 16px;">
				</div>
				<div class="flex-al1">讲师服务</div>
			</a> <a href="" class="line-grid icon_right flex1 ios-system">
				<div class="img flex0">
					<img class="flex_g0"
						src="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/self-icon-lesson-invite.png?v=8"
						style="width: 16px;">
				</div>
				<div class="flex-al1">课程邀请</div>
			</a> <a href="" class="line-grid icon_right flex1">
				<div class="img flex0">
					<img class="flex_g0"
						src="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/self-icon-history.png?v=6"
						style="width: 16px;">
				</div>
				<div class="flex-al1">我的足迹</div>
			</a> <a href="" class="line-grid icon_right flex1">
				<div class="img flex0">
					<img class="flex_g0"
						src="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/self-icon-collect-lesson.png?v=6"
						style="width: 16px;">
				</div>
				<div class="flex-al1">收藏课程</div>
			</a> <a href="" class="line-grid icon_right flex1">
				<div class="img flex0">
					<img class="flex_g0"
						src="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/self-icon-collect-teacher.png?v=8"
						style="width: 16px;">
				</div>
				<div class="flex-al1">收藏讲师</div>
			</a>
		</div>

		<div class="mine_unit">
			<a href="" class="line-grid icon_right flex1 ios-system">
				<div class="img flex0">
					<img class="flex_g0"
						src="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/self-icon-collect-teachercenter.png?v=8"
						style="width: 16px;">
				</div>
				<div class="flex-al1">讲师中心</div>
			</a> <a href="" class="line-grid icon_right flex1 ios-system">
				<div class="img flex0">
					<img class="flex_g0"
						src="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/self-icon-commission.png?v=6"
						style="width: 16px;">
				</div>
				<div class="flex-al1">分销中心</div>
			</a> <a href="" class="line-grid icon_right flex1">
				<div class="img flex0">
					<img class="flex_g0"
						src="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/self-icon-study-duration.png?v=8"
						style="width: 16px;">
				</div>
				<div class="flex-al1">学习时长</div>
			</a> <a href="" class="line-grid icon_right flex1 ios-system">
				<div class="img flex0">
					<img class="flex_g0"
						src="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/self-icon-coupon.png?v=6"
						style="width: 16px;">
				</div>
				<div class="flex-al1">优惠券</div>
			</a>
		</div>

		<div class="mine_unit">
			<a href="" class="line-grid icon_right flex1">
				<div class="img flex0">
					<img class="flex_g0"
						src="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/self-icon-modify-mobile.png?v=8"
						style="width: 16px;">
				</div>
				<div class="flex-al1">修改手机</div>
			</a>
		</div>


		<!-- <div class="logout">
	<a href="">退出登录</a>
</div> -->
		<script type="text/javascript"
			src="${pageContext.request.contextPath }/js/myself.js"></script>
		<script type="text/javascript">
			$("#btn-avatar")
					.click(
							function() {
								var agent = 0;
								if (!agent) {
									return;
								}
								var sureUrl = "./index.php?i=10&c=entry&updateInfo=1&do=self&m=fy_lessonv2";
								$(this).openWindow('系统提示', '更新头像信息?',
										'["取消","确定"]', 'javascript:;', sureUrl);
							});

			$("#subscribe-btn")
					.click(
							function() {
								var subscribe = $("#subscribe-status").data(
										"subscribe");
								var new_subscribe = subscribe ? 0 : 1;

								$
										.ajax({
											url : "./index.php?i=10&c=entry&do=subscribemsg&m=fy_lessonv2",
											type : "POST",
											data : {
												subscribe : new_subscribe,
											},
											dataType : "json",
											success : function(res) {
												if (res.code == 0) {
													$("#subscribe-status")
															.data("subscribe",
																	new_subscribe);
													if (new_subscribe) {
														document
																.getElementById("subscribe-status").className = "fa fa-toggle-on";
													} else {
														document
																.getElementById("subscribe-status").className = "fa fa-toggle-off";
													}
												}
												$(this).openWindow('系统提示',
														res.msg, '["确定"]',
														'javascript:;',
														'javascript:;');
												return false;
											},
											error : function(err) {
												$(this).openWindow('系统提示',
														'网络请求出错，请稍候重试',
														'["确定"]',
														'javascript:;',
														'javascript:;');
												console.log(err);
												return false;
											}
										});
							});

			document
					.addEventListener(
							'WeixinJSBridgeReady',
							function onBridgeReady() {
								var miniprogram_environment = false;
								wx.miniProgram.getEnv(function(res) {
									if (res.miniprogram) {
										miniprogram_environment = true;
									}
								})
								if (window.__wxjs_environment === 'miniprogram'
										|| miniprogram_environment) {
									wx.miniProgram
											.postMessage({
												data : {
													'title' : "个人中心",
													'images' : "http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/agency-top.jpg?v=2",
												}
											})
									$("#mc-profile").hide();
									$("#go-credit1").attr("href",
											"javascript:;");
									$("#go-credit2").attr("href",
											"javascript:;");
								}
							});
		</script>
		<footer></footer>

		<!-- 底部导航 -->
		<div id="footer-nav" class="footer-nav">
			<a href="${pageContext.request.contextPath }/page/home-phone.jsp"
				class="weui-tabbar__item "> <img
				src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/o6QGTwRgr44zM64AW63abA4wC6MRw7.png"
				class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">首页</p>
			</a> <a href="${pageContext.request.contextPath }/page/course-all.jsp"
				class="weui-tabbar__item "> <img
				src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/dTMsHQ40Pgk56pPBFb0F4TP55BQmC5.png"
				class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">全部课程</p>
			</a> <a href="${pageContext.request.contextPath }/page/course-my.jsp"
				class="weui-tabbar__item "> <img
				src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/TpV44OvJa244122Wp41800m5Im188e.png"
				class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">我的课程</p>
			</a> <a href="${pageContext.request.contextPath }/page/myself.jsp"
				class="weui-tabbar__item weui-bar__item_on"> <img
				src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/img-mySelf.png"
				class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">个人中心</p>
			</a>
		</div>
		<!-- /底部导航 -->
	</div>

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

</body>
</html>
