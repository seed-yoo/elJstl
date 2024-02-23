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
	<h3>연산자</h3>
	
	<h4>산술연산자</h4>
	\${5+2} --> ${5+2}	<!-- ${5} + ${2} --> <br>
	\${5-2} --> ${5-2}	<br>
	\${5*2} --> ${5*2}	<br>
	<br>
	\${5/2} --> ${5/2}	<br>
	\${5 div 2} --> ${5 div 2}	<br>	<!-- 빨간줄은 오류 아님 (정상) -->
	<br>
	\${5%2} --> ${5%2}	<br>
	\${5 mod 2} --> ${5 mod 2}	<br>
	<br>
	
	<h4>관계연산자</h4>
	\${5>2}	--> ${5>2}	<br>
	\${5 gt 2}	--> ${5 gt 2}	<br>
	<br>
	\${5<2}	--> ${5<2}	<br>
	\${5 lt 2}	--> ${5 lt 2}	<br>
	<br>
	\${5>=2}	--> ${5>=2}	<br>
	\${5 ge 2}	--> ${5 ge 2}	<br>
	<br>
	\${5<=2}	--> ${5<=2}	<br>
	\${5 le 2}	--> ${5 le 2}	<br>
	<br>
	\${5==2}	--> ${5==2}	<br>
	\${5 eq 2}	--> ${5 eq 2}	<br>
	<br>
	\${5!=2}	--> ${5!=2}	<br>
	\${5 ne 2}	--> ${5 ne 2}	<br>	<!-- 빨간줄은 오류 아님 (정상) -->
	<br>
	
	<h4>삼항연산자</h4>
	\${ 5>=2 ? 5 : 2 } --> ${ 5>=2 ? 5 : 2 }	<br>
	\${ 5<=2 ? 5 : 2 } --> ${ 5<=2 ? 5 : 2 }	<br>
	<br>
	
	<h4>논리연산자</h4>
	<!-- true && true = true	(&& and) -->
	\${ (5>2)&&(2<10) } --> ${ (5>2)&&(2<10) }	<br>
	
	<!-- true && false = false	(&& and) -->
	\${ (5>2)&&(2>10) } --> ${ (5>2)&&(2>10) }	<br>
	
	<!-- true || false = true 	(|| or) -->
	\${ (5>2)||(2>10) } --> ${ (5>2)||(2>10) }	<br>
	
	<!-- !true -->
	\${ !(5>2) } --> ${ !(5>2) }	<br>
	<br>
	
	<h4>null검사</h4>
	\${str} --> ${str}	<br>
	\${str == null}  --> ${str == null}	<br>
	\${empty str}  --> ${empty str}	<br>
	\${empty reqVal}  --> ${empty reqVal}	<br>
	\${reqVal}  --> ${reqVal}	<br>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>