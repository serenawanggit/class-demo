<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/page/common/common.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<title>在线教育</title>
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
  <script type="text/javascript">
  	function jumpPage(pageName){
  		window.parent.frames.location.href = pageName;
  	}
  </script>
</head>
<body>
	<div class="page-container" id="page-container">
		<link href="${pageContext.request.contextPath }/assets/css/swiper.fylesson-v=3.2.0.css" rel="stylesheet" />
		<script src="${pageContext.request.contextPath }/assets/js/jquery.lazyload-v=3.2.0.js"></script>

		<div>
			<div class="index-search">
				<form action=""
					method="GET">
					<input type="hidden" name="i" value="10" /> <input type="hidden"
						name="c" value="entry" /> <input type="hidden" name="do"
						value="search" /> <input type="hidden" name="clear" value="1" /> <input
						type="hidden" name="m" value="fy_lessonv2" />
					<div class="index-header-search">
						<div class="u-search">
							<i class="fa fa-search"></i> <input type="search" name="keyword"
								class="search_input z-abled" autocorrect="off"
								placeholder="搜索您感兴趣的课程">
						</div>
					</div>
				</form>
			</div>
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<!--图片一-->
					<c:forEach items="${lbList }" var="item">
						<div class="swiper-slide">
							<a href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')">
								<img class="swiper-lazy" src="${pageContext.request.contextPath }/uploadFiles/${item.image }">
							</a>
						</div>
					</c:forEach>
					<%-- <div class="swiper-slide">
						<a href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')">
							<img class="swiper-lazy"
							src="${pageContext.request.contextPath }/image/attachment/images/10/2019/06/G821fBg8sbddwGH8B1HGbd2DHZ26D1.jpg">
						</a>
					</div>
					<div class="swiper-slide">
						<a href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')">
							<img class="swiper-lazy"
							src="${pageContext.request.contextPath }/image/attachment/images/10/2019/06/XeTNP63mPK63Q6M2NJZT4p5KtxNeK6.png">
						</a>
					</div>
					<div class="swiper-slide">
						<a href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')">
							<img class="swiper-lazy"
							src="${pageContext.request.contextPath }/image/attachment/images/10/2019/06/S3a4H55RXKn5mN5NOZU333QhuKz6ar.jpg">
						</a>
					</div> --%>
					<!--图片一end-->
				</div>
				<div class="swiper-pagination"></div>
			</div>
			<div class="grid_wrap bor_no">
				<c:forEach items="${typeList }" var="item" end="8">
					<a class="grid_item" href="${pageContext.request.contextPath }/page/course-all.jsp">
						<div class="grid_hd">
							<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/yxzw4D00eGI7005z0dsw46sz1O61S6.png" alt="${item.name }" />
						</div>
						<div class="grid_bd"><p>${item.name }</p></div>
					</a>
				</c:forEach>
				<a class="grid_item" href="course-all.jsp">
					<div class="grid_hd">
						<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/a20SUUTjbRob8rZKJxh7k75s2frBgJ.png" alt="全部分类">
					</div>
					<div class="grid_bd"><p>全部分类</p></div>
				</a>
			</div>
			
			<div class="index_unit">
				<div class="index_title flex1">
					<div class="img flex0">
						<img class="flex_g0"
							src="${pageContext.request.contextPath }/addons/fy_lessonv2/template/mobile/default/images/index_new_lesson.png"
							style="width: 19px;" />
					</div>
					<div class="flex_all index_newlesson_title">最新更新</div>
				</div>
				<a
					href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')"
					class="new_lesson flex0_1">
					<div class="new_lesson_a flex_g0">
						<div class="img-box flex_g0">
							<div class="img">
								<img class="lazy"
									data-original="${pageContext.request.contextPath }/image/attachment/images/10/2019/08/dRcIi2rWLSc111aAaleRPhEhuIEe1a.png"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" />
							</div>
							<div class="learned">77人已报名</div>
						</div>
					</div>

					<div class="flex_all flex10">
						<div>
							<div class="new_lesson_title">人生幸福35堂课</div>
							<div class="new_lesson_info">子女教育-5.与孩子平等沟通</div>
						</div>
						<div class="new_lesson_bottom flex1">
							<span class="time">前天更新</span> <span class="price ios-system">¥
								99</span>
						</div>
					</div>
				</a> <a
					href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')"
					class="new_lesson flex0_1">
					<div class="new_lesson_a flex_g0">
						<div class="img-box flex_g0">
							<div class="img">
								<img class="lazy"
									data-original="http://xianke88.cn/attachment/images/10/2019/06/IkrLGiKtgTGrLRlm7MG5qgkrqmKWKN.jpg"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" />
							</div>
							<div class="learned">804人已报名</div>
							<i class="ico_common ico-hot"></i>
						</div>
					</div>

					<div class="flex_all flex10">
						<div>
							<div class="new_lesson_title">营销总监108招，招招守正出奇</div>
							<div class="new_lesson_info">63-实战：“是不是品牌”与“像不像品牌”</div>
						</div>
						<div class="new_lesson_bottom flex1">
							<span class="time">前天更新</span> <span class="price ios-system">¥
								365</span>
						</div>
					</div>
				</a> <a
					href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')"
					class="new_lesson flex0_1">
					<div class="new_lesson_a flex_g0">
						<div class="img-box flex_g0">
							<div class="img">
								<img class="lazy"
									data-original="http://xianke88.cn/attachment/images/10/2019/07/OxKhdy6131kFY1f5583QYQFL8HPY5D.jpg"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" />
							</div>
							<div class="learned">613人已报名</div>
						</div>
					</div>

					<div class="flex_all flex10">
						<div>
							<div class="new_lesson_title">江山永续</div>
							<div class="new_lesson_info">12-似是而非的三国英雄们</div>
						</div>
						<div class="new_lesson_bottom flex1">
							<span class="time">10-10 08:50更新</span> <span
								class="price ios-system">¥ 199</span>
						</div>
					</div>
				</a>
			</div>
			<div class="index_unit" style="max-height:260px;">
				<div class="index_title flex1">
					<div class="img flex0">
						<img class="flex_g0"
							src="${pageContext.request.contextPath }/addons/fy_lessonv2/template/mobile/default/images/index_teacher_list.png"
							style="width: 19px;">
					</div>
					<div class="flex_all index_teacher_title">名师风采</div>
					<a href="index.php-i=10&c=entry&do=teacherlist&m=fy_lessonv2.html"
						class="more icon_right">查看全部</a>
				</div>

				<div style="overflow:hidden;">
					<div class="teacher_swiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<a href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')">
									<div class="img-box">
										<div class="img">
											<img
												src="${pageContext.request.contextPath }/image/attachment/images/10/2018/09/no6QVzOVzLS6oaXVMd6v96zFQ9on9k.jpeg">
										</div>
										<!-- <div class="job"></div> -->
									</div>
									<div class="name">周永亮</div>
								</a>
							</div>
							<div class="swiper-slide">
								<a
									href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')">
									<div class="img-box">
										<div class="img">
											<img
												src="${pageContext.request.contextPath }/image/attachment/images/10/2019/01/o5QQVxV8YbHg86pF66VctpF9Pzof9P.jpg">
										</div>
										<!-- <div class="job"></div> -->
									</div>
									<div class="name">茅忠群</div>
								</a>
							</div>
							<div class="swiper-slide">
								<a
									href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')">
									<div class="img-box">
										<div class="img">
											<img
												src="${pageContext.request.contextPath }/image/attachment/images/10/2019/03/Q77O727C278Yc2Hcj29cd1S1837991.jpg">
										</div>
										<!-- <div class="job"></div> -->
									</div>
									<div class="name">刘春华</div>
								</a>
							</div>
							<div class="swiper-slide">
								<a
									href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')">
									<div class="img-box">
										<div class="img">
											<img
												src="${pageContext.request.contextPath }/image/attachment/images/10/2019/02/LSyZy8y19X3ey7S6Utts6v8V3YatjU.png">
										</div>
										<!-- <div class="job"></div> -->
									</div>
									<div class="name">孙虹钢</div>
								</a>
							</div>
							<div class="swiper-slide">
								<a
									href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')">
									<div class="img-box">
										<div class="img">
											<img
												src="${pageContext.request.contextPath }/image/attachment/images/10/2019/02/gszlPluAVZa11Bja0ujB4S9H6322H8.jpg">
										</div>
										<!-- <div class="job"></div> -->
									</div>
									<div class="name">金剑峰</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<script type="text/javascript">
				var teacherSwiper = new Swiper('.teacher_swiper', {
					slidesPerView : 3,
					autoplay : 3500,
					autoplayDisableOnInteraction : false,
					spaceBetween : $(".teacher_swiper").width() * 0.08,
				});
			</script>
			<div class="index_unit">
				<div class="index_title flex1">
					<div class="img flex0">
						<img class="flex_g0"
							src="${pageContext.request.contextPath }/addons/fy_lessonv2/template/mobile/default/images/index_default_rec_icon.png"
							style="width: 19px;" />
					</div>
					<div class="flex_all index_recommend_title">视频专区</div>
					<a href="course-all.jsp"
						class="more icon_right index_recommend_more">查看更多</a>
				</div>

				<!-- 单图文 -->
				<div class="small_grid">
					<c:forEach items="${videoList }" var="item">
						<a href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')" class="small_grid_a">
							<div class="img-box">
								<div class="img">
									<img class="lazy" src="${pageContext.request.contextPath }/uploadFiles/${item.image }" />
								</div>
								<div class="learned">384 人已报名</div>
								<i class="ico_common ico-new"></i>
							</div>
							<div class="grid_title flex1">${item.name }</div>
							<div class="grid_info flex0">
								<span class="price flex_g0 index_price_lesson ios-system">¥
									${item.price }</span> <span class="mar5 ios-system">|</span> <span
									class="index_section_number">26节</span>
							</div>
						</a> 
					</c:forEach>
					<%-- <a
						href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')"
						class="small_grid_a">
						<div class="img-box">
							<div class="img">
								<img class="lazy"
									data-original="${pageContext.request.contextPath }/image/attachment/images/10/2019/06/wrbJqbOAaTB5ril5aOliiWJBiRlUba.jpg"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" />
							</div>
							<div class="learned">838 人已报名</div>
							<i class="ico_common ico-new"></i>
						</div>
						<div class="grid_title flex1">钟朋荣财道</div>
						<div class="grid_info flex0">
							<span class="price flex_g0 index_price_lesson ios-system">¥
								129</span> <span class="mar5 ios-system">|</span> <span
								class="index_section_number">27节</span>
						</div>
					</a> <a
						href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')"
						class="small_grid_a">
						<div class="img-box">
							<div class="img">
								<img class="lazy"
									data-original="http://xianke88.cn/attachment/images/10/2019/02/DllcmdUnd1uHwSWWR1zxDc1odc9RZd.jpg"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" />
							</div>
							<div class="learned">223 人已报名</div>
							<i class="ico_common ico-new"></i>
						</div>
						<div class="grid_title flex1">商道国学课</div>
						<div class="grid_info flex0">
							<span class="price flex_g0 index_price_lesson ios-system">¥
								9.9</span> <span class="mar5 ios-system">|</span> <span
								class="index_section_number">1节</span>
						</div>
					</a> <a
						href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')"
						class="small_grid_a">
						<div class="img-box">
							<div class="img">
								<img class="lazy"
									data-original="http://xianke88.cn/attachment/images/10/2019/06/IkrLGiKtgTGrLRlm7MG5qgkrqmKWKN.jpg"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" />
							</div>
							<div class="learned">804 人已报名</div>
							<i class="ico_common ico-hot"></i>
						</div>
						<div class="grid_title flex1">营销总监108招，招招守正出奇</div>
						<div class="grid_info flex0">
							<span class="price flex_g0 index_price_lesson ios-system">¥
								365</span> <span class="mar5 ios-system">|</span> <span
								class="index_section_number">63节</span>
						</div>
					</a> --%>
				</div>

			</div>
			<div class="index_unit">
				<div class="index_title flex1">
					<div class="img flex0">
						<img class="flex_g0"
							src="${pageContext.request.contextPath }/addons/fy_lessonv2/template/mobile/default/images/index_default_rec_icon.png"
							style="width: 19px;" />
					</div>
					<div class="flex_all index_recommend_title">大咖专区</div>
					<a href="course-all.jsp"
						class="more icon_right index_recommend_more">查看更多</a>
				</div>

				<!-- 单图文 -->
				<div class="small_grid">
					<c:forEach items="${dkList }" var="item">
						<a href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')" class="small_grid_a">
							<div class="img-box">
								<div class="img">
									<img class="lazy" src="${pageContext.request.contextPath }/uploadFiles/${item.image }" />
								</div>
								<div class="learned">397 人已报名</div>
							</div>
							<div class="grid_title flex1">${item.name }</div>
							<div class="grid_info flex0">
								<span class="price flex_g0 index_price_lesson ios-system">¥
									${item.price }</span> <span class="mar5 ios-system">|</span> <span
									class="index_section_number">2节</span>
							</div>
						</a>
					</c:forEach>
					<%-- <a href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')" class="small_grid_a">
						<div class="img-box">
							<div class="img">
								<img class="lazy"
									data-original="http://xianke88.cn/attachment/images/10/2019/01/V5aUEcClUqc70S8ze0C71a77zs707F.jpg"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" />
							</div>
							<div class="learned">397 人已报名</div>
						</div>
						<div class="grid_title flex1">传统文化和儒家治企思想</div>
						<div class="grid_info flex0">
							<span class="price flex_g0 index_price_lesson ios-system">¥
								9.9</span> <span class="mar5 ios-system">|</span> <span
								class="index_section_number">2节</span>
						</div>
					</a> <a
						href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')"
						class="small_grid_a">
						<div class="img-box">
							<div class="img">
								<img class="lazy"
									data-original="http://xianke88.cn/attachment/images/10/2019/01/fm1MMMnTi4i1B1GCm1n1pP5ICuCCWz.jpg"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" />
							</div>
							<div class="learned">348 人已报名</div>
						</div>
						<div class="grid_title flex1">《企业“五心”与价值责任》</div>
						<div class="grid_info flex0">
							<span class="price flex_g0 index_price_lesson ios-system">¥
								9.9</span> <span class="mar5 ios-system">|</span> <span
								class="index_section_number">1节</span>
						</div>
					</a> <a
						href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')"
						class="small_grid_a">
						<div class="img-box">
							<div class="img">
								<img class="lazy"
									data-original="http://xianke88.cn/attachment/images/10/2019/01/K8TeK0KFzbkbkFds2fVK020dUUZUbs.jpeg"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" />
							</div>
							<div class="learned">311 人已报名</div>
							<i class="ico_common ico-vip"></i>
						</div>
						<div class="grid_title flex1">《“幸福企业”的实现路径》</div>
						<div class="grid_info flex0">
							<span class="price flex_g0 index_price_lesson ios-system">¥
								9.9</span> <span class="mar5 ios-system">|</span> <span
								class="index_section_number">1节</span>
						</div>
					</a> <a
						href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')"
						class="small_grid_a">
						<div class="img-box">
							<div class="img">
								<img class="lazy"
									data-original="http://xianke88.cn/attachment/images/10/2019/01/ca3m3PRSPGXRxnXrpN3NLp1Z0LrvgN.jpeg"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" />
							</div>
							<div class="learned">347 人已报名</div>
							<i class="ico_common ico-vip"></i>
						</div>
						<div class="grid_title flex1">《中国企业如何实现“走出去”战略》</div>
						<div class="grid_info flex0">
							<span class="price flex_g0 index_price_lesson ios-system">¥
								9.9</span> <span class="mar5 ios-system">|</span> <span
								class="index_section_number">1节</span>
						</div>
					</a> --%>
				</div>

			</div>
			<div class="index_unit">
				<div class="index_title flex1">
					<div class="img flex0">
						<img class="flex_g0"
							src="${pageContext.request.contextPath }/addons/fy_lessonv2/template/mobile/default/images/index_default_rec_icon.png"
							style="width: 19px;" />
					</div>
					<div class="flex_all index_recommend_title">音频专区</div>
					<a
						href="course-all.jsp"
						class="more icon_right index_recommend_more">查看更多</a>
				</div>

				<!-- 单图文 -->
				<div class="small_grid">
					<a
						href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')"
						class="small_grid_a">
						<div class="img-box">
							<div class="img">
								<img class="lazy"
									data-original="http://xianke88.cn/attachment/images/10/2019/01/z6R0d0Z5u001DzN1Xid8XzX0d5d5CO.png"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" />
							</div>
							<div class="learned">507 人已报名</div>
							<i class="ico_common ico-new"></i>
						</div>
						<div class="grid_title flex1">
							<i class="section-status-btn">已完结</i> 商业模式攻略·音频版（第一季完结）
						</div>
						<div class="grid_info flex0">
							<span class="price flex_g0 index_price_lesson ios-system">¥
								99</span> <span class="mar5 ios-system">|</span> <span
								class="index_section_number">66节</span>
						</div>
					</a> <a
						href="javascript:jumpPage('${pageContext.request.contextPath }/page/myCourse/course-detail.jsp')"
						class="small_grid_a">
						<div class="img-box">
							<div class="img">
								<img class="lazy"
									data-original="http://xianke88.cn/attachment/images/10/2019/01/Y4WMw4qvKM47BCw427373ilji47WwV.jpg"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" />
							</div>
							<div class="learned">241 人已报名</div>
						</div>
						<div class="grid_title flex1">债务危机下的小趋势</div>
						<div class="grid_info flex0">
							<span class="price flex_g0 index_price_lesson ios-system">¥
								19.9</span> <span class="mar5 ios-system">|</span> <span
								class="index_section_number">12节</span>
						</div>
					</a>
				</div>

			</div>
		</div>

		<script type="text/javascript">
			$(document).ready(function() {
				var index = 0;
				var autoTimer = 0;
				var clickEndFlag = true;
				var oInner = $(".article-inner");
				var oLi = $(".article-inner li");
				oLi.eq(0).clone(true).appendTo(oInner);
				var liHeight = $(".scroll-txt").height();

				function tab() {
					oInner.stop().animate({
						top : -index * liHeight
					}, 400, function() {
						clickEndFlag = true;
						if (index == oLi.length) {
							oInner.css({
								top : 0
							});
							index = 0;
						}
					})
				}
				function next() {
					index++;
					tab();
				}
				function prev() {
					index--;
					if (index < 0) {
						index = oLi.size() - 1;
						oInner.css("top", -oLi.size() * liHeight);
					}
					tab();
				}
				autoTimer = setInterval(next, 5000);
				$(".article-inner a").hover(function() {
					clearInterval(autoTimer);
				}, function() {
					autoTimer = setInterval(next, 5000);
				});

			});
		</script>

		<!-- 绑定手机号码 -->
		<!-- /绑定手机号码 -->

		<div id="spinners" style="display:none;">
			<div class="spinner">
				<div class="bounce1"></div>
				<div class="bounce2"></div>
				<div class="bounce3"></div>
			</div>
		</div>

		<script>
			//动画效果
			var mySwiper = new Swiper('.swiper-container', {
				pagination : '.swiper-pagination',
				effect : 'coverflow',
				paginationClickable : true,
				centeredSlides : true,
				autoplay : 5000,
				autoplayDisableOnInteraction : false,
				preloadImages : false,
				lazyLoading : true
			});

			//图片延迟加载
			$(document).ready(function() {
				$("img.lazy").lazyload({
					effect : "fadeIn"
				});
			});
		</script>
		<footer></footer>
		
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/home.js"></script>

		<!-- 底部导航 -->
		<div id="footer-nav" class="footer-nav">
			<a href="${pageContext.request.contextPath }/page/home-phone.jsp" class="weui-tabbar__item weui-bar__item_on"> 
				<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/zGBD88TBj338v8B8e4Mcbfj24b4e2E.png" class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">首页</p>
			</a> <a href="${pageContext.request.contextPath }/page/course-all.jsp" class="weui-tabbar__item "> 
				<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/dTMsHQ40Pgk56pPBFb0F4TP55BQmC5.png" class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">全部课程</p>
			</a>
			<a
				href="${pageContext.request.contextPath }/page/course-my.jsp" class="weui-tabbar__item "> 
				<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/TpV44OvJa244122Wp41800m5Im188e.png" class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">我的课程</p>
			</a> <a
				href="${pageContext.request.contextPath }/page/myself.jsp" class="weui-tabbar__item "> 
				<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/xQEED07OKwwqowKx1xKE49ZWsk4qO9.png" class="weui-tabbar__icon" />
				<p class="weui-tabbar__label">个人中心</p>
			</a>
		</div>
		<!-- /底部导航 -->
	</div>

	<script type="text/javascript">
		var uniacid = "10";
		localStorage.setItem('lastPage_' + uniacid,
				"${pageContext.request.contextPath }/page/home02.jsp");

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
<!-- 	<script type="text/javascript" src="index.php-i=10&c=utility&a=visit&do=showjs&m=fy_lessonv2.html"></script> -->
</body>
</html>