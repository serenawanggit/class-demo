<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/page/common/common.jsp" %>

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

.bottom{ height:70px; text-align:center; }
.bottom .col{ float:left; width:25%; }
.course-img{float: left;width: 60px;height: 60px;border-radius: 100%;}
.layadmin-caller{padding-top:15px;}
.layadmin-caller .caller-contar .caller-item{padding:6px 0;overflow: hidden;border-bottom: 1px solid #e0e0e0;}
.layadmin-caller .caller-contar .caller-item .caller-main p:first-child{padding-top:8px;}
.header-2 .top_ico_back{position: absolute; top: 0; left: 12px; width: 20px; height: 20px;}
.header-2 .top_ico_home{position: absolute; top: 0; right: 18px; width: 20px; height: 20px;}

.content{padding:25px;}
.content div{height:40px;line-height:40px;}
.content .question{font-weight:bold;font-size:16px;}
.layui-form div{padding-left:10px;}
.content .layui-btn-fluid{margin-top:15px;}
.button_div{margin:10px 10px;}
#page-container{background-color: #fff;height:100%;}
#result{padding:25px;}
#result div{ margin:5px; width:30px; height:35px; float:left; line-height:30px; text-align:center; font-weight:blod; font-size:16px; }
</style>
</head>
<body>
	<div class="page-container" id="page-container">
	 	
		<div class="header-2 cbox">
			<a href="javascript:history.back(-1);" class="top_ico_back"><i class="layui-icon layui-icon-left" style="font-size:25px;"></i></a>
			<div class="flex title">商业模式攻略·音频版（第一季完结）</div>
			<a href="${pageContext.request.contextPath }/page/home.jsp" class="top_ico_home"><i class="layui-icon layui-icon-home" style="font-size:25px;"></i></a>
		</div>
 	
		<div id="video-div">
			<video id="video" preload="auto" width="100%" height="auto" controls="controls" autobuffer="autobuffer" x5-playsinline="" 
				playsinline="" webkit-playsinline="">
			 	<source src="${pageContext.request.contextPath }/uploadFiles/test.mp4">
			</video>
		</div>
		
		<!-- 章节目录 S -->
		<div class="js-tab">
			<ul class="course-chapter">
				<li>
					<h2 class="chapter-title">
						<i class="section-title-icon"></i>商业模式攻略·音频版（第一季完结）[66课时]
					</h2>
					<ul class="course-sections">
						<li><a href="javascript:;" onclick="readSection(362);">
								<div><i class="course-type"> 音频 </i> 第一节：没有被淘汰的行业，只有被淘汰的模式</div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(363);">
								<div><i class="course-type"> 音频 </i> 第二节：学会像鹰一样，快人一步发现趋势</div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(364);">
								<div><i class="course-type"> 音频 </i> 第三节：共享经济会怎样影响我们的生活</div>
								<div class="free-time-content"></div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(365);">
								<div><i class="course-type"> 音频 </i> 第四节：打开企业盈利能力的阀门</div>
								<div class="free-time-content"></div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(366);">
								<div><i class="course-type"> 音频 </i> 第五节：以弱胜强的游击战思维</div>
								<div class="free-time-content"></div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(367);">
								<div><i class="course-type"> 音频 </i> 第六节：找到破局点，打好游击战</div>
								<div class="free-time-content"></div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(368);">
								<div><i class="course-type"> 音频 </i> 第七节：商业模式起手式之尖刀开路</div>
								<div class="free-time-content"></div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(369);">
								<div><i class="course-type"> 音频 </i> 第八节：商业模式起手式之物尽其用</div>
								<div class="free-time-content"></div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(370);">
								<div><i class="course-type"> 音频 </i> 第九节：商业模式起手式之规则创新</div>
								<div class="free-time-content"></div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(371);">
								<div><i class="course-type"> 音频 </i> 第十节：商业模式创新的六大误区</div>
								<div class="free-time-content"></div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(372);">
								<div><i class="course-type"> 音频 </i> 第十一节：咖啡行业的客户细分攻略</div>
								<div class="free-time-content"></div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(373);">
								<div><i class="course-type"> 音频 </i> 第十二节：学会这三招，方案将更能打动听众</div>
								<div class="free-time-content"></div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(374);">
								<div><i class="course-type"> 音频 </i> 第十三节：未来做房地产，这节是必听课</div>
								<div class="free-time-content"></div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(375);">
								<div><i class="course-type"> 音频 </i> 第十四节：真能吸引人的广告牌是这样的</div>
								<div class="free-time-content"></div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(376);">
								<div><i class="course-type"> 音频 </i> 第十五节：发现消费者中的分歧者</div>
								<div class="free-time-content"></div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(377);">
								<div><i class="course-type"> 音频 </i> 第十六节：为客户营造一次盗梦空间</div>
								<div class="free-time-content"></div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(378);">
								<div><i class="course-type"> 音频 </i> 第十七节：避免自嗨的客户需求洞察清单</div>
								<div class="free-time-content"></div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(379);">
								<div><i class="course-type"> 音频 </i> 第十八节：价值创造之突围中的中国茶品牌</div>
								<div class="free-time-content"></div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(380);">
								<div><i class="course-type"> 音频 </i> 第十九节：价值创造之让客户尖叫的瞬间</div>
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
								<div><i class="course-type"> 音频 </i> 第六十二节：赚钱的企业不一定值钱</div>
								<div class="free-time-content"></div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(512);">
								<div><i class="course-type"> 音频 </i> 第六十三节：如何提高资产周转率</div>
								<div class="free-time-content"></div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(513);">
								<div><i class="course-type"> 音频 </i> 第六十四节：亚马逊的关键一跃</div>
								<div class="free-time-content"></div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(514);">
								<div><i class="course-type"> 音频 </i> 第六十五节：商业模式测评（上）</div>
								<div class="free-time-content"></div>
						</a></li>
						<li><a href="javascript:;" onclick="readSection(515);">
								<div><i class="course-type"> 音频 </i> 第六十六节：商业模式测评（下）</div>
								<div class="free-time-content"></div>
						</a></li>
					</ul>
				</li>
				<ul>
		</div>
		<!-- 章节目录 E -->
    
  	</div>
  	
<!--   	<script type="text/javascript" src="${pageContext.request.contextPath }/js/problem-do.js"></script> -->
	<div id="problem-main" style="display: none;margin-top:20px;">
	  	<form class="layui-form" lay-filter="component-form-group">
			<div class="content" id="question">
			</div>
			<div id="result">
				<h2 style="text-align:center;">结果</h2>
			</div>
			<div class="button_div"><button type="button" class="layui-btn layui-btn-fluid" id="next">下一题</button></div>
			<div class="button_div"><button type="button" class="layui-btn layui-btn-fluid" id="submit">提交</button></div>
			<input type="hidden" id="questionNum">
		</form>
	</div>
  	
  	
  	<script type="text/javascript">
		var video = document.getElementById("video");
  		function aaa(){
//   			alert(video.currentTime);
//   			video.currentTime = 100;
  		}
  		video.addEventListener("ended",function(){
			$("#video-div").hide();
			layer.open({
			  	type: 2, 
		        //btn: ['关闭'],
			  	area: ['300px', '400px'],
			  	content: 'problem_do.jsp', //这里content是一个普通的String
			  	end: function(){
					$("#video-div").show();
			  		video.pause();
				} 
		    });
		});
  	</script>

  </body>
</html>
