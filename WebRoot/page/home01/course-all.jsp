<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<title>全部分类</title>

</head>
<body>
	<div class="page-container" id="page-container">
		<link href="${pageContext.request.contextPath }/assets/css/search-v=3.2.0.css" rel="stylesheet" />

		<!-- 顶部搜索框 -->
		<div class="fix_grid_96">
			<div class="fix_grid">
				<div class="search_grid">
					<div class="search flex0">
						<i class="icon_search flex_g0"></i>
						<form action=""
							method="get">
							<input type="hidden" name="i" value="10" /> <input type="hidden"
								name="c" value="entry" /> <input type="hidden" name="do"
								value="search" /> <input type="hidden" name="m"
								value="fy_lessonv2" /> <input class="flex-al1" type="text"
								name="keyword" value="" placeholder="搜索您感兴趣的课程">
						</form>
					</div>
				</div>

				<div class="list_menu_grid flex0_1">
					<div class="list_menu flex-al1 flex9" onclick="showsort()">
						<span>综合排序</span><i class="layui-icon layui-icon-down" style="margin-top:5px;margin-left:3px;"></i>
					</div>
					<div class="list_menu flex-al1 flex9" onclick="showcategory()">
						<span>全部分类</span><i class="layui-icon layui-icon-down" style="margin-top:5px;margin-left:3px;"></i>
					</div>
				</div>
			</div>
		</div>
		<!-- /顶部搜索框 -->

		<!-- 筛选条件 -->
		<div class="sort_list_grid hidden">
			<a href="course-all.jsp" class="curr">综合排序</a> 
			<a href="course-all.jsp">免费课程</a>
			<a href="course-all.jsp">价格优先</a>
			<a href="course-all.jsp">人气优先</a>
			<a href="course-all.jsp">好评优先</a>
			<div class="mark" onclick="closesort()"></div>
		</div>
		<!-- /筛选条件 -->
		<!-- 课程分类 -->

		<div class="nav" data-active="cate">
			<div class="nav_panel nav_panel-cate">
				<!-- 顶级分类 -->
				<ul class="nav_menu nav_panel_cate_mt">
					<a href="javascript:;">
						<li class="nav_menu_item nav_menu_item_selected"><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/ico-allcategory.png">推荐分类</li>
					</a>
					<a href="javascript:;">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/az6ReABdddDw0MgggswKR04gmGrn4G.png">战略模式</li>
					</a>
					<a href="javascript:;">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/pATtLtzLRFawRGHW2t6ZDbAbhCBdOL.png">线下课程</li>
					</a>
					<a href="javascript:;">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/l20MSLO0x92Y59Y22lm0AoMA2z2axO.png">创业融资</li>
					</a>
					<a href="javascript:;">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/Vi1UvbWhIB3fHHWHfwI1UyrRtpvBq3.png">生产制造</li>
					</a>
					<a href="javascript:;">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/eI6TENfTTF16N0e6E56I6h065F6eT6.png">营销销售</li>
					</a>
					<a href="javascript:;">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/OMAHPPFHm6VKZVDeutizoek62HzUiN.png">财务税务</li>
					</a>
					<a href="javascript:;">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/B7O7AAm3mbJOAbajLjBfnC33Cf2263.png">人力资源</li>
					</a>
					<a href="javascript:;">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/Zn9r1Z6117huqE4UKKu1r111rKnuMe.png">大咖专区</li>
					</a>
				</ul>

				<!-- 推荐二级分类 -->
				<ul class="nav_menu nav_panel-cate_st" style="display:block;"">
					<a href="course-all.jsp">
						<li class="nav_menu_item nav_menu_item_selected"><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/a20SUUTjbRob8rZKJxh7k75s2frBgJ.png">全部</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/rXyYxyJrcXyXvRL1Rg712y2LrvL326.png">论坛</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/pATtLtzLRFawRGHW2t6ZDbAbhCBdOL.png">线下课程</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/Y1BC7I6pMzV1VXCtT27nSrptj68MQ8.png">教育健康</li>
					</a>
				</ul>
				<!-- 二级分类 -->
				<ul class="nav_menu nav_panel-cate_st">
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/az6ReABdddDw0MgggswKR04gmGrn4G.png">战略模式</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/JaHLKKKHhv2Mt72tD7H320hHktH2Fz.png">江山永续</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/n188dWo221t1II1f18ObfOcwko11Zm.png">阿米巴战略模式</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/suZfn28VLGd4rzD8Vb8Dv88DvAmYL8.png">战略规划与组织管控</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/DKpqZ0pEHz89v8wB48JninHpyQqbI0.png">战略定位</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/qpEQbY7f5yfEZyLvtmgqtKvr8tTsQZ.png">品牌策略</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/S1E8rkwwnka1ziQLRYHTeyzn8qrR2T.png">执行力</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/rXyYxyJrcXyXvRL1Rg712y2LrvL326.png">企业文化</li>
					</a>
				</ul>
				<ul class="nav_menu nav_panel-cate_st">
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/pATtLtzLRFawRGHW2t6ZDbAbhCBdOL.png">线下课程</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/rXyYxyJrcXyXvRL1Rg712y2LrvL326.png">论坛</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/OklIKBkkyEhiKov9iboomTK8eYkv9k.png">国际游学</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/TH8sPY4WStH98ST00xsY4w80d494HW.png">公开课</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/FVc2Sc6US16X6f662VvCgs81262Sv2.png">研修班</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/px6knlmyY1XlvYyMKllnG6NZY6ZYTa.png">国内游学</li>
					</a>
				</ul>
				<ul class="nav_menu nav_panel-cate_st">
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/l20MSLO0x92Y59Y22lm0AoMA2z2axO.png">创业融资</li>
					</a>
				</ul>
				<ul class="nav_menu nav_panel-cate_st">
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/Vi1UvbWhIB3fHHWHfwI1UyrRtpvBq3.png">生产制造</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/g331Id0Z87VlZ36fS31v308sX1i0X1.png">采购供应</li>
					</a>
				</ul>
				<ul class="nav_menu nav_panel-cate_st">
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/e3390694s9D9G3H0D3Qd8909g9G4IS.png">网络营销</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/F2acxVaLnv5jgnxNz5TzhcVnSlH5gn.png">事件营销</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/h3y4141jkO15ub335dXWMjOmKYJDA5.png">病毒式营销</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/eJ2v1GcWGcR77vcvTc13vR2vW1V7f1.png">整合营销</li>
					</a>
				</ul>
				<ul class="nav_menu nav_panel-cate_st">
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/OMAHPPFHm6VKZVDeutizoek62HzUiN.png">财务税务</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/TuDc4N1CL9wuRj4eLb4odrw4cTalaj.png">成本控制</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/MEIR0gvLll30S40I0R8y0QQI38gQ0Y.png">纳税筹划</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/mlE39M239F2f28LFLN9ZZnFj9NRePf.png">信用管理</li>
					</a>
				</ul>
				<ul class="nav_menu nav_panel-cate_st">
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/B7O7AAm3mbJOAbajLjBfnC33Cf2263.png">人力资源</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/joDpbkdhDe2mFVozUmMXfexpDzBZBM.png">招聘面试</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/CPMv48OmkbZ557RrO4S4Rfsk55X1Rb.png">薪酬设计</li>
					</a>
					<a href="course-all.jsp">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/M4io47Jge77Ejf3U7Ux45Jzcei7ffX.png">合同管理</li>
					</a>
				</ul>
				<ul class="nav_menu nav_panel-cate_st">
					<a href="index.php-i=10&c=entry&cat_id=65&pid=65&do=search&m=fy_lessonv2.html">
						<li class="nav_menu_item "><img class="nav_menu_item-icon" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/Zn9r1Z6117huqE4UKKu1r111rKnuMe.png">大咖专区</li>
					</a>
				</ul>
			</div>
		</div>
		<div class="nav_mask"></div>
		<!-- /课程分类 -->

		<!-- 课程列表 -->
		<div class="section">
			<div class="list_grid" id="lesson-list1">
				<a href="javascript:jump(1);" class="normal_grid flex0_1">
					<div class="normal_grid_a flex_g0">
						<div class="img-box flex_g0">
							<div class="img"><img src="${pageContext.request.contextPath}/assets/layuiadmin/style/res/template/portrait.png" style="width:100%;height:100%;"></div>
							<div class="learned">这是数据1</div>
							<i class="ico_common "></i>
						</div>
					</div>
					<div class="flex-al1 flex10">
						<div>
							<div class="grid_title2">这是数据2</div>
							<div class="grid_info flex0">
								<span class="price flex_g0 index_price_lesson ios-system">¥75</span>
<!-- 								//<span class="free flex_g0 index_free_lesson ios-system">免费课程</span> -->
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
			<!-- <div id="loading_div" class="loading_div"
				style="padding:15px 0 30px 0;">
				<a href="javascript:void(0);" id="btn_Page"><i class="fa fa-arrow-circle-down"></i>加载更多</a>
			</div> -->
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

		<!-- <div id="loadingToast">
			<div class="weui-mask_transparent"></div>
			<div class="weui-toast">
				<i class="weui-loading weui-icon_toast"></i>
				<p class="weui-toast__content">加载数据中</p>
			</div>
		</div> -->

		<script type="text/javascript">
			/* 综合排序 */
			$(function() {
				$(".sort_list_grid a").on("click", function() {
					closesort();
				});
			});
			function showsort() {
				$(".sort_list_grid").removeClass("hidden");
				$(".nav").hide();
				$(".nav_mask").hide();
			}
			function closesort() {
				$(".sort_list_grid").addClass("hidden");
			}

			/* 课程分类 */
			function showcategory() {
				$(".nav").show();
				$(".nav_mask").show();
				$(".sort_list_grid").addClass("hidden");
			}
			$(".nav_panel_cate_mt").on(
					"click",
					'a',
					function() {
						var $currItem = $(this), index = $currItem.index();

						$(".nav_panel_cate_mt a li").removeClass(
								'nav_menu_item_selected');
						$currItem.addClass('nav_menu_item_selected').siblings()
								.removeClass('nav_menu_item_selected');
						$(".nav_panel-cate_st").hide().eq(index).show();
					});
			$(".nav_mask").on("click", function() {
				$(".nav").hide();
				$(".nav_mask").hide();
			});
		</script>

		<!-- <script type="text/javascript">
			var uniacid = "10";
			//首页检索跳转过来的清掉缓存
			var clear = "0";
			if (clear == 1) {
				localStorage.removeItem('lesson_back_' + uniacid);
			}

			var localStorage = window.localStorage;
			var ajaxUrl = "";
			var attachUrl = "http://xianke88.cn/test/";
			var lessonUrl = "./index.php?i=10&c=entry&do=lesson&m=fy_lessonv2";
			var loadingToast = document.getElementById("loadingToast");
			var get_status = true;
			$(function() {
				var nowPage = 1; //设置当前页数，全局变量
				function getData(page) {
					if (get_status) {
						nowPage++;
						$.get(ajaxUrl, { page : page }, function(data) {
							loadingToast.style.display = 'none';
							var jsonObj = JSON.parse(data);
							if (jsonObj.length > 0) {
								insertDiv(jsonObj);
							} else {
								get_status = false;
								document.getElementById("loading_div").innerHTML = '<div class="loading_bd">没有了，已经到底了</div>';
							}
						});
					}
				}
				//初始化加载数据
				var lesson_back = localStorage.getItem('lesson_back_' + uniacid);
				var lesson_list = localStorage.getItem('lesson_list_' + uniacid);

				if (lesson_back == 1 && lesson_list) {
					$("#lesson-list").append(lesson_list);
					$(".section").scrollTop(localStorage.getItem('section_top_' + uniacid));
					nowPage = localStorage.getItem('nowPage_' + uniacid);
					loadingToast.style.display = 'none';
					localStorage.removeItem('lesson_back_' + uniacid);
				} else {
					getData(1);
				}

				//生成数据html,append到div中  
				function insertDiv(result) {
					var mainDiv = $("#lesson-list");
					var already_study = "人已报名";
					var lesson_vip_status = 2;
					var chtml = '';
					for (var j = 0; j < result.length; j++) {
						chtml += '<a href="' + lessonUrl + '&id=' + result[j].id + '" class="normal_grid flex0_1">';
						chtml += '	<div class="normal_grid_a flex_g0">';
						chtml += '		<div class="img-box flex_g0">';
						chtml += '			<div class="img"><img src="' + attachUrl + result[j].images + '"></div>';
						chtml += '			<div class="learned">'
								+ result[j].buyTotal + already_study + '</div>';
						chtml += '			<i class="ico_common '+ result[j].ico_name +'"></i>';
						chtml += '		</div>';
						chtml += '	</div>';
						chtml += '	<div class="flex-al1 flex10">';
						chtml += '		<div>';
						chtml += '			<div class="grid_title2">'
								+ result[j].bookname + '</div>';
						chtml += '			<div class="grid_info flex0">';
						if (lesson_vip_status != 1) {
							if (result[j].price > 0) {
								chtml += '		<span class="price flex_g0 index_price_lesson ios-system">¥'
										+ result[j].price + '</span>';
							} else {
								chtml += '		<span class="free flex_g0 index_free_lesson ios-system">免费课程</span>';
							}
							chtml += '		<span class="mar5 ios-system">|</span>';
						}
						if (result[j].soncount > 0) {
							chtml += '		<span class="index_section_number">'
									+ result[j].soncount + '节</span>';
						}
						chtml += '			</div>';
						chtml += '		</div>';
						chtml += '		<div class="grid_bottom2 flex1">';
						chtml += '	<div class="text">';
						if (result[j].section_status == 0) {
							chtml += '已完结';
						}
						chtml += '	</div>';
						if (result[j].score > 0) {
							chtml += '	<span class="eva index_lesson_evaluation">'
									+ result[j].score_rate + '%好评</span>';
						}
						chtml += '		</div>';
						chtml += '	</div>';
						chtml += '</a>';
					}
					mainDiv.append(chtml);

					//存储当前课程列表信息
					if ($("#lesson-list").html()) {
						localStorage.setItem('lesson_list_' + uniacid, $("#lesson-list").html());
						localStorage.setItem('nowPage_' + uniacid, nowPage);
					}
				}

				//==============核心代码=============
				var msg_list_loading = false;
				$('.section').on('scroll', function() {
					if (!msg_list_loading) {
						load_more_msg();
					}
					//记录滚动条位置
					localStorage.setItem('section_top_' + uniacid, $(".section").scrollTop());
				});
				function load_more_msg() {
					var msg_list = $('.section');
					if (msg_list.height() + msg_list[0].scrollTop >= msg_list[0].scrollHeight) {
						msg_list_loading = true;
						$("#btn_Page").hide();
						getData(nowPage);
						msg_list_loading = false;
					}
					$("#btn_Page").show();
				}

				//继续加载按钮事件
				$("#btn_Page").click(function() {
					loadingToast.style.display = 'block';
					getData(nowPage);
				});
			});

			var nav_panel_height = parseInt(document.body.clientHeight * 0.7);
			var head = document.head || document.getElementsByTagName('head')[0];
			var style = document.createElement('style');
			style.innerHTML = '.nav_panel-cate{height:' + nav_panel_height + 'px !important;}';
			head.appendChild(style);
		</script> -->

		<!-- 底部导航 -->
		<div id="footer-nav" class="footer-nav">
			<a href="${pageContext.request.contextPath }/page/home-phone.jsp" class="weui-tabbar__item "> 
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

	<script>
		;
	</script>
	<script type="text/javascript"
		src="index.php-i=10&c=utility&a=visit&do=showjs&m=fy_lessonv2.html"></script>
</body>
</html>
