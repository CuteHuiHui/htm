$("#topnav li").mouseover(function(){
	$(".mydiv").css("left",($(this).width())*$(this).index());
});

function showDiv(){
	if ($(window).width()<=1349) {
		$(".mydiv").css("display", "block");
	}else
	{
		$(".mydiv").css("display", "none");
	}
}

//注销
function loginOut(){
	$.post("admin/out", function(data) {
		if(data){
			location.href="back/login.jsp";
		}
	},"json");
}

init();
function init(){
	var spid = location.href.split("=")[1];
	if(spid != null && spid!=""){
		$.get("special/detail",{"spid":spid},function(data){
			$("#spid").val(data.spid);
			$("#labelid").html(data.spid);
			$("#spname").val(data.spname);
			if(data.language!=null){
				$("#lgname").val(data.language.language);
			}else{
				$("#lgname").val("");
			}
			
			$("#sppicPath").attr("src",(data.sppicPath == "" || data.sppicPath == null) ? "images/not_pic.jpg" : data.sppicPath);
			$("#sppubTime").val(data.sppubTime.substring(0,10));
			$("#spclick").val(data.spclick);
		},"json");
	}
}

function chgPic(obj){
	$("#sppicPath").attr("src",window.URL.createObjectURL(obj.files[0]));
}

