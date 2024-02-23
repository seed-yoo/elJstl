<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el-jstl</h1>
	<h2>el</h2>
	<h3>반복문</h3>
	
	<h4>스크립틀릿 for문</h4>
	<%@ page import="java.util.List" %>
	<%@ page import="com.javaex.vo.UserVo" %>
	<%
		List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
	%>
	
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
			</tr>
		</thead>
		<tbody>
		
		<%
			for(int i = 0; i<userList.size(); i++){
				
		%>
		
			<tr>
				<td><%= userList.get(i).getNo() %></td>
				<td>1<%= userList.get(i).getName() %></td>
				<td><%= userList.get(i).getEmail() %></td>
				<td><%= userList.get(i).getPassword() %></td>
				<td><%= userList.get(i).getGender() %></td>
			</tr>
			
		<%
			}
		%>
		
			
		</tbody>
	</table>
	<br>
	---------------------------------------------------------------------
	<br>
	
	
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
			</tr>
		</thead>
		<tbody>
		
		<%
			for(UserVo vo : userList){
				
		%>
		
			<tr>
				<td><%= vo.getNo() %></td>
				<td>1<%= vo.getName() %></td>
				<td><%= vo.getEmail() %></td>
				<td><%= vo.getPassword() %></td>
				<td><%= vo.getGender() %></td>
			</tr>
			
		<%
			}
		%>
		
			
		</tbody>
	</table>
	
	
	
	<br>
	---------------------------------------------------------------------
	<br>
	<h4>jstl for문</h4>
	
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
			</tr>
		</thead>
		
		<tbody>
		
			<c:forEach items="${ requestScope.userList }" var="userVo" varStatus="status">
			
				<tr>
					<td>${ userVo.no }</td>
					<td>${ userVo.name }</td>
					<td>${ userVo.email }</td>
					<td>${ userVo.password }</td>
					<td>${ userVo.gender }</td>
				</tr>
				
			</c:forEach>
		
			
		</tbody>
	</table>
	
	
	
	
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>