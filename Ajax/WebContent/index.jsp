<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<script type="text/javascript" src="JS/jquery-1.8.3.js"></script>
	<script type="text/javascript">
	function register()
	{
		var $name = $("#name").val();
		
		$.getJSON(
				"AjaxServlet",
				{"name":$name},
				function(result)
				{
					if(result.msg=="true")
					{
						alert("一般一般，世界第三！")
					}else
					{
							alert("调皮，回答错误..")	;
					}	
				}
		
		);
		
		/*
		$(tip).load(
				"AjaxServlet",
				"name="+$name,	
				function(result){
					if(result == "true"){
						$("#tip").html("一般一般，世界第三！");
					}else
					{
						$("#tip").html("调皮，回答错误..")	;
					}	
				}
			);
		*/
		
		/*
		$.get(
			"AjaxServlet",
			"name="+$name,	
			function(result){
				if(result == "true"){
					alert("一般一般，世界第三！");
				}else
				{
					alert("调皮，回答错误..")	;
				}	
			}
		);
		*/
		
		/*
		$.ajax({
			url:"AjaxServlet",
			type:"post",
			data:"name="+$name,
			success:function(result)
			{
				if(result=="true")
				{
					alert("一般一般，世界第三！");
				}else
				{
					alert("调皮，回答错误..")	;
				}	
			},
			error:function(){
				alert("系统走丢了...");
			}
		});
		*/
		
		
		
	}
	
	
	</script>

<title>AJAX</title>
</head>
<body>
		<input id="name"/>是超级无敌机智王
		<br/>
		<input type="button" value="确定" onclick="register()" />
		<span id="tip"></span>
</body>
</html>