<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import="com.javaex.vo.GuestbookVo" %>


<%
	request.setCharacterEncoding("UTF-8");	//post일때 한글 깨지는 경우 이거 해줌.
	
	
	String guest = request.getParameter("no");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GuestBook-deleteForm</title>
</head>
<body>

	<form action="./delete.jsp" method="get">
		비밀번호:<input type="password" name="password"> 
		<button type="submit">확인</button>
		<input type="hidden" name = "no" value="<%=guest  %>">
	</form>
	<a href="./addList.jsp">메인으로 돌아가기</a>
	
	
</body>
</html>