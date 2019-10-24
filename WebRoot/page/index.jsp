<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/page/common/common.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>后台管理</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
<body class="layui-layout-body">
  
  <div id="LAY_app">
    <div class="layui-layout layui-layout-admin">
      <div class="layui-header">
        <!-- 头部区域 -->
        <ul class="layui-nav layui-layout-left">
          <li class="layui-nav-item layadmin-flexible" lay-unselect>
            <a href="javascript:;" layadmin-event="flexible" title="侧边伸缩">
              <i class="layui-icon layui-icon-shrink-right" id="LAY_app_flexible"></i>
            </a>
          </li>
          <li class="layui-nav-item layui-hide-xs" lay-unselect>
            <a href="http://www.layui.com/admin/" target="_blank" title="前台">
              <i class="layui-icon layui-icon-website"></i>
            </a>
          </li>
          <li class="layui-nav-item" lay-unselect>
            <a href="javascript:;" layadmin-event="refresh" title="刷新">
              <i class="layui-icon layui-icon-refresh-3"></i>
            </a>
          </li>
          <li class="layui-nav-item layui-hide-xs" lay-unselect>
            <input type="text" placeholder="搜索..." autocomplete="off" class="layui-input layui-input-search" layadmin-event="serach" lay-action="template/search.html?keywords="> 
          </li>
        </ul>
        <ul class="layui-nav layui-layout-right" lay-filter="layadmin-layout-right">
          <li class="layui-nav-item" lay-unselect>
            <a lay-href="app/message/index.html" layadmin-event="message" lay-text="消息中心">
              <i class="layui-icon layui-icon-notice"></i>  
              
              <!-- 如果有新消息，则显示小圆点 -->
              <span class="layui-badge-dot"></span>
            </a>
          </li>
          <li class="layui-nav-item layui-hide-xs" lay-unselect>
            <a href="javascript:;" layadmin-event="theme">
              <i class="layui-icon layui-icon-theme"></i>
            </a>
          </li>
          <li class="layui-nav-item layui-hide-xs" lay-unselect>
            <a href="javascript:;" layadmin-event="note">
              <i class="layui-icon layui-icon-note"></i>
            </a>
          </li>
          <li class="layui-nav-item layui-hide-xs" lay-unselect>
            <a href="javascript:;" layadmin-event="fullscreen">
              <i class="layui-icon layui-icon-screen-full"></i>
            </a>
          </li>
          <li class="layui-nav-item" lay-unselect>
            <a href="javascript:;">
              <cite>贤心</cite>
            </a>
            <dl class="layui-nav-child">
              <dd><a lay-href="set/user/info.html">基本资料</a></dd>
              <dd><a lay-href="set/user/password.html">修改密码</a></dd>
              <hr>
              <dd layadmin-event="logout" style="text-align: center;"><a>退出</a></dd>
            </dl>
          </li>
          
          <li class="layui-nav-item layui-hide-xs" lay-unselect>
            <a href="javascript:;" layadmin-event="about"><i class="layui-icon layui-icon-more-vertical"></i></a>
          </li>
          <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-unselect>
            <a href="javascript:;" layadmin-event="more"><i class="layui-icon layui-icon-more-vertical"></i></a>
          </li>
        </ul>
      </div>
      
      <!-- 侧边菜单 -->
      <div class="layui-side layui-side-menu">
        <div class="layui-side-scroll">
<!--           <div class="layui-logo" lay-href="home/console.html"> -->
<!--             <span>layuiAdmin</span> -->
<!--           </div> -->
          
          <ul class="layui-nav layui-nav-tree" lay-shrink="all" id="LAY-system-side-menu" lay-filter="layadmin-system-side-menu">
            <li data-name="role" class="layui-nav-item">
              <a href="javascript:;" lay-href="${pageContext.request.contextPath }/page/role/role.jsp" lay-tips="角色管理" lay-direction="2">
                <i class="layui-icon layui-icon-auz"></i>
                <cite>角色管理</cite>
              </a>
            </li>
            <li data-name="courseType" class="layui-nav-item">
              <a href="javascript:;" lay-href="${pageContext.request.contextPath }/page/course/course-type.jsp" lay-tips="课程分类" lay-direction="2">
                <i class="layui-icon layui-icon-auz"></i>
                <cite>课程分类</cite>
              </a>
            </li>
            <li data-name="course" class="layui-nav-item">
              <a href="javascript:;" lay-href="${pageContext.request.contextPath }/page/course/course.jsp" lay-tips="课程管理" lay-direction="2">
                <i class="layui-icon layui-icon-auz"></i>
                <cite>课程管理</cite>
              </a>
            </li>
            <li data-name="course" class="layui-nav-item">
              <a href="javascript:;" lay-href="${pageContext.request.contextPath }/page/course/course-list.jsp" lay-tips="课程管理" lay-direction="2">
                <i class="layui-icon layui-icon-auz"></i>
                <cite>课程列表管理</cite>
              </a>
            </li>
            <li data-name="question" class="layui-nav-item">
              <a href="javascript:;" lay-href="${pageContext.request.contextPath }/page/teacher/course-question.jsp" lay-tips="题库管理" lay-direction="2">
                <i class="layui-icon layui-icon-auz"></i>
                <cite>题库管理</cite>
              </a>
            </li>
            <li data-name="course" class="layui-nav-item">
              <a href="javascript:;" lay-href="${pageContext.request.contextPath }/page/course/teacher-new.jsp" lay-tips="课程管理" lay-direction="2">
                <i class="layui-icon layui-icon-auz"></i>
                <cite>讲师管理</cite>
              </a>
            </li>
            <li data-name="costom" class="layui-nav-item">
              <a href="javascript:;" lay-href="${pageContext.request.contextPath }/page/costomer/costomer.jsp" lay-tips="客户管理" lay-direction="2">
                <i class="layui-icon layui-icon-auz"></i>
                <cite>客户管理</cite>
              </a>
            </li>
            <li data-name="order" class="layui-nav-item">
              <a href="javascript:;" lay-href="${pageContext.request.contextPath }/page/order/order.jsp" lay-tips="订单管理" lay-direction="2">
                <i class="layui-icon layui-icon-auz"></i>
                <cite>订单管理</cite>
              </a>
            </li>
            <li data-name="score" class="layui-nav-item">
              <a href="javascript:;" lay-href="${pageContext.request.contextPath }/page/costomer/grade.jsp" lay-tips="分数管理" lay-direction="2">
                <i class="layui-icon layui-icon-auz"></i>
                <cite>分数管理</cite>
              </a>
            </li>
          </ul>
        </div>
      </div>

      <!-- 页面标签 -->
      <div class="layadmin-pagetabs" id="LAY_app_tabs">
        <div class="layui-icon layadmin-tabs-control layui-icon-prev" layadmin-event="leftPage"></div>
        <div class="layui-icon layadmin-tabs-control layui-icon-next" layadmin-event="rightPage"></div>
        <div class="layui-icon layadmin-tabs-control layui-icon-down">
          <ul class="layui-nav layadmin-tabs-select" lay-filter="layadmin-pagetabs-nav">
            <li class="layui-nav-item" lay-unselect>
              <a href="javascript:;"></a>
              <dl class="layui-nav-child layui-anim-fadein">
                <dd layadmin-event="closeThisTabs"><a href="javascript:;">关闭当前标签页</a></dd>
                <dd layadmin-event="closeOtherTabs"><a href="javascript:;">关闭其它标签页</a></dd>
                <dd layadmin-event="closeAllTabs"><a href="javascript:;">关闭全部标签页</a></dd>
              </dl>
            </li>
          </ul>
        </div>
        <div class="layui-tab" lay-unauto lay-allowClose="true" lay-filter="layadmin-layout-tabs">
          <ul class="layui-tab-title" id="LAY_app_tabsheader">
            <li lay-id="home/console.html" lay-attr="home/console.html" class="layui-this"><i class="layui-icon layui-icon-home"></i></li>
          </ul>
        </div>
      </div>
      
      
      <!-- 主体内容 -->
      <div class="layui-body" id="LAY_app_body">
        <div class="layadmin-tabsbody-item layui-show">
          <iframe src="console.html" frameborder="0" class="layadmin-iframe"></iframe>
        </div>
      </div>
      
      <!-- 辅助元素，一般用于移动设备下遮罩 -->
      <div class="layadmin-body-shade" layadmin-event="shade"></div>
    </div>
  </div>

  <script>
  layui.config({
    base: '../assets/layuiadmin/' //静态资源所在路径
  }).extend({
    index: 'lib/index' //主入口模块
  }).use('index');
  </script>
  
  <!-- 百度统计 -->
  <script>
  var _hmt = _hmt || [];
  (function() {
    var hm = document.createElement("script");
    hm.src = "https://hm.baidu.com/hm.js?d214947968792b839fd669a4decaaffc";
    var s = document.getElementsByTagName("script")[0]; 
    s.parentNode.insertBefore(hm, s);
  })();
  </script>
</body>
</html>
