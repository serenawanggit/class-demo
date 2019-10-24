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
.course-img{float: left;width: 60px;height: 60px;border-radius: 100%;}
.layadmin-caller{padding-top:15px;}
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
		<div class="tip"><span>张三</span>，欢迎回来</div>
	</div>
</div>

<!-- 顶部导航  -->
<ul class="tab_wrap">
	<li class="tab_item tab_item_on">
		<a href="javascript:;">全部订单</a>
	</li>
	<li class="tab_item ">
		<a href="javascript:;">待付款</a>
	</li>
	<li class="tab_item ">
		<a href="javascript:;">已付款</a>
	</li>
	<li class="tab_item ">
		<a href="javascript:;">可核销</a>
	</li>
</ul>
<!-- /顶部导航  -->

<!-- 订单列表  -->
<div class="my_empty">
    <div class="layadmin-caller">
      <div class="caller-contar">
        <div class="caller-item" id="course-0">
          <img src="${pageContext.request.contextPath}/image/351.jpg" class="course-img">
          <div class="caller-main caller-fl" style="float:left;width:50%;">       
            <p><a href="javascript:toVideo();">简单有效的科学唱歌方法12</a></p>
            <b style="color:red;font-size:16px;">￥79</b>
          </div>
          <div style="width:10%;height:30px;float:right;">
          	<button class="layui-btn layui-btn-primary layui-btn-xs" onclick="del(0)"><i class="layui-icon">&#xe640;</i></button>
          </div>
        </div>
        <div class="caller-item">
          <img src="${pageContext.request.contextPath}/image/351.jpg" alt="" class="course-img">
          <div class="caller-main caller-fl" style="float:left;width:50%;">       
            <p><a href="javascript:toVideo();">简单有效的科学唱歌方法</a></p>
            <b style="color:red;font-size:16px;">￥79</b>
          </div>
          <div style="width:10%;height:30px;float:right;"><button class="layui-btn layui-btn-primary layui-btn-xs"><i class="layui-icon">&#xe640;</i></button></div>
        </div>
        <div class="caller-item">
          <img src="${pageContext.request.contextPath}/image/351.jpg" alt="" class="course-img">
          <div class="caller-main caller-fl" style="float:left;width:50%;">       
            <p><a href="javascript:toVideo();">简单有效的科学唱歌方法</a></p>
            <b style="color:red;font-size:16px;">￥79</b>
          </div>
          <div style="width:10%;height:30px;float:right;"><button class="layui-btn layui-btn-primary layui-btn-xs"><i class="layui-icon">&#xe640;</i></button></div>
        </div>
      </div>
    </div>
</div>
<!-- 订单列表  -->
<div id="loading_div" class="loading_div"><div class="loading_bd">没有了，已经到底了</div></div>

<div id="loadingToast" style="display: none;">
	<div class="weui-mask_transparent"></div>
	<div class="weui-toast">
		<i class="weui-loading weui-icon_toast"></i>
		<p class="weui-toast__content">加载数据中</p>
	</div>
</div>

<script type="text/javascript">
	function GetQueryString(name) {
		var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
		var r = window.location.search.substr(1).match(reg);
		if(r != null) return unescape(r[2]);
		return null;
	}

	var status = GetQueryString('status');
	var is_verify = GetQueryString('is_verify');
	var ajaxUrl = "./index.php?i=10&c=entry&op=ajaxgetlist&do=mylesson&m=fy_lessonv2";
	var attachUrl = "http://xianke88.cn/attachment/";
	var payUrl = "./index.php?i=10&c=entry&do=pay&m=fy_lessonv2";
	var cancleUrl = "./index.php?i=10&c=entry&op=cancle&do=mylesson&m=fy_lessonv2";
	var eUrl = "./index.php?i=10&c=entry&do=evaluate&m=fy_lessonv2";
	var orderUrl = "./index.php?i=10&c=entry&do=orderdetail&m=fy_lessonv2";
	var get_status = true; //允许获取状态
	var loadingToast = document.getElementById("loadingToast");
	$(function() {
		var nowPage = 1; //设置当前页数，全局变量
		function getData(page) {
			if(get_status){
				nowPage++; //页码自动增加，保证下次调用时为新的一页。  
				$.get(ajaxUrl, {
					page: page,
					status: status,
					is_verify: is_verify,
				}, function(data) {
					loadingToast.style.display = 'none';

					var jsonObj = JSON.parse(data);
					if (jsonObj.length > 0) {
						insertDiv(jsonObj);
					}else{
						get_status = false;  //没有数据后，禁止请求获取数据
						document.getElementById("loading_div").innerHTML='<div class="loading_bd">没有了，已经到底了</div>';
					}
				});
			}

		}
		//初始化加载第一页数据  
		getData(1);

		//生成数据html,append到div中  
		function insertDiv(result) {
			var mainDiv = $("#order-list");
			var chtml = '';
			for(var j = 0; j < result.length; j++) {
				chtml += '<div class="order_content">';
				chtml += '	<div class="order_sn">';
				chtml += '		<div class="fl text-left">';
				chtml += '			<p>订单编号：' + result[j].ordersn + '</p>';
				chtml += '		</div>';
				chtml += '		<div class="fr text-right">';
				chtml += '			<p class="order_status '+ result[j].status_class +'">' + result[j].statusname + '</p>';
				chtml += '		</div>';
				chtml += '		<div class="clear"></div>';
				chtml += '	</div>';
				chtml += '	<a href="'+ orderUrl +'&orderid='+ result[j].id +'" class="normal_grid flex0_1">';
				chtml += '		<div class="normal_grid_a flex_g0">';
				chtml += '			<div class="img-box flex_g0">';
				chtml += '				<div class="img">';
				chtml += '					<img src="' + attachUrl+result[j].images + '">';
				chtml += '				</div>';
				chtml += '			</div>';
				chtml += '		</div>';
				chtml += '		<div class="flex-al1 flex10">';
				chtml += '			<div>';
				chtml += '				<div class="grid_title2">';
				chtml += '					<span class="grid_info">课程名称：</span>' + result[j].bookname;
				chtml += '				</div>';
				if(result[j].lesson_type==1){
					chtml += '				<div class="flex0 font_12">';
					chtml += '					<span class="grid_info">课程规格：</span>'+result[j].spec_name;
					chtml += '				</div>';
					chtml += '				<div class="flex0 font_12">';
					if(result[j].is_verify==0){
						chtml += '				<span class="grid_info">核销状态：</span><i class="green-color">未核销</i>';
					}else if(result[j].is_verify==1){
						chtml += '				<span class="grid_info">核销状态：</span><i class="red-color">已核销' + result[j].verify_num + '次</i>';
					}else if(result[j].is_verify==2){
						chtml += '				<span class="grid_info">核销状态：</span><i class="red-color">核销完成(' + result[j].verify_num + '次)</i>';
					}
					chtml += '				</div>';
				}else{
					chtml += '				<div class="flex0 font_12">';
					if(result[j].spec_day>0){
						chtml += '			<span class="grid_info">课程规格：</span>'+result[j].spec_day+'天';
					}else{
						chtml += '			<span class="grid_info">课程规格：</span>长期有效';
					}
					chtml += '				</div>';
					if(result[j].validity!=0 && result[j].status>0){
						chtml += '		<div class="flex0 font_12">';
						chtml += '			<span class="grid_info">有效期限：</span>'+result[j].validity;
						chtml += '		</div>';
					}
				}
				chtml += '				<div class="flex0 font_12">';
				chtml += '					<span class="grid_info">下单时间：</span>' + result[j].addtime;
				chtml += '				</div>';
				chtml += '				<div class="flex0 font_12">';
				chtml += '				</div>';
				chtml += '			</div>';
				chtml += '		</div>';
				chtml += '	</a>';
				chtml += '	<div class="order_btn">';
				chtml += '		<div class="text-right">';
				if(result[j].show_qrcode){
					chtml += '		<a href="'+orderUrl+'&orderid='+result[j].id+'" class="mylesson-btn verify-btn">核销二维码</a>';
				}
				if(result[j].status=='0'){
					chtml += '		<a href="'+cancleUrl+'&orderid='+result[j].id+'" class="mylesson-btn cancle-btn">取消订单</a>';
					chtml += '		<a href="'+payUrl+'&orderid='+result[j].id+'&ordertype=buylesson" class="mylesson-btn pay-btn ios-system">立即支付</a>';
				}else if(result[j].status=='1'){
					chtml += '		<a href="'+eUrl+'&orderid='+result[j].id+'" class="mylesson-btn evaluate-btn">评价课程</a>';
				}else if(result[j].status=='-1'){
					chtml += '		<a href="'+cancleUrl+'&orderid='+result[j].id+'&is_delete=1" class="mylesson-btn cancle-btn">删除订单</a>';
				}
				chtml += '		</div>';
				chtml += '	</div>';
				chtml += '</div>';
			}
			mainDiv.append(chtml);
		}

		//定义鼠标滚动事件
		var scroll_loading = false;
		$(window).scroll(function(){
		var scrollTop = $(this).scrollTop();
		var scrollHeight = $(document).height();
		var windowHeight = $(this).height();
		if(scrollTop + windowHeight >= scrollHeight && !scroll_loading){
				scroll_loading = true;
				getData(nowPage);  
				scroll_loading = false;
		}
		});
		$("#btn_Page").click(function () {
			loadingToast.style.display = 'block';
			getData(nowPage);
		});
	});
	
	$(".mylesson-btn").click(function(){
		loadingToast.style.display = 'block';
	})

	$("#btn-avatar").click(function(){
		var agent = 0;
		if(!agent){
			return;
		}
		var sureUrl = "./index.php?i=10&c=entry&updateInfo=1&back_do=mylesson&do=self&m=fy_lessonv2";
		$(this).openWindow('系统提示','更新头像信息?','["取消","确定"]','javascript:;', sureUrl);
	});
</script>
    
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/course-my.js"></script>
    
    <script type="text/javascript">
    	function toVideo(){
    		window.parent.frames.location.href = "${pageContext.request.contextPath}/page/myCourse/video_view.jsp";
    	}
    </script>
<!--     <footer> -->
<!-- 	</footer> -->
    
    <!-- 底部导航 -->
		<div id="footer-nav" class="footer-nav">
			<a href="${pageContext.request.contextPath }/page/home-phone.jsp" class="weui-tabbar__item "> 
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
