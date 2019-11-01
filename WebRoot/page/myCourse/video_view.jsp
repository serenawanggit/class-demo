<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/page/common/common.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
<title>全部分类</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/weui-v=3.2.0.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/font-awesome.min-v=3.2.0.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/css/index-v=3.2.0.css" />
<link
	href="${pageContext.request.contextPath }/assets/css/alert-v=3.2.0.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/assets/css/qunService-v=3.2.0.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/assets/css/lesson-v=3.2.0.css"
	rel="stylesheet">

<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/jquery.min-v=3.2.0.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/swiper.3.4.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/jquery.qrcode.min-v=3.2.0.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/alert-v=3.2.0.js"></script>
<script src="https://res.wx.qq.com/open/js/jweixin-1.3.2.js"></script>
<style type="text/css">
.tabbar_wrap .weui_tabbar_item .weui_tabbar_label {color: #555555;} /* 底部导航栏字体未选中颜色 */
.tabbar_wrap .weui_tabbar_item.weui_bar_item_on .weui_tabbar_label {color: #ff9000;} /* 底部导航栏字体选中颜色 */
.bottom {height: 70px;text-align: center;}
.bottom .col {float: left;width: 25%;}
.course-img {float: left;width: 60px;height: 60px;border-radius: 100%;}
.layadmin-caller {padding-top: 15px;}
.layadmin-caller .caller-contar .caller-item {padding: 6px 0;overflow: hidden;border-bottom: 1px solid #e0e0e0;}
.layadmin-caller .caller-contar .caller-item .caller-main p:first-child{padding-top: 8px;}
.header-2 .top_ico_back {position: absolute;top: 0;left: 12px;width: 20px;height: 20px;}
.header-2 .top_ico_home {position: absolute;top: 0;right: 18px;width: 20px;height: 20px;}
.content {padding: 25px;}
.content div {height: 40px;line-height: 40px;}
.content .question {font-weight: bold;font-size: 16px;}
.layui-form div {padding-left: 10px;}
.content .layui-btn-fluid {margin-top: 15px;}
.button_div {margin: 10px 10px;}
#page-container {background-color: #fff;height: 100%;}
#result {padding: 25px;}
#result div {margin: 5px;width: 30px;height: 35px;float: left;line-height: 30px;text-align: center;font-weight: blod;font-size: 16px;}
</style>
</head>
<body>
	<div class="page-container" id="page-container">

		<div class="header-2 cbox">
			<a href="javascript:history.back(-1);" class="top_ico_back"><i class="layui-icon layui-icon-left" style="font-size:25px;"></i></a>
			<div class="flex title">${courseData[0].name }</div>
			<a href="${pageContext.request.contextPath }/page/home.jsp" class="top_ico_home"><i class="layui-icon layui-icon-home" style="font-size:25px;"></i></a>
		</div>
		<div class="content-inner" style="min-height:100%;" onbeforeunload="goodbye()">
			<div id="video-div">
				<video id="video" preload="auto" width="100%" height="auto" controls="controls" autobuffer="autobuffer" 
					x5-playsinline="" playsinline="" webkit-playsinline=""> 
					<source id="videoSource" src="${pageContext.request.contextPath }/uploadFiles/${courselistData[0].video }">
				</video>
			</div>

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
							<p class="title-bar__title" onclick="location.href=''">${courseData[0].name }</p>
							<p class="lesson-bar clear">
								<span class="grid_info mar15-left fl ios-system"> 
									<span class="price index_price_lesson font-bold flex_g0 ios-system">¥${courseData[0].price }</span>
									<span class="mar5 ios-system">|</span> <span>26节</span>
								</span> 
							</p>
							<div class="flex1" style="margin: 5px 15px 0 15px;">
								<div class="grid_info flex0">金剑峰</div>
								<span class="teacher flex_g0"> </span>
							</div>
						</li>
						<li class="details">
							<div class="index_title bor flex1">
								<div class="img flex0">
									<img class="flex_g0"
										src="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/lesson_introduce.png"
										style="width: 20px;">
								</div>
								<div class="flex_all">课程介绍</div>
							</div>
							<div class="lesson-content chapter-content">${courseData[0].detail }</div>
						</li>
						<li class="details teacher_introduce">
							<div class="index_title bor flex1">
								<div class="img flex0">
									<img class="flex_g0"
										src="http://xianke88.cn/addons/fy_lessonv2/template/mobile/default/images/lesson_teacher_introduce.png"
										style="width: 20px;">
								</div>
								<div class="flex_all">讲师介绍</div>
							</div>
							<div class="chapter-content">
								<p class="teacher-intro">
									<span class="chapter-intro-user"
										onclick="location.href='./index.php?i=10&amp;c=entry&amp;teacherid=97&amp;do=teacher&amp;m=fy_lessonv2'">
										<img
										src="http://xianke88.cn/attachment/images/10/2019/02/gszlPluAVZa11Bja0ujB4S9H6322H8.jpg"
										style="display:inline-block;" width="50" height="50"> <strong>金剑峰</strong>
										<span>总共1个课程</span> <i class="fa fa-exclamation-circle">
											查看全部课程</i>
									</span>
								</p>
								<p style="white-space: normal;">
									<span style="font-family: arial, helvetica, sans-serif;"><strong><span
											style="font-size: 20px;">讲师介绍：</span></strong></span>
								</p>
								<p style="white-space: normal;">
									<span style="color: rgb(51, 51, 51); font-size: 14px; font-family: arial, helvetica, sans-serif;">专业的企业教育培训专家和卓越的管理实战专家；</span>
								</p>
								<p style="white-space: normal;">
									<span style="color: rgb(51, 51, 51); font-size: 14px; font-family: arial, helvetica, sans-serif;">世界500强(中粮集团)企业十多年工作经验,中粮集团专业培训师；&nbsp;</span>
								</p>
								<p style="white-space: normal;">
									<span style="color: rgb(51, 51, 51); font-size: 14px; font-family: arial, helvetica, sans-serif;">多家管理咨询公司培训师，中国总裁网、制造业管理在线专栏专家；&nbsp;</span>
								</p>
								<p style="white-space: normal;">
									<span style="color: rgb(51, 51, 51); font-size: 14px; font-family: arial, helvetica, sans-serif;">清华、北大、浙大、复旦等高校EMBA客座教授；&nbsp;</span>
								</p>
								<p style="white-space: normal;">
									<span style="color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 14px;">金老师最擅长的领域是为进行系统的经理人训练、人力资源体系建设和系统的销售训练，是国内能将系统销售、人力资源管理和经理人训练融汇贯通运用的极少数专家之一。咨询与训练条理清晰，结构严谨，并结合企业实际的产吕与服务进行训练，引导客户拿出解决问题的实际方案，且融合了当今世界500强企业的成功操作智慧，企业界评论金老师的训练“深入到位、实战管用”，取得了显著成效。</span>
								</p>
								<p style="white-space: normal;">
									<span style="font-size: 20px; font-family: arial, helvetica, sans-serif;"><strong>
										<span style="font-size: 20px; color: rgb(51, 51, 51); font-family: " microsoft="">主讲课程:</span>
									</strong></span>
								</p>
								<p style="white-space: normal;">
									<span style="color: rgb(51, 51, 51); font-size: 14px; font-family: arial, helvetica, sans-serif;">卓越360度领导力</span>
								</p>
								<p style="white-space: normal;">
									<span style="color: rgb(51, 51, 51); font-size: 14px; font-family: arial, helvetica, sans-serif;">彼得.德鲁克经理人12项技能</span>
								</p>
								<p style="white-space: normal;">
									<span style="color: rgb(51, 51, 51); font-size: 14px; font-family: arial, helvetica, sans-serif;">非人力资源的人力资源管理</span>
								</p>
								<p style="white-space: normal;">
									<span style="color: rgb(51, 51, 51); font-size: 14px; font-family: arial, helvetica, sans-serif;">市场开发与顾问式销售技巧</span>
								</p>
								<p style="white-space: normal;">
									<span style="color: rgb(51, 51, 51); font-size: 14px; font-family: arial, helvetica, sans-serif;">销售目标与绩效管理</span>
								</p>
								<p style="white-space: normal;">
									<span style="color: rgb(51, 51, 51); font-size: 14px; font-family: arial, helvetica, sans-serif;">经销商开发与管理</span>
								</p>
								<p style="white-space: normal;">
									<span
										style="color: rgb(51, 51, 51); font-size: 14px; font-family: arial, helvetica, sans-serif;">重要客户的销售管理</span>
								</p>
								<p style="white-space: normal;">
									<span
										style="color: rgb(51, 51, 51); font-size: 14px; font-family: arial, helvetica, sans-serif;">策略性薪酬管理</span>
								</p>
								<p style="white-space: normal;">
									<span
										style="color: rgb(51, 51, 51); font-size: 14px; font-family: arial, helvetica, sans-serif;">目标与绩效管理</span>
								</p>
								<p style="white-space: normal;">
									<span
										style="color: rgb(51, 51, 51); font-size: 14px; font-family: arial, helvetica, sans-serif;">精准筛选与精细化招聘</span>
								</p>
								<p style="white-space: normal;">
									<span
										style="color: rgb(51, 51, 51); font-size: 14px; font-family: arial, helvetica, sans-serif;">教练技术与员工辅导</span>
								</p>
								<p style="white-space: normal;">
									<span
										style="color: rgb(51, 51, 51); font-size: 14px; font-family: arial, helvetica, sans-serif;">企业TTT培训师训练</span>
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
							<h2 class="chapter-title">
								<i class="section-title-icon"></i>${courseData[0].name }[26课时]
							</h2>
							<ul class="course-sections">
								<c:forEach items="${courselistData }" var="item" varStatus="i">
									<li><a href="javascript:readSection(${item.id});">
										<div><i class="course-type"> 视频 </i> ${i.index+1 }-${item.name }</div>
										<input type="hidden" id="courselistVideo-${item.id }" value="${item.video }">
									</a></li>
								</c:forEach>
							</ul>
						</li>
					</ul>
				</div>
				<!-- 章节目录 E -->

				<!-- 评价列表 S -->
				<div class="js-tab">
					<div class="evaluate-wrap">
						<div class="evaluate-general" id="evaluate_general">
							<div class="score-general">0%</div>
							<div class="score-item"><p class="score-title">综合评分</p><p class="score-num"></p></div>
							<div class="score-item"><p class="score-title">内容实用</p><p class="score-num"></p></div>
							<div class="score-item"><p class="score-title">通俗易懂</p><p class="score-num"></p></div>
						</div>
						<div class="evaluate-list" id="evaluate_list"></div>
					</div>

					<div id="loading_div" class="loading_div">
						<div class="loading_bd">没有了，已经到底了</div>
					</div>
				</div>
				<!-- 评价列表 E -->
			</div>
		</div>

		<script type="text/javascript">
			// “章节”、“课程详情”tab切换
			$(".course-tab").on("click", 'li', function() {
				var $currItem = $(this),
				index = $currItem.index();
			
				$currItem.addClass('curr').siblings().removeClass('curr');
				$(".js-tab").hide().eq(index).show();
			
			});
			
			//展开和关闭章节
			function handleSection(obj){
				$(obj).find('span').toggleClass("open");
				$(obj).next('ul').toggleClass("hide");
			}
			
			var video = document.getElementById("video");
			function readSection(sectionid){
				var videoUrl = $("#courselistVideo-"+sectionid).val();
				var str = '<video id="video" preload="auto" width="100%" height="auto" controls="controls" autobuffer="autobuffer" x5-playsinline="" playsinline="" webkit-playsinline="">';
				str += '<source id="videoSource" src="${pageContext.request.contextPath }/uploadFiles/'+videoUrl+'">';
				str += '</video>';
				$("#video-div").html(str);
				video = document.getElementById("video");
				video.addEventListener("ended", function() {
					$("#video-div").hide();
					layer.open({
						type : 2,
						area : [ '300px', '400px' ],
						content : '${pageContext.request.contextPath }/page/myCourse/problem_do.jsp', //这里content是一个普通的String
						end : function() {
							$("#video-div").show();
							video.pause();
						}
					});
				});
			}
			video.addEventListener("ended", function() {
				$("#video-div").hide();
				layer.open({
					type : 2,
					area : [ '300px', '400px' ],
					content : '${pageContext.request.contextPath }/page/myCourse/problem_do.jsp', //这里content是一个普通的String
					end : function() {
						$("#video-div").show();
						video.pause();
					}
				});
			});
		</script>
</body>
</html>
