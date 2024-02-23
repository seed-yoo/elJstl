<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el-jstl</h1>
	<h2>el</h2>
	<h3>request.attribute 값 사용</h3>
	
	<h4>스크립틀릿 사용</h4>
	<%@ page import="com.javaex.vo.UserVo" %>
	<%
		UserVo userVo= (UserVo)request.getAttribute("userVo");
		int i = (int)request.getAttribute("num");
		String str = (String)request.getAttribute("str");
	%>
	
	no=<%= userVo.getNo() %>	<br>
	name=<%= userVo.getName() %>	<br>
	email=<%= userVo.getEmail() %>	<br>
	password=<%= userVo.getPassword() %>	<br>
	gender=<%= userVo.getGender() %>	<br>
	<br>
	i=<%= i %>	<br>
	<br>
	str=<%= str %>	<br>
	
	
	<h4>el 사용</h4><!-- getter로 작동한다 -->
	no= ${ userVo.no }	<br>	<!-- userVo.getNo() -->
	name= ${ userVo.name }	<br>
	email= ${ requestScope.userVo.email }	<br>
	password= ${ requestScope.userVo.password }	<br>
	gender= ${ requestScope.userVo.gender }	<br>
	<br>
	i = ${ requestScope.num }<br>
	<br>
	str = ${ requestScope.str }<br>
	<br>
	
	
	
	
	
	
	
	
	
	
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	
</body>
</html>