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
		<link href="${pageContext.request.contextPath }/assets/css/qunService-v=3.2.0.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath }/assets/css/lesson-v=3.2.0.css" rel="stylesheet" />

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
		<input type="hidden" value="${courseData[0].id }" id="courseId">
		<div class="header-2 cbox">
			<a href="javascript:history.back(-1);" class="top_ico_back"><i class="layui-icon layui-icon-left" style="font-size:25px;"></i></a>
			<div class="flex title">${courseData[0].name }</div>
			<a href="${pageContext.request.contextPath }/page/home.jsp" class="top_ico_home"><i class="layui-icon layui-icon-home" style="font-size:25px;"></i></a>
		</div>

		<div class="content-inner" style="min-height:100%;" onbeforeunload="goodbye()">
			<!-- 视频区域 S -->
			<input type="hidden" id="realPlayTime" value="0" />
			<div class="video-wrap">
				<img src="${pageContext.request.contextPath }/uploadFiles/${courseData[0].image }"
					alt="${courseData[0].name }" width="100%">
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
							<p class="title-bar__title" onclick="location.href=''">${courseData[0].name }</p>
							<p class="lesson-bar clear">
								<span class="grid_info mar15-left fl ios-system"> <span
									class="price index_price_lesson font-bold flex_g0 ios-system">¥${courseData[0].price }</span>
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
								<div class="img flex0"><i class="layui-icon layui-icon-read" style="font-size:20px;margin-top:3px;"></i></div>
								<div class="flex_all">课程介绍</div>
							</div>
							<div class="lesson-content chapter-content">${courseData[0].detail }</div>
						</li>
						<li class="details teacher_introduce">
							<div class="index_title bor flex1">
								<div class="img flex0"><i class="layui-icon layui-icon-read" style="font-size:20px;margin-top:3px;"></i></div>
								<div class="flex_all">讲师介绍</div>
							</div>
							<div class="chapter-content">
								<p>
									<img src="${pageContext.request.contextPath }/image/attachment/images/10/2018/09/yAJRjUvO0ZoAj0252d8V222e5v55Qv.jpeg"
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

		<!-- <div class="btn_mark">
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
		</div> -->
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
				<img src="${pageContext.request.contextPath }/attachment/images/10/2019/02/cgb75c07H63bDJdKDZh5M6dhMtsTtA.jpg" />
				<p>二维码咨询方式</p>
			</div>
		</div>

		<div id="bottom-contact" class="max-width-640 hide">
			<div class="contact-wrap">
				<div class="contact-wrap-title">咨询交流</div>
				<div class="border-top layer-list_item">
					<a href="javascript:;" id="btn-qrcode">
						<i class="layui-icon layui-icon-login-wechat " 
							style="font-size: 50px; color: #00CA0B;position: absolute;top:0px;left:15px;"></i>  
						<p class="layer-list_item-name">微信咨询</p>
						<p class="layer-list_item-info">点击查看二维码</p>
						<div class="layer-list_item-go"><i class="icon-font i-v-right">&gt;</i></div>
					</a>
				</div>
				<div class="border-top layer-list_item">
					<a id="qq-consult" href="http://wpa.qq.com/msgrd?v=3&uin=1416640422&site=qq&menu=yes">
						<i class="layui-icon layui-icon-login-qq " 
							style="font-size: 50px; color: #1680D9;position: absolute;top:0px;left:15px;"></i>
						<p class="layer-list_item-name">QQ咨询</p>
						<p class="layer-list_item-info">QQ:1416640422</p>
						<div class="layer-list_item-go">
							<i class="icon-font i-v-right">&gt;</i>
						</div>
					</a>
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
					<img id="spec_image" src="${pageContext.request.contextPath }/uploadFiles/${courseData[0].image }" onerror="imgErr(this)">
				</div>
				<a class="rt-close-btn-wrap spec-menu-close" onclick="closeSpec();">
					<p class="flick-menu-close"></p>
				</a>
				<div class="spec-price" id="specJdPri" style="display: block">
					<span class="yang-pic spec-yang-pic"></span> <span id="spec_price">
						￥${courseData[0].price } </span>
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
								<a class="a-item" href="javascript:updateColorSizeSpec('1271','59.00','365','');">有效期365天</a>
								<a class="a-item spec_1271" href="javascript:updateColorSizeSpec('1271','109.00','-1','');">长期有效</a>
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
			<li class="btn-qq "><a href="javascript:;" id="btn-qq"><i class="layui-icon layui-icon-dialogue"></i>咨询</a></li>
			<li class="btn-collect" id="btn-collect"><a href="javascript:;">
				<c:if test="${loveData!=null && loveData.size()>0 }">
					<i class="layui-icon layui-icon-star-fill"></i>
					<input type="hidden" id="is_love" value="1">
				</c:if>
				<c:if test="${loveData==null || loveData.size()<=0 }">
					<i class="layui-icon layui-icon-star"></i>
					<input type="hidden" id="is_love" value="0">
				</c:if>
				收藏
			</a></li>

			<!-- 显示开通VIP和立即购买 -->
			<li class="btn-buy two-btn-buy no-ios" id="buy-vip"><a href="javascript:;" class="buy buy_now orange"><p class="num">开通VIP</p></a></li>
			<li class="btn-buy two-btn-buy is-ios" style="display:none;"><a href="javascript:;" class="buy buy_now orange"><p class="num">开通VIP</p></a></li>
			<li class="btn-buy two-btn-buy no-ios" id="buy-now"><a href="javascript:;" class="buy buy_now red"><p class="num">立即报名</p></a></li>
			<li class="btn-buy two-btn-buy is-ios" style="display:none;"><a href="javascript:;" class="buy buy_now red"><p class="num">立即报名</p></a></li>
		</ul>

		<script type="text/javascript">
			var ajaxurl = "./index.php?i=10&c=entry&id=86&do=getevaluate&m=fy_lessonv2";
			var get_status = true; //允许获取状态

			$(function() {
				var nowPage = 1;
				function getData(page) {
					if (get_status) {
						nowPage++;
						$.get(ajaxurl,{page : page}, function(data) {
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
				$(window).scroll(function() {
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
			document.addEventListener('WeixinJSBridgeReady',function onBridgeReady() {
				var miniprogram_environment = false;
				wx.miniProgram.getEnv(function(res) {
					if (res.miniprogram) {
						miniprogram_environment = true;
					}
				});
				if ((window.__wxjs_environment === 'miniprogram' || miniprogram_environment)) {
					wx.miniProgram.getEnv(function(res) {
						wx.miniProgram.postMessage({
							data : {
								'title' : "商业模式攻略·音频版（第一季完结）",
								'images' : "${pageContext.request.contextPath }/attachment/images/10/2019/01/z6R0d0Z5u001DzN1Xid8XzX0d5d5CO.png",
							}
						});
					});
					$("#qq-consult").attr("href", "javascript:;");
					$("#qqgroup-consult").attr("href", "javascript:;");
					$("#all-consult").attr("href", "javascript:;");
					$(".follow_qrcode").hide();
				}
			});

			function readSection(sectionid) {
				layer.msg("立即报名即可观看。");
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
		/* 	function handleSection(obj) {
				$(obj).find('span').toggleClass("open");
				$(obj).next('ul').toggleClass("hide");
			} */

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
				});
			});

			//课程规格
			$("#buy-now").click(function() {
				$(".flick-menu-mask").removeClass('hide');
				$(".spec-menu-show").removeClass('hide');
			});
			//购买课程下一步
			$("#buy_now").click(function() {
				var spec_id = $("#spec_id").val();
				if (!spec_id) {
					alert("请选择课程规格");
					return false;
				}
				location.href = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxc19662653e7edcd4&redirect_uri=http%3a%2f%2fwangfang.51vip.biz%2fclassDemo%2fpay.jsp&response_type=code&scope=snsapi_base#wechat_redirect";
// 				alert("业务繁忙，稍后再试！");
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
			$("#buy_vip").click(function() {
				var vip_id = $("#vip_id").val();
				if (!vip_id) {
					alert("请选择要购买的VIP等级");
					return false;
				}
				alert("业务繁忙，稍后再试！");
			});

			//收藏按钮
			$("#btn-collect").click(function() {
				if($("#is_love").val()=="0"){
					$.ajax({
						type : 'post',
						url : "${pageContext.request.contextPath }/Love/addLove",
						data : { costomer_id : 1, course_id:$("#courseId").val() },
						dataType : 'json',
						success : function(data) {
							if (data.succes == 'true') {
								layer.msg("已收藏");
								$("#btn-collect a i").removeClass("layui-icon-star").addClass("layui-icon-star-fill");
								$("#is_love").val("1");
							}
						}
					});
				}else{
					$.ajax({
						type : 'post',
						url : "${pageContext.request.contextPath }/Love/delLoveByParam",
						data : { costomer_id: 1, course_id:$("#courseId").val() },
						dataType : 'json',
						success : function(data) {
							if (data.succes == 'true') {
								layer.msg("取消收藏");
								$("#btn-collect a i").removeClass("layui-icon-star-fill").addClass("layui-icon-star");
								$("#is_love").val("0");
							}
						}
					});
				}
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