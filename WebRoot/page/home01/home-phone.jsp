<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>在线教育</title>

  <script type="text/javascript">
  	$(function(){
  		$(".swiper-container").height($(".swiper-container").width() * 0.6);
  	});
  	function jumpPage(pageName){
  		window.parent.frames.location.href = pageName;
  	}
  </script>
</head>
<body>
	<div class="page-container" id="page-container">
		<div>
			<div class="index-search">
				<form action="" method="GET">
					<input type="hidden" name="i" value="10" /> <input type="hidden" name="c" value="entry" /> 
					<input type="hidden" name="do" value="search" /> <input type="hidden" name="clear" value="1" /> 
					<input type="hidden" name="m" value="fy_lessonv2" />
					<div class="index-header-search">
						<div class="u-search">
							<i class="fa fa-search"></i> 
							<input type="search" name="keyword" class="search_input z-abled" autocorrect="off" placeholder="搜索您感兴趣的课程">
						</div>
					</div>
				</form>
			</div>
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<!--图片一-->
					<div class="swiper-slide">
						<a href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp">
							<img class="swiper-lazy" src="${pageContext.request.contextPath }/image/attachment/images/10/2019/06/wrbJqbOAaTB5ril5aOliiWJBiRlUba.jpg">
						</a>
					</div>
					<div class="swiper-slide">
						<a href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp">
							<img class="swiper-lazy"
							src="${pageContext.request.contextPath }/image/attachment/images/10/2019/06/G821fBg8sbddwGH8B1HGbd2DHZ26D1.jpg">
						</a>
					</div>
					<div class="swiper-slide">
						<a href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp">
							<img class="swiper-lazy"
							src="${pageContext.request.contextPath }/image/attachment/images/10/2019/06/XeTNP63mPK63Q6M2NJZT4p5KtxNeK6.png">
						</a>
					</div>
					<div class="swiper-slide">
						<a href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp">
							<img class="swiper-lazy"
							src="${pageContext.request.contextPath }/image/attachment/images/10/2019/06/S3a4H55RXKn5mN5NOZU333QhuKz6ar.jpg">
						</a>
					</div>
					<!--图片一end-->
				</div>
				<div class="swiper-pagination"></div>
			</div>
			<div class="grid_wrap bor_no">
				<a class="grid_item"
					href="course-all.jsp">
					<div class="grid_hd">
						<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/yxzw4D00eGI7005z0dsw46sz1O61S6.png" alt="战略模式" />
					</div>
					<div class="grid_bd">
						<p>战略模式</p>
					</div>
				</a> <a class="grid_item"
					href="course-all.jsp">
					<div class="grid_hd">
						<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/L2Zt76t5kFbVbkBV4f7VVb7kFq4t4t.png" alt="周博访谈" />
					</div>
					<div class="grid_bd">
						<p>周博访谈</p>
					</div>
				</a> <a class="grid_item"
					href="course-all.jsp">
					<div class="grid_hd">
						<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/yW9ktNLYpe7nKNTDG97g7nPEdl7FfY.png" alt="创业融资" />
					</div>
					<div class="grid_bd">
						<p>创业融资</p>
					</div>
				</a> <a class="grid_item"
					href="course-all.jsp">
					<div class="grid_hd">
						<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/PF6BrDDdMberWjc0C70d5w40deDzYE.png" alt="生产制造" />
					</div>
					<div class="grid_bd">
						<p>生产制造</p>
					</div>
				</a> <a class="grid_item"
					href="course-all.jsp">
					<div class="grid_hd">
						<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/rqHO02papjHW22p2yLH5P22Njqa5kV.png" alt="营销销售" />
					</div>
					<div class="grid_bd">
						<p>营销销售</p>
					</div>
				</a> <a class="grid_item"
					href="course-all.jsp">
					<div class="grid_hd">
						<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/XV85TvY8Q77qT4H8gtqIB8kZE5456q.png" alt="财务税务" />
					</div>
					<div class="grid_bd">
						<p>财务税务</p>
					</div>
				</a> <a class="grid_item"
					href="course-all.jsp">
					<div class="grid_hd">
						<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/WxARmZ1FUZaza13y1axNZu14XYu1sA.png" alt="人力资源" />
					</div>
					<div class="grid_bd">
						<p>人力资源</p>
					</div>
				</a> <a class="grid_item"
					href="course-all.jsp">
					<div class="grid_hd">
						<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/U4LS284N84D49qcS994747Q79CGCI7.png" alt="生活百科" />
					</div>
					<div class="grid_bd">
						<p>生活百科</p>
					</div>
				</a> <a class="grid_item"
					href="course-all.jsp">
					<div class="grid_hd">
						<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/tGqV5PyYNCi0sNdPTDC0Dm5ckDCPGs.png"
							alt="实用工具" />
					</div>
					<div class="grid_bd">
						<p>实用工具</p>
					</div>
				</a> <a class="grid_item"
					href="course-all.jsp">
					<div class="grid_hd">
						<img
							src="${pageContext.request.contextPath }/image/attachment/images/10/2019/04/a20SUUTjbRob8rZKJxh7k75s2frBgJ.png"
							alt="全部分类">
					</div>
					<div class="grid_bd">
						<p>全部分类</p>
					</div>
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
					href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp"
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
					href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp"
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
					href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp"
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
					<a href="course_all.jsp"
						class="more icon_right">查看全部</a>
				</div>

				<div style="overflow:hidden;">
					<div class="teacher_swiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<a href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp">
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
								<a href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp">
									<div class="img-box">
										<div class="img">
											<img
												src="${pageContext.request.contextPath }/image/attachment/images/10/2019/01/o5QQVxV8YbHg86pF66VctpF9Pzof9P.jpg">
										</div>
									</div>
									<div class="name">茅忠群</div>
								</a>
							</div>
							<div class="swiper-slide">
								<a href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp">
									<div class="img-box">
										<div class="img">
											<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/03/Q77O727C278Yc2Hcj29cd1S1837991.jpg">
										</div>
									</div>
									<div class="name">刘春华</div>
								</a>
							</div>
							<div class="swiper-slide">
								<a
									href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp">
									<div class="img-box">
										<div class="img">
											<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/02/LSyZy8y19X3ey7S6Utts6v8V3YatjU.png">
										</div>
									</div>
									<div class="name">孙虹钢</div>
								</a>
							</div>
							<div class="swiper-slide">
								<a
									href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp">
									<div class="img-box">
										<div class="img">
											<img src="${pageContext.request.contextPath }/image/attachment/images/10/2019/02/gszlPluAVZa11Bja0ujB4S9H6322H8.jpg">
										</div>
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
						<img class="flex_g0" src="${pageContext.request.contextPath }/addons/fy_lessonv2/template/mobile/default/images/index_default_rec_icon.png"
							style="width: 19px;" />
					</div>
					<div class="flex_all index_recommend_title">视频专区</div>
					<a href="course-all.jsp"
						class="more icon_right index_recommend_more">查看更多</a>
				</div>

				<!-- 单图文 -->
				<div class="small_grid">
					<a
						href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp"
						class="small_grid_a">
						<div class="img-box">
							<div class="img">
								<img class="lazy"
									data-original="http://xianke88.cn/attachment/images/10/2019/02/xLGqJvJQyq5pZpJqijHLQqi9ghiIGg.png"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" />
							</div>
							<div class="learned">384 人已报名</div>
							<i class="ico_common ico-new"></i>
						</div>
						<div class="grid_title flex1">系统经理人培训26课时</div>
						<div class="grid_info flex0">
							<span class="price flex_g0 index_price_lesson ios-system">¥ 99</span> 
							<span class="mar5 ios-system">|</span> <span class="index_section_number">26节</span>
						</div>
					</a> <a
						href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp"
						class="small_grid_a">
						<div class="img-box">
							<div class="img">
								<img class="lazy" data-original="${pageContext.request.contextPath }/image/attachment/images/10/2019/06/wrbJqbOAaTB5ril5aOliiWJBiRlUba.jpg"
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
						href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp"
						class="small_grid_a">
						<div class="img-box">
							<div class="img">
								<img class="lazy" data-original="http://xianke88.cn/attachment/images/10/2019/02/DllcmdUnd1uHwSWWR1zxDc1odc9RZd.jpg"
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
						href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp"
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
					</a>
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
					<a href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp"
						class="small_grid_a">
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
							<span class="price flex_g0 index_price_lesson ios-system">¥ 9.9</span> 
							<span class="mar5 ios-system">|</span> <span class="index_section_number">2节</span>
						</div>
					</a> <a href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp"
						class="small_grid_a">
						<div class="img-box">
							<div class="img">
								<img class="lazy" data-original="http://xianke88.cn/attachment/images/10/2019/01/fm1MMMnTi4i1B1GCm1n1pP5ICuCCWz.jpg"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" />
							</div>
							<div class="learned">348 人已报名</div>
						</div>
						<div class="grid_title flex1">《企业“五心”与价值责任》</div>
						<div class="grid_info flex0">
							<span class="price flex_g0 index_price_lesson ios-system">¥ 9.9</span> 
							<span class="mar5 ios-system">|</span> <span class="index_section_number">1节</span>
						</div>
					</a> <a href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp" class="small_grid_a">
						<div class="img-box">
							<div class="img">
								<img class="lazy" data-original="http://xianke88.cn/attachment/images/10/2019/01/K8TeK0KFzbkbkFds2fVK020dUUZUbs.jpeg"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" />
							</div>
							<div class="learned">311 人已报名</div>
							<i class="ico_common ico-vip"></i>
						</div>
						<div class="grid_title flex1">《“幸福企业”的实现路径》</div>
						<div class="grid_info flex0">
							<span class="price flex_g0 index_price_lesson ios-system">¥ 9.9</span> 
							<span class="mar5 ios-system">|</span> <span class="index_section_number">1节</span>
						</div>
					</a> <a href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp" class="small_grid_a">
						<div class="img-box">
							<div class="img">
								<img class="lazy" data-original="http://xianke88.cn/attachment/images/10/2019/01/ca3m3PRSPGXRxnXrpN3NLp1Z0LrvgN.jpeg"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" />
							</div>
							<div class="learned">347 人已报名</div>
							<i class="ico_common ico-vip"></i>
						</div>
						<div class="grid_title flex1">《中国企业如何实现“走出去”战略》</div>
						<div class="grid_info flex0">
							<span class="price flex_g0 index_price_lesson ios-system">¥ 9.9</span> 
							<span class="mar5 ios-system">|</span> <span class="index_section_number">1节</span>
						</div>
					</a>
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
					<a href="course-all.jsp" class="more icon_right index_recommend_more">查看更多</a>
				</div>

				<!-- 单图文 -->
				<div class="small_grid">
					<a
						href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp"
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
							<span class="price flex_g0 index_price_lesson ios-system">¥ 99</span> <span class="mar5 ios-system">|</span> 
							<span class="index_section_number">66节</span>
						</div>
					</a> <a
						href="${pageContext.request.contextPath }/page/myCourse/course-detail.jsp"
						class="small_grid_a">
						<div class="img-box">
							<div class="img">
								<img class="lazy" data-original="http://xianke88.cn/attachment/images/10/2019/01/Y4WMw4qvKM47BCw427373ilji47WwV.jpg"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" />
							</div>
							<div class="learned">241 人已报名</div>
						</div>
						<div class="grid_title flex1">债务危机下的小趋势</div>
						<div class="grid_info flex0">
							<span class="price flex_g0 index_price_lesson ios-system">¥ 19.9</span> 
							<span class="mar5 ios-system">|</span> <span class="index_section_number">12节</span>
						</div>
					</a>
				</div>

			</div>
		</div>

		<script src="${pageContext.request.contextPath }/assets/js/jquery.lazyload-v=3.2.0.js"></script>
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
	</div>

</body>
</html>