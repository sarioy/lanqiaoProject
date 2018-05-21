<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


	<script type="text/javascript" src="JS/jquery-1.8.3.js"></script>
	<script type="text/javascript">
	
	function  testJson()
	{
		$.getJSON(
				"JSONServlet",
				{"name":"zz",  "age":11},
			function (result){ 
					//js需要通过eval()函数  将返回值 转为一个js能够识别的json对象
				var json = 	eval(result) ;
				$.each( json, function(i,element){
					alert( this.name +"---"+ this.age );
				} );
					
					
			}
		);
		
	}
	
	</script>
	
<title>testJSON</title>
</head>
<body>
		
		<input type="button" value="json" onclick="testJson()" />
		
</body>
</html>