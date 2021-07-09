<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>

<%

	request.setCharacterEncoding("UTF-8");
	
	GuestbookDao guestDao = new GuestbookDao();
	
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");

	GuestbookVo guestVo = new GuestbookVo(name, password, content);
	
	guestDao.guestInsert(guestVo);
	
	response.sendRedirect("./addList.jsp");	//리다이렉트 시키면 이 밑에 html필요없음 지워도 됨.
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GuestBooke</title>
</head>
<body>

</body>
</html>