<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>

<%
	request.setCharacterEncoding("UTF-8");
	GuestbookDao GuestDao = new GuestbookDao();	//여러번 사용할 수도 있으니 위에서 선언
	GuestbookVo guestVo = new GuestbookVo();
	
	
	int no = Integer.parseInt(request.getParameter("no"));	
	int password = Integer.parseInt(request.getParameter("password"));
	//System.out.println(no);
	
	
	GuestDao.guestDelete(guestVo);

	response.sendRedirect("./addList.jsp");

%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>