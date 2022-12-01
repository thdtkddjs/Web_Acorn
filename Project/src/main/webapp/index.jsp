<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/index.jsp</title>
</head>
<body>
	<%if(id!=null){ %>
		<p><%=id %>님 로그인 중...</p>
	<%} %>
	<ul>
		<li><a href="${pageContext.request.contextPath }/users/loginform.jsp">로그인</a></li>
		<%if(id!=null){ %>
			<li><a href="${pageContext.request.contextPath }/users/logout.jsp">로그아웃</a></li>
		<%} %>
		<li><a href="${pageContext.request.contextPath }/users/signup_form.jsp">회원가입</a></li>
		<li><a href="${pageContext.request.contextPath }/books/list.jsp">도서목록</a></li>
		<li><a href="${pageContext.request.contextPath }/books/insertform.jsp">도서추가</a></li>
	</ul>	
</body>
</html>