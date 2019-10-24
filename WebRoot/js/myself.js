var localObj = window.location;
var protocol = location.protocol;
var host = localObj.host;
var contextPath = localObj.pathname.split("/")[1];
var basePath = protocol +"//"+host+"/"+contextPath;
var courseTypeVal_, courseNameVal_;
/* 综合排序 */
$(function() {
	
	//加载课程类别-父类别
	$.ajax({
      	type:"POST",
      	url:basePath + "/costomer/query",
      	data:{id: 1},
      	dataType: "json",
      	success: function(msg){
      		$("#nickname").html(msg.data[0].name);
      		$("#study_NO").html("学号："+msg.data[0].study_NO);
      	}
  	});
	
	//加载课程类别-父类别
	/*$.ajax({
      	type:"POST",
      	url:basePath + "/Love/addLove",
      	data:{costomer_id: 1, course_id: 1},
      	dataType: "json",
      	success: function(msg){
      		alert(msg.succes);
      	}
  	});
	*/
	/*$.ajax({
      	type:"POST",
      	url:basePath + "/Foots/delFootsById",
      	data:{id: '3,4'},
      	dataType: "json",
      	success: function(msg){
      		alert(msg.succes);
      	}
  	});*/
	
});