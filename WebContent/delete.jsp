<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>

<%
	request.setCharacterEncoding("UTF-8");
	GuestbookDao GuestDao = new GuestbookDao();	//여러번 사용할 수도 있으니 위에서 선언
	
	
	int no = Integer.parseInt(request.getParameter("no"));
	String pw = request.getParameter("password");
	
	System.out.println(no);
	GuestbookVo guestVo = new GuestbookVo(no,pw);
	
	GuestDao.guestDelete(guestVo);
	
	
	
		
	
	response.sendRedirect("./addList.jsp");

	
%>  
  
<!-- 밑에 html문은 필요없으니 과감하게 지워도 됨. -->
