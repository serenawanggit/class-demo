<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/page/common/common.jsp" %>

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
<title>商业模式攻略·音频版（第一季完结）</title>


<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/weui-v=3.2.0.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/font-awesome.min-v=3.2.0.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/index-v=3.2.0.css"/>
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
.header-2 .top_ico_back{position: absolute; top: 0; left: 12px; width: 20px; height: 20px;}
.header-2 .top_ico_home{position: absolute; top: 0; right: 18px; width: 20px; height: 20px;}
</style>
</head>
<body>
	<div class="page-container" id="page-container">
		<link href="${pageContext.request.contextPath }/assets/css/qunService-v=3.2.0.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath }/assets/css/lesson-v=3.2.0.css" rel="stylesheet" />

		<div class="header-2 cbox">
			<a href="javascript:history.back(-1);" class="top_ico_back"><i class="layui-icon layui-icon-left" style="font-size:25px;"></i></a>
			<div class="flex title">商业模式攻略·音频版（第一季完结）</div>
			<a href="${pageContext.request.contextPath }/page/home.jsp" class="top_ico_home"><i class="layui-icon layui-icon-home" style="font-size:25px;"></i></a>
		</div>

		<div class="content-inner" style="min-height:100%;"
			onbeforeunload="goodbye()">
			<!-- 视频区域 S -->
			<input type="hidden" id="realPlayTime" value="0" />
			<div class="video-wrap">
				<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/01/z6R0d0Z5u001DzN1Xid8XzX0d5d5CO.png"
					alt="商业模式攻略·音频版（第一季完结）" width="100%">
				<div class="learned">507 人已报名</div>
			</div>
			<!-- 视频区域 E -->

			<!-- 导航目录 S -->
			<ul class="course-tab">
				<li class="curr">详情</li>
				<li>目录</li>
				<li>评价(0)</li>
			</ul>
			<!-- 导航目录 E -->

			<div class="course-container">
				<!-- 课程介绍 S -->
				<div class="js-tab" style="display: block;">
					<ul class="course-intro">
						<li style="padding-bottom: 10px;">
							<p class="title-bar__title" onclick="location.href=''">
								<span class="section-status-btn fs-14 vertical-botton">已完结</span>
								商业模式攻略·音频版（第一季完结）
							</p>
							<p class="lesson-bar clear">
								<span class="grid_info mar15-left fl ios-system"> <span
									class="price index_price_lesson font-bold flex_g0 ios-system">¥99.00</span>
									<span class="mar5 ios-system">|</span> <span>66节</span>
								</span> <span class="vnum fr"> </span>
							</p>
							<div class="flex1" style="margin: 5px 15px 0 15px;">
								<div class="grid_info flex0">周永亮</div>
								<span class="teacher flex_g0"> </span>
							</div>
						</li>
						<li class="details">
							<div class="index_title bor flex1">
								<div class="img flex0">
									<img class="flex_g0"
										src="${pageContext.request.contextPath }/addons/fy_lessonv2/template/mobile/default/images/lesson_introduce.png"
										style="width: 20px;">
								</div>
								<div class="flex_all">课程介绍</div>
							</div>
							<div class="lesson-content chapter-content">
								<p>
									<img src="${pageContext.request.contextPath }/attachment/images/10/2018/09/HXe6y9fFYajD9DaAD9d8qYyEt3yawP.jpg"
										width="100%" alt="下载.jpg" />
								</p>
							</div>
						</li>
						<li class="details teacher_introduce">
							<div class="index_title bor flex1">
								<div class="img flex0">
									<img class="flex_g0"
										src="${pageContext.request.contextPath }/addons/fy_lessonv2/template/mobile/default/images/lesson_teacher_introduce.png"
										style="width: 20px;">
								</div>
								<div class="flex_all">讲师介绍</div>
							</div>
							<div class="chapter-content">
								<%-- <p class="teacher-intro">
									<span class="chapter-intro-user"
										onclick="location.href='./index.php?i=10&c=entry&teacherid=52&do=teacher&m=fy_lessonv2'">
										<img
										src="${pageContext.request.contextPath }/image/attachment/images/10/2018/09/no6QVzOVzLS6oaXVMd6v96zFQ9on9k.jpeg"
										width="50" height="50" style="display:inline-block;"> <strong>周永亮</strong>
										<span>总共6个课程</span> <i class="fa fa-exclamation-circle">
											查看全部课程</i>
									</span>
								</p> --%>
								<p>
									<img
										src="${pageContext.request.contextPath }/image/attachment/images/10/2018/09/yAJRjUvO0ZoAj0252d8V222e5v55Qv.jpeg"
										width="100%" alt="WechatIMG10015.jpeg" />
								</p>
							</div>
						</li>
					</ul>
				</div>
				<!-- 课程介绍 E -->

				<!-- 章节目录 S -->
				<div class="js-tab">
					<ul class="course-chapter">
						<li>
							<h2 class="chapter-title" onclick="javascript:;">
								<i class="section-title-icon"></i>商业模式攻略·音频版（第一季完结）[66课时]
							</h2>
							<ul class="course-sections">
								<li><a href="javascript:;" onclick="readSection(362);">
										<div>
											<i class="course-type"> 音频 </i> 第一节：没有被淘汰的行业，只有被淘汰的模式
										</div>
<!-- 										<div class="free-time-content"> -->
<!-- 											<span class="free-play-box"> <i -->
<!-- 												class="fa fa-play-circle"></i> <i class="free-play-font">免费试听</i> -->
<!-- 											</span> &nbsp;&nbsp;&nbsp;&nbsp; -->

<!-- 										</div> -->
								</a></li>
								<li><a href="javascript:;" onclick="readSection(363);">
										<div>
											<i class="course-type"> 音频 </i> 第二节：学会像鹰一样，快人一步发现趋势
										</div>
										<!-- <div class="free-time-content">
											<span class="free-play-box"> <i
												class="fa fa-play-circle"></i> <i class="free-play-font">免费试听</i>
											</span> &nbsp;&nbsp;&nbsp;&nbsp;

										</div> -->
								</a></li>
								<li><a href="javascript:;" onclick="readSection(364);">
										<div>
											<i class="course-type"> 音频 </i> 第三节：共享经济会怎样影响我们的生活
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(365);">
										<div>
											<i class="course-type"> 音频 </i> 第四节：打开企业盈利能力的阀门
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(366);">
										<div>
											<i class="course-type"> 音频 </i> 第五节：以弱胜强的游击战思维
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(367);">
										<div>
											<i class="course-type"> 音频 </i> 第六节：找到破局点，打好游击战
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(368);">
										<div>
											<i class="course-type"> 音频 </i> 第七节：商业模式起手式之尖刀开路
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(369);">
										<div>
											<i class="course-type"> 音频 </i> 第八节：商业模式起手式之物尽其用
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(370);">
										<div>
											<i class="course-type"> 音频 </i> 第九节：商业模式起手式之规则创新
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(371);">
										<div>
											<i class="course-type"> 音频 </i> 第十节：商业模式创新的六大误区
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(372);">
										<div>
											<i class="course-type"> 音频 </i> 第十一节：咖啡行业的客户细分攻略
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(373);">
										<div>
											<i class="course-type"> 音频 </i> 第十二节：学会这三招，方案将更能打动听众
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(374);">
										<div>
											<i class="course-type"> 音频 </i> 第十三节：未来做房地产，这节是必听课
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(375);">
										<div>
											<i class="course-type"> 音频 </i> 第十四节：真能吸引人的广告牌是这样的
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(376);">
										<div>
											<i class="course-type"> 音频 </i> 第十五节：发现消费者中的分歧者
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(377);">
										<div>
											<i class="course-type"> 音频 </i> 第十六节：为客户营造一次盗梦空间
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(378);">
										<div>
											<i class="course-type"> 音频 </i> 第十七节：避免自嗨的客户需求洞察清单
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(379);">
										<div>
											<i class="course-type"> 音频 </i> 第十八节：价值创造之突围中的中国茶品牌
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(380);">
										<div>
											<i class="course-type"> 音频 </i> 第十九节：价值创造之让客户尖叫的瞬间
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(381);">
										<div>
											<i class="course-type"> 音频 </i> 第二十节：价值创造之设计出的极致体验（上）
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(382);">
										<div>
											<i class="course-type"> 音频 </i> 第二十一节：价值创造之设计出的极致体验（下）
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(383);">
										<div>
											<i class="course-type"> 音频 </i> 第二十二节：客户买账的广告语是这么设计的
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(384);">
										<div>
											<i class="course-type"> 音频 </i> 第二十三节：给客户一个不能拒绝的理由
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(385);">
										<div>
											<i class="course-type"> 音频 </i> 第二十四节：让客户心动的卖点清单（一）
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(386);">
										<div>
											<i class="course-type"> 音频 </i> 第二十五节：让客户心动的卖点清单（二）
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(387);">
										<div>
											<i class="course-type"> 音频 </i> 第二十六节：让客户心动的卖点清单（三）
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(388);">
										<div>
											<i class="course-type"> 音频 </i> 第二十七节：让客户心动的卖点清单（四）
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(389);">
										<div>
											<i class="course-type"> 音频 </i> 第二十八节：让客户心动的卖点清单（五）
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(402);">
										<div>
											<i class="course-type"> 音频 </i> 第二十九节：让客户心动的卖点清单（六）
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(404);">
										<div>
											<i class="course-type"> 音频 </i> 第三十节：让客户心动的卖点清单（七）
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(463);">
										<div>
											<i class="course-type"> 音频 </i> 第三十一节：让客户心动的卖点清单（八）
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(464);">
										<div>
											<i class="course-type"> 音频 </i> 第三十二节：如何布局高效的渠道通路
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(465);">
										<div>
											<i class="course-type"> 音频 </i> 第三十三节：市场推广，你必须要知道的
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(466);">
										<div>
											<i class="course-type"> 音频 </i> 第三十四节：新产品的渠道通路设计
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(467);">
										<div>
											<i class="course-type"> 音频 </i> 第三十五节：如何让消费者想买就能买到你的产品
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(468);">
										<div>
											<i class="course-type"> 音频 </i> 第三十六节：为什么我要做线下体验店（上）
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(469);">
										<div>
											<i class="course-type"> 音频 </i> 第三十七节：为什么我要做线下体验店（下）
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(470);">
										<div>
											<i class="course-type"> 音频 </i> 第三十八节：如何用好地推这把利剑（上）
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(471);">
										<div>
											<i class="course-type"> 音频 </i> 第三十九节：如何用好地推这把利剑（下）
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(472);">
										<div>
											<i class="course-type"> 音频 </i> 第四十节：渠道建设的参考清单
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(482);">
										<div>
											<i class="course-type"> 音频 </i> 第四十一节：如何保持企业持续盈利
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(486);">
										<div>
											<i class="course-type"> 音频 </i> 第四十二节：听说过零成本做广告，听说过赚钱做广告的吗
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(487);">
										<div>
											<i class="course-type"> 音频 </i> 第四十三节：我撒币是有套路的
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(488);">
										<div>
											<i class="course-type"> 音频 </i> 第四十四节：好市多会员费给创业者的启示（上）
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(489);">
										<div>
											<i class="course-type"> 音频 </i> 第四十五节：好市多会员费给创业者的启示（下）
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(495);">
										<div>
											<i class="course-type"> 音频 </i> 第四十六节：游戏行业的盈利之路（上）
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(496);">
										<div>
											<i class="course-type"> 音频 </i> 第四十七节：游戏行业的盈利之路（中）
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(497);">
										<div>
											<i class="course-type"> 音频 </i> 第四十八节：游戏行业的盈利之路（下）
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(498);">
										<div>
											<i class="course-type"> 音频 </i> 第四十九节：把盈利的构想变成可行的计划
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(499);">
										<div>
											<i class="course-type"> 音频 </i> 第五十节：埃隆.马斯克给创业者的启示
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(500);">
										<div>
											<i class="course-type"> 音频 </i> 第五十一节：OEM企业转型攻略
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(501);">
										<div>
											<i class="course-type"> 音频 </i> 第五十二节：相亲和投资的评判逻辑原来是一样的
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(502);">
										<div>
											<i class="course-type"> 音频 </i> 第五十三节：谁说抄袭不是关键资源和能力
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(503);">
										<div>
											<i class="course-type"> 音频 </i> 第五十四节：吉利的成长之路
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(504);">
										<div>
											<i class="course-type"> 音频 </i> 第五十五节：张瑞敏去他们家学什么
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(505);">
										<div>
											<i class="course-type"> 音频 </i> 第五十六节：京东的护城河
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(506);">
										<div>
											<i class="course-type"> 音频 </i> 第五十七节：资本和商业模式的关系
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(507);">
										<div>
											<i class="course-type"> 音频 </i> 第五十八节：投入和产出还能这么设计
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(508);">
										<div>
											<i class="course-type"> 音频 </i> 第五十九节：可口可乐的轻资产、重资产
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(509);">
										<div>
											<i class="course-type"> 音频 </i> 第六十节：银行的商业模式与互联网金融
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(510);">
										<div>
											<i class="course-type"> 音频 </i> 第六十一节：股权融资你需要注意什么
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(511);">
										<div>
											<i class="course-type"> 音频 </i> 第六十二节：赚钱的企业不一定值钱
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(512);">
										<div>
											<i class="course-type"> 音频 </i> 第六十三节：如何提高资产周转率
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(513);">
										<div>
											<i class="course-type"> 音频 </i> 第六十四节：亚马逊的关键一跃
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(514);">
										<div>
											<i class="course-type"> 音频 </i> 第六十五节：商业模式测评（上）
										</div>
										<div class="free-time-content"></div>
								</a></li>
								<li><a href="javascript:;" onclick="readSection(515);">
										<div>
											<i class="course-type"> 音频 </i> 第六十六节：商业模式测评（下）
										</div>
										<div class="free-time-content"></div>
								</a></li>
							</ul>
						</li>
						<ul>
				</div>
				<!-- 章节目录 E -->

				<!-- 评价列表 S -->
				<div class="js-tab">
					<div class="evaluate-wrap">
						<div class="evaluate-general" id="evaluate_general">
							<div class="score-general">0%</div>
							<div class="score-item">
								<p class="score-title">综合评分</p>
								<p class="score-num"></p>
							</div>
							<div class="score-item">
								<p class="score-title">内容实用</p>
								<p class="score-num"></p>
							</div>
							<div class="score-item">
								<p class="score-title">通俗易懂</p>
								<p class="score-num"></p>
							</div>
						</div>

						<div class="evaluate-list" id="evaluate_list"></div>
					</div>

					<div id="loading_div" class="loading_div">
						<a href="javascript:void(0);" id="btn_Page"><i
							class="fa fa-arrow-circle-down"></i> 加载更多</a>
					</div>
				</div>
				<!-- 评价列表 E -->
			</div>
		</div>

		<!-- 右侧快捷导航 -->

		<div class="btn_mark">
			<div class="btn_home">
				<i class="mt15 fa">菜单</i>
			</div>
			<div class="btn_mark_bg"></div>
			<a class="btn_menu btn_index"
				href="index.php-i=10&c=entry&do=index&m=fy_lessonv2&t=1.html"><i
				class="mt12 fa fa-home"></i></a> <a class="btn_menu btn_spread"
				href="index.php-i=10&c=entry&clear=1&do=search&m=fy_lessonv2.html"><i
				class="mt12 fa fa-video-camera"></i></a> <a class="btn_menu btn_course"
				href="index.php-i=10&c=auth&a=login&forward=aT0xMCZjPWVudHJ5JmRvPW15bGVzc29uJm09ZnlfbGVzc29udjI=&wxref=mp.weixin.qq.com.html"><i
				class="mt12 fa fa-book"></i></a> <a class="btn_menu btn_my"
				href="index.php-i=10&c=auth&a=login&forward=aT0xMCZjPWVudHJ5JmRvPXNlbGYmbT1meV9sZXNzb252Mg==&wxref=mp.weixin.qq.com.html"><i
				class="mt12 fa fa-user"></i></a>
		</div>
		<script type="text/javascript">
			$(function() {
				$(".weui_tabbar a").click(function() {
					$(this).addClass("weui_bar_item_on").siblings().removeClass("weui_bar_item_on");
				});
				$(".btn_home").click(function(e) {
					e.preventDefault();
					e.stopPropagation();
					$(this).parent().toggleClass("active");
				});
				$(".btn_mark").click(function(e) {
					$(this).toggleClass("active");
				});
			})
		</script>
		<!-- /快捷导航 -->
		<div id="loadingToast" style="display: none;">
			<div class="weui-mask_transparent"></div>
			<div class="weui-toast">
				<i class="weui-loading weui-icon_toast"></i>
				<p class="weui-toast__content">数据加载中</p>
			</div>
		</div>

		<div id="cover" class="teacher-qrcode max-width-640">
			<div class="qrcode-content">
				<img
					src="${pageContext.request.contextPath }/attachment/images/10/2019/02/cgb75c07H63bDJdKDZh5M6dhMtsTtA.jpg" />
				<p>二维码咨询方式</p>
			</div>
		</div>

		<div id="bottom-contact" class="max-width-640 hide">
			<div class="contact-wrap">
				<div class="contact-wrap-title">咨询交流</div>
				<div class="border-top layer-list_item">
					<a href="javascript:;" id="btn-qrcode">
						<div class="layer-list_item-icon">
							<img class="layer-list_item-img"
								src="${pageContext.request.contextPath }/attachment/images/10/2019/02/cgb75c07H63bDJdKDZh5M6dhMtsTtA.jpg">
						</div>
						<p class="layer-list_item-name">微信咨询</p>
						<p class="layer-list_item-info">点击查看二维码</p>
						<div class="layer-list_item-go">
							<i class="icon-font i-v-right">&gt;</i>
						</div>
					</a>
				</div>
				<div class="border-top layer-list_item">
					<a id="qq-consult"
						href="http://wpa.qq.com/msgrd?v=3&uin=285965848&site=qq&menu=yes">
						<div class="layer-list_item-icon">
							<img class="layer-list_item-img"
								src="${pageContext.request.contextPath }/addons/fy_lessonv2/template/mobile/default/images/contact-1v1-v=1.png">
						</div>
						<p class="layer-list_item-name">QQ咨询</p>
						<p class="layer-list_item-info">QQ:285965848</p>
						<div class="layer-list_item-go">
							<i class="icon-font i-v-right">&gt;</i>
						</div>
					</a>
				</div>
				<div class="contact-wrap__qun border-top">
					<div class="contact-wrap-qun-title">
						加群交流<span class="contact-wrap-qun-desc">(获取资料、学员交流)</span>
					</div>
					<ul>
						<li class="layer-list_item"><a id="qqgroup-consult">
								<div class="layer-list_item-icon">
									<img class="layer-list_item-img"
										src="${pageContext.request.contextPath }/attachment/images/10/2018/09/no6QVzOVzLS6oaXVMd6v96zFQ9on9k.jpeg">
								</div>
								<p class="layer-list_item-name z-tail">周永亮讲师交流群</p>
								<p class="layer-list_item-info">QQ群:550890302</p>
								<div class="layer-list_item-go">
									<i class="icon-font i-v-right">&gt;</i>
								</div>
						</a></li>
					</ul>
				</div>
			</div>
			<div class="layer-close">关闭</div>
		</div>
		<div id="layer-bg" class="hide"></div>

		<!-- 遮罩层 -->
		<div class="flick-menu-mask hide" onclick="closeSpec();"></div>
		<!--课程规格start-->
		<div class="spec-menu-content max-width-640 spec-menu-show hide">
			<div class="spec-menu-top bdr-b">
				<div class="spec-first-pic">
					<img id="spec_image"
						src="${pageContext.request.contextPath }/image/attachment/images/10/2019/01/z6R0d0Z5u001DzN1Xid8XzX0d5d5CO.png"
						onerror="imgErr(this)">
				</div>
				<a class="rt-close-btn-wrap spec-menu-close" onclick="closeSpec();">
					<p class="flick-menu-close"></p>
				</a>
				<div class="spec-price" id="specJdPri" style="display: block">
					<span class="yang-pic spec-yang-pic"></span> <span id="spec_price">
						￥99.00 </span>
				</div>
			</div>
			<div class="spec-menu-middle">
				<div class="prod-spec" id="prodSpecArea">
					<!-- 已选 -->
					<div class="spec-desc">
						<span class="part-note-msg">已选</span>
						<div id="specDetailInfo_lesson" class="base-txt"></div>
					</div>
					<div class="nature-container" id="natureCotainer">
						<div class="pro-color">
							<span class="part-note-msg"> 规格 </span>
							<p id="color">
								<a class="a-item spec_1271" href="javascript:;"
									onclick="updateColorSizeSpec('1271','99.00','365','')">有效期365天</a>
							</p>
							<input type="hidden" id="spec_id" value="" />
						</div>
					</div>
				</div>
			</div>
			<div class="flick-menu-btn spec-menu-btn">
				<a class="directorder" id="buy_now">立即报名</a>
			</div>
		</div>
		<!--课程规格end-->

		<!--VIP列表start-->
		<div class="spec-menu-content vip-menu-show hide">
			<div class="spec-menu-top bdr-b">
				<div class="spec-first-pic">
					<img id="spec_image"
						src="${pageContext.request.contextPath }/addons/fy_lessonv2/template/mobile/default/images/lesson_buy_vip.png"
						onerror="imgErr(this)">
				</div>
				<a class="rt-close-btn-wrap spec-menu-close" onclick="closeSpec();">
					<p class="flick-menu-close"></p>
				</a>
				<div class="spec-price vip-price-color" style="display: block">
					<span class="yang-pic spec-yang-pic"></span> <span id="level_price"></span>
				</div>
			</div>
			<div class="spec-menu-middle">
				<div class="prod-spec">
					<div class="spec-desc" style="margin-bottom: 5px;">
						<span class="part-note-msg">已选</span>
						<div id="specDetailInfo_vip" class="base-txt"></div>
					</div>
					<div class="nature-container">
						<div class="pro-color">
							<span class="part-note-msg" style="width:50px;">VIP等级</span>
							<p>
								<a class="a-item vip_12" href="javascript:;"
									onclick="selectVipSpec('12','599.00','365','金猪年卡-365天')">金猪年卡-365天</a>
							</p>
							<input type="hidden" id="vip_id" value="" />
						</div>
					</div>
				</div>
			</div>
			<div class="flick-menu-btn spec-menu-btn">
				<a class="btn-buy-vip" id="buy_vip">开通VIP</a>
			</div>
		</div>
		<!--VIP列表end-->

		<ul class="d-buynow max-width-640">
			<li class="btn-qq "><a href="javascript:;" id="btn-qq"><i
					class="ico ico-lessonqq"></i>咨询</a></li>
			<li class="btn-collect " id="btn-collect"><a href="javascript:;"><i
					class="ico ico-collect"></i>收藏</a></li>

			<!-- 显示开通VIP和立即购买 -->
			<li class="btn-buy two-btn-buy no-ios" id="buy-vip"><a
				href="javascript:;" class="buy buy_now orange"><p class="num">开通VIP</p></a></li>
			<li class="btn-buy two-btn-buy is-ios" style="display:none;"><a
				href="javascript:;" class="buy buy_now orange"><p class="num">开通VIP</p></a></li>
			<li class="btn-buy two-btn-buy no-ios" id="buy-now"><a
				href="javascript:;" class="buy buy_now red"><p class="num">立即报名</p></a></li>
			<li class="btn-buy two-btn-buy is-ios" style="display:none;"><a
				href="javascript:;" class="buy buy_now red"><p class="num">立即报名</p></a></li>
		</ul>

		<script type="text/javascript">
			var ajaxurl = "./index.php?i=10&c=entry&id=86&do=getevaluate&m=fy_lessonv2";
			var get_status = true; //允许获取状态

			$(function() {
				var nowPage = 1;
				function getData(page) {
					if (get_status) {
						nowPage++;
						$
								.get(
										ajaxurl,
										{
											page : page
										},
										function(data) {
											var jsonObj = JSON.parse(data);
											if (jsonObj.length > 0) {
												insertDiv(jsonObj);
											} else {
												get_status = false;
												document
														.getElementById("loading_div").innerHTML = '<div class="loading_bd">没有了，已经到底了</div>';
											}
										});
					}
				}
				//初始化加载第一页数据  
				getData(1);

				//生成数据html,append到div中  
				function insertDiv(result) {
					var mainDiv = $("#evaluate_list");
					var chtml = '';
					for (var j = 0; j < result.length; j++) {
						chtml += '<div class="evaluate-item">';
						chtml += '	<div class="item-head clearfix">';
						chtml += '		<div class="commenter-box clearfix">';
						chtml += '			<img src="' + result[j].avatar + '">';
						chtml += '			<span>' + result[j].nickname + '</span>';
						chtml += '			<p class="time">' + result[j].addtime
								+ '</p>';
						chtml += '		</div>';
						chtml += '		<div class="item-head-right">';
						chtml += '			<span class="star-wrap clearfix">';
						chtml += '				<img src="' + result[j].grade_ico + '">';
						chtml += '				<i>' + result[j].grade + '</i>';
						chtml += '			</span>';
						chtml += '		</div>';
						chtml += '	</div>';
						chtml += '	<p class="item-content">'
								+ result[j].content + '</p>';
						if (result[j].reply != null && result[j].reply != '') {
							chtml += '<p class="item-reply">讲师回复：'
									+ result[j].reply + '</p>';
						}
						chtml += '</div>';
					}
					mainDiv.append(chtml);
				}

				//定义鼠标滚动事件
				var scroll_loading = false;
				$(window).scroll(
						function() {
							var scrollTop = $(this).scrollTop();
							var scrollHeight = $(document).height();
							var windowHeight = $(this).height();
							if (scrollTop + windowHeight >= scrollHeight
									&& !scroll_loading) {
								scroll_loading = true;
								getData(nowPage);
								scroll_loading = false;
							}
						});
				$("#btn_Page").click(function() {
					getData(nowPage);
				});

				//单规格课程自动选中    
				var spec_id = 1271;
				var spec_price = 99.00;
				var spec_day = 365;
				var spec_name = "";
				updateColorSizeSpec(spec_id, spec_price, spec_day, spec_name);
			});
		</script>

		<script type="text/javascript">
			var iosBuyTip = '';
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
								if ((window.__wxjs_environment === 'miniprogram' || miniprogram_environment)) {
									wx.miniProgram
											.getEnv(function(res) {
												wx.miniProgram
														.postMessage({
															data : {
																'title' : "商业模式攻略·音频版（第一季完结）",
																'images' : "${pageContext.request.contextPath }/attachment/images/10/2019/01/z6R0d0Z5u001DzN1Xid8XzX0d5d5CO.png",
															}
														})
											});
									$("#qq-consult").attr("href",
											"javascript:;");
									$("#qqgroup-consult").attr("href",
											"javascript:;");
									$("#all-consult").attr("href",
											"javascript:;");
									$(".follow_qrcode").hide();

								}
							});

			function readSection(sectionid) {
				var lessonid = "86";
				$("#loadingToast").show();

				$
						.ajax({
							type : 'get',
							url : "./index.php?i=10&c=entry&do=sectionstudystatus&m=fy_lessonv2",
							data : {
								id : lessonid,
								sectionid : sectionid
							},
							dataType : 'json',
							success : function(data) {
								$("#loadingToast").hide();
								if (data.code == 0) {
									location.href = "./index.php?i=10&c=entry&do=lesson&m=fy_lessonv2&id="
											+ lessonid
											+ "&sectionid="
											+ sectionid;
								} else if (data.code == -99) {
									alert(iosBuyTip ? iosBuyTip : data.msg);
								} else {
									alert(data.msg);
								}
							},
							error : function(error) {
								$("#loadingToast").hide();
								alert('网络繁忙，请稍候重试');
							}
						});
			}
		</script>

		<script type="text/javascript">
			// “章节”、“课程详情”tab切换
			$(".course-tab").on("click", 'li', function() {
				var $currItem = $(this), index = $currItem.index();

				$currItem.addClass('curr').siblings().removeClass('curr');
				$(".js-tab").hide().eq(index).show();

			});

			//展开和关闭章节
			function handleSection(obj) {
				$(obj).find('span').toggleClass("open");
				$(obj).next('ul').toggleClass("hide");
			}

			//展开咨询
			$("#btn-qq").click(function() {
				$("#bottom-contact").removeClass("hide");
				$("#layer-bg").removeClass("hide");
			});
			//关闭咨询
			$(".layer-close").click(function() {
				$("#bottom-contact").addClass("hide");
				$("#layer-bg").addClass("hide");

			});

			//微信二维码
			$('#btn-qrcode').click(function() {
				$('#cover').fadeIn(200).unbind('click').click(function() {
					$(this).fadeOut(100);
				})
			});

			//课程规格
			$("#buy-now").click(function() {
				$(".flick-menu-mask").removeClass('hide');
				$(".spec-menu-show").removeClass('hide');
			});
			//购买课程下一步
			$("#buy_now")
					.click(
							function() {
								var spec_id = $("#spec_id").val();
								if (!spec_id) {
									alert("请选择课程规格");
									return false;
								}
								alert("业务繁忙，稍后再试！");
// 								location.href = "./index.php?i=10&c=entry&id=86&do=confirm&m=fy_lessonv2&spec_id="
// 										+ spec_id;
							});
			//关闭课程和VIP规格
			function closeSpec() {
				$(".flick-menu-mask").addClass('hide');
				$(".spec-menu-show").addClass('hide');
				$(".vip-menu-show").addClass('hide');
			}

			//开通VIP
			$("#buy-vip").click(function() {
				$(".flick-menu-mask").removeClass('hide');
				$(".vip-menu-show").removeClass('hide');
			});
			//提交VIP订单
			$("#buy_vip")
					.click(
							function() {
								var vip_id = $("#vip_id").val();
								if (!vip_id) {
									alert("请选择要购买的VIP等级");
									return false;
								}
								alert("业务繁忙，稍后再试！");
// 								location.href = "./index.php?i=10&c=entry&op=buyvip&do=vip&m=fy_lessonv2&level_id="
// 										+ vip_id;
							});

			//收藏按钮
			$("#btn-collect").click(function() {
				layer.msg("已收藏");
				var id = "86";
				var ajaxurl = "./index.php?i=10&c=entry&ctype=lesson&do=updatecollect&m=fy_lessonv2";
				$.ajax({
					type : 'post',
					url : ajaxurl,
					data : {
						id : id
					},
					dataType : 'json',
					success : function(data) {
						if (data == '1') {
							$("#btn-collect a").addClass("cur");
						} else if (data == '2') {
							$("#btn-collect a").removeClass("cur");
						}
					}
				});
			});

			//选择课程规格
			function updateColorSizeSpec(spec_id, spec_price, spec_day,
					spec_name) {
				$(".a-item").removeClass("selected");
				$(".spec_" + spec_id).addClass("selected");
				$("#spec_id").val(spec_id);
				document.getElementById("spec_price").innerHTML = "￥"
						+ spec_price;

				document.getElementById("specDetailInfo_lesson").innerHTML = spec_day == -1 ? '长期有效'
						: "有效期" + spec_day + "天";
			}

			//选择vip规则
			function selectVipSpec(level_id, level_price, level_validity,
					level_name) {
				$(".a-item").removeClass("vip-selected");
				$(".vip_" + level_id).addClass("vip-selected");
				$("#vip_id").val(level_id);
				document.getElementById("level_price").innerHTML = "￥"
						+ level_price;

				document.getElementById("specDetailInfo_vip").innerHTML = level_name;
			}
		</script>

		<script type="text/javascript">
			wx
					.ready(function() {
						var shareData = {
							title : "商业模式攻略·音频版（第一季完结）",
							desc : "《商业模式攻略·音频版（第一季完结）》",
							link : "http://xianke88.cn/app/./index.php?i=10&c=entry&id=86&sectionid=0&do=lesson&m=fy_lessonv2",
							imgUrl : "${pageContext.request.contextPath }/attachment/images/10/2019/01/z6R0d0Z5u001DzN1Xid8XzX0d5d5CO.png",
							trigger : function(res) {
							},
							complete : function(res) {
							},
							success : function(res) {
								$
										.post("./index.php?i=10&c=entry&do=sharecoupon&m=fy_lessonv2");
							},
							cancel : function(res) {
							},
							fail : function(res) {
							}
						};
						wx.onMenuShareTimeline(shareData);
						wx.onMenuShareAppMessage(shareData);
						wx.onMenuShareQQ(shareData);
						wx.onMenuShareWeibo(shareData);
						wx.onMenuShareQZone(shareData);
					});
		</script>

		<footer></footer>

		<!-- 底部导航 -->
		<div id="footer-nav" class="footer-nav hidden">
			<a href="index.php-i=10&c=entry&t=1&do=index&m=fy_lessonv2.html"
				class="weui-tabbar__item "> <img
				src="${pageContext.request.contextPath }/attachment/images/10/2019/04/o6QGTwRgr44zM64AW63abA4wC6MRw7.png"
				class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">首页</p>
			</a> <a href="index.php-i=10&c=entry&do=search&m=fy_lessonv2.html"
				class="weui-tabbar__item "> <img
				src="${pageContext.request.contextPath }/attachment/images/10/2019/04/dTMsHQ40Pgk56pPBFb0F4TP55BQmC5.png"
				class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">全部课程</p>
			</a> <a
				href="index.php-i=10&c=auth&a=login&forward=aT0xMCZjPWVudHJ5JmRvPXZpcCZtPWZ5X2xlc3NvbnYy&wxref=mp.weixin.qq.com.html"
				class="weui-tabbar__item "> <img
				src="${pageContext.request.contextPath }/attachment/images/10/2019/02/O333jgDdLhkolQwblLDD5Ibp9dgik9.png"
				class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">VIP</p>
			</a> <a
				href="index.php-i=10&c=auth&a=login&forward=aT0xMCZjPWVudHJ5JmRvPW15bGVzc29uJm09ZnlfbGVzc29udjI=&wxref=mp.weixin.qq.com.html"
				class="weui-tabbar__item "> <img
				src="${pageContext.request.contextPath }/attachment/images/10/2019/04/TpV44OvJa244122Wp41800m5Im188e.png"
				class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">我的课程</p>
			</a> <a
				href="index.php-i=10&c=auth&a=login&forward=aT0xMCZjPWVudHJ5JmRvPXNlbGYmbT1meV9sZXNzb252Mg==&wxref=mp.weixin.qq.com.html"
				class="weui-tabbar__item "> <img
				src="${pageContext.request.contextPath }/attachment/images/10/2019/04/xQEED07OKwwqowKx1xKE49ZWsk4qO9.png"
				class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">个人中心</p>
			</a>
		</div>
		<!-- /底部导航 -->
	</div>


	<script type="text/javascript">
		var uniacid = "10";
		var lastPage = localStorage.getItem('lastPage_' + uniacid);
		$("#lesson-back").click(function() {
			if (lastPage) {
				window.location.href = lastPage;
			} else {
				window.history.go(-1);
			}
		})

		window.localStorage.setItem('lesson_back_' + uniacid, 1);

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

	<script>
		;
	</script>
	<script type="text/javascript"
		src="index.php-i=10&c=utility&a=visit&do=showjs&m=fy_lessonv2.html"></script>
</body>
</html>