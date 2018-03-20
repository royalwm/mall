var E3MALL = {
	checkLogin : function(){
		var _ticket = $.cookie("token");
		if(!_ticket){
			return ;
		}
		$.ajax({
			url : "http://127.0.0.1:8082/user/token/" + _ticket,
			dataType : "jsonp",
			type : "GET",
			success : function(data){
				if(data!=null){
					var username = data.username;
					var html ="<span style='color:red;font-weight:bold'>"+ username+"</span>" + "，欢迎来到百货之家！<a href=\"http://127.0.0.1:8082/user/logout\" class=\"link-logout\">[退出]</a>";
					$("#loginbar").html(html);
				}
			}
		});
	}
}

$(function(){
	// 查看是否已经登录，如果已经登录查询登录信息
	E3MALL.checkLogin();
});