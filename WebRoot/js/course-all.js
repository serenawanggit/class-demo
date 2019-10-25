var localObj = window.location;
var protocol = location.protocol;
var host = localObj.host;
var contextPath = localObj.pathname.split("/")[1];
var basePath = protocol +"//"+host+"/"+contextPath;
var courseTypeVal_, courseNameVal_;
/* 综合排序 */
$(function() {
	$(".sort_list_grid a").on("click", function() {
		closesort();
	});
	$("#pageNum").val("1");
	loadCourseList();

	//加载课程类别-父类别
	$.ajax({
      	type:"POST",
      	url:basePath + "/course/queryCourseType",
      	data:{parentId: 0},
      	dataType: "json",
      	success: function(msg){
  			var str = '<a id="courseTypeA-0" href="javascript:queryCourseTypeByParentIdNotNull();" class="nav_menu_item_selected"><li class="nav_menu_item"><img class="nav_menu_item-icon" src="'+basePath+'/image/attachment/images/10/2019/04/a20SUUTjbRob8rZKJxh7k75s2frBgJ.png">全部类别</li></a>';
      		$.each(msg.data, function(i, dom){
      			str += '<a id="courseTypeA-'+dom.id+'" href="javascript:showCourseType('+dom.id+');"><li class="nav_menu_item"><img class="nav_menu_item-icon" src="'+basePath+'/image/attachment/images/10/2019/04/a20SUUTjbRob8rZKJxh7k75s2frBgJ.png">'+dom.name+'</li></a>';
      		});
      		$("#courseTypeParentUl").html(str);
      	}
  	});
	//加载课程类别
	queryCourseTypeByParentIdNotNull();
	
	//查询提交事件
	$("form").submit(function(e){
		e.preventDefault();
		$("#pageNum").val("1");
		$("#lesson-list1").empty();
		courseNameVal_ = $("#keyword").val();
		loadCourseList();
    });
});
function clickShowCourseList(courseTypeId,courseTypeNameSpan){
	$("#pageNum").val("1");
	$("#lesson-list1").empty();
	courseTypeVal_ = courseTypeId;
	loadCourseList();
	$("#courseTypeNameSpan").text(courseTypeNameSpan);
	showcategory();
}
//加载更多按钮，加载课程
function loadCourseList(){
	$.ajax({
      	type:"POST",
      	url:basePath + "/course/queryCourse",
      	data:{limit: 5, page: $("#pageNum").val(), courseTypeId: courseTypeVal_, name: courseNameVal_},
      	dataType: "json",
      	success: function(msg){
  			var str = '';
      		$.each(msg.data, function(i, dom){
      			str += '<a href="javascript:;" class="normal_grid flex0_1"><div class="normal_grid_a flex_g0">' + 
      				'<div class="img-box flex_g0"><div class="img"><img src="'+basePath+'/uploadFiles/'+dom.image+'" style="width:100%;height:100%;"></div>' +
	      			'<div class="learned">已报名</div><i class="ico_common "></i></div></div><div class="flex-al1 flex10"><div>' +
	      			'<div class="grid_title2" onclick="jump(1)">'+dom.name+'</div><div class="grid_info flex0">' +
	      			'<span class="price flex_g0 index_price_lesson ios-system">¥'+dom.price+'</span><span class="mar5 ios-system">|</span>' +
	      			'<span class="index_section_number">26节</span></div></div></div></a>';
      		});
      		$("#lesson-list1").append(str);
      		if(msg.data==null || msg.data.length==0){
      			$("#btn_Page").hide();
      			$("#btn_Finish").show();
      		}
      		$("#pageNum").val(parseInt($("#pageNum").val())+1);
      	}
  	});
}

function showCourseType(courseId){
	$.ajax({
      	type:"POST",
      	url:basePath + "/course/queryCourseType",
      	data:{parentId: courseId},
      	dataType: "json",
      	success: function(msg){
  			var str = '';
      		$.each(msg.data, function(i, dom){
      			if(i==0){
      				str += '<a href="javascript:clickShowCourseList('+dom.id+',\''+dom.name+'\')"><li class="nav_menu_item nav_menu_item_selected"><img class="nav_menu_item-icon" src="'+basePath+'/image/attachment/images/10/2019/04/a20SUUTjbRob8rZKJxh7k75s2frBgJ.png">'+dom.name+'</li></a>';
          		}else{
          			str += '<a href="javascript:clickShowCourseList('+dom.id+',\''+dom.name+'\')"><li class="nav_menu_item"><img class="nav_menu_item-icon" src="'+basePath+'/image/attachment/images/10/2019/04/a20SUUTjbRob8rZKJxh7k75s2frBgJ.png">'+dom.name+'</li></a>';
      			}
      		});
      		$("#courseTypeDiv").html(str);
      	}
  	});
	$("#courseTypeA-"+courseId).addClass('nav_menu_item_selected').siblings().removeClass('nav_menu_item_selected');
}

function queryCourseTypeByParentIdNotNull(){
	$.ajax({
      	type:"POST",
      	url:basePath + "/course/queryCourseTypeByParentIdNotNull",
      	data:{parentId: $("#courseTypeId").val()},
      	dataType: "json",
      	success: function(msg){
  			var str = '';
      		$.each(msg, function(i, dom){
      			if(i==0){
      				str += '<a href="javascript:clickShowCourseList('+dom.id+',\''+dom.name+'\')"><li class="nav_menu_item nav_menu_item_selected"><img class="nav_menu_item-icon" src="'+basePath+'/image/attachment/images/10/2019/04/a20SUUTjbRob8rZKJxh7k75s2frBgJ.png">'+dom.name+'</li></a>';
          		}else{
          			str += '<a href="javascript:clickShowCourseList('+dom.id+',\''+dom.name+'\')"><li class="nav_menu_item"><img class="nav_menu_item-icon" src="'+basePath+'/image/attachment/images/10/2019/04/a20SUUTjbRob8rZKJxh7k75s2frBgJ.png">'+dom.name+'</li></a>';
      			}
      		});
      		$("#courseTypeDiv").html(str);
      	}
  	});
	$("#courseTypeA-0").addClass('nav_menu_item_selected').siblings().removeClass('nav_menu_item_selected');
}

//排序div显示隐藏
function showsort() {
	if($("#showsortVal").val()=="0"){
		$(".sort_list_grid").removeClass("hidden");
		$("#showsortVal").val("1");
	}else{
		closesort();
	}
	$(".nav").hide();
	$(".nav_mask").hide();
}
function closesort() {
	$(".sort_list_grid").addClass("hidden");
	$("#showsortVal").val("0");
}

/* 课程分类 */
function showcategory() {
	if($("#showcategoryVal").val()=="0"){
		$(".nav").show();
		$(".nav_mask").show();
		$("#showcategoryVal").val("1");
	}else{
		$(".nav").hide();
		$(".nav_mask").hide();
		$("#showcategoryVal").val("0");
	}
	closesort();
}
$(".nav_mask").on("click", function() {
	$(".nav").hide();
	$(".nav_mask").hide();
	$("#showcategoryVal").val("0");
});