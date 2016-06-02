<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询吉他</title>
</head>
<body>
	<h1 >请输入条件</h1>
	<form method="get"action="SearchGuitarServlet">
		
		<label>制造商：</label><input type="text" name="builder"><br /> 
		<br> 
		<label>模型：&emsp;</label><input type="text" name="model"><br /> 
		<br> 
		<label>类型：&emsp;</label><input type="text" name="type"><br />
		<br>  
		<label>后木：&emsp;</label><input type="text" name="bw"><br />
		<br> 
		<label>上木：&emsp;</label><input type="text" name="tw"><br /> 
		<br> 
		<input type="submit" value="查询">
	</form>
</body>
</html>