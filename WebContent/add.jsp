<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>

<%

	request.setCharacterEncoding("UTF-8");
	
	GuestbookDao guestDao = new GuestbookDao();	//여러번 쓸수도 있으니 걍 위에서 선언.
	
	
	//addList에서 넘어온 파라미터 담아둠.
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");

	//받아온 파라미터들을 Vo에 있는 생성자에 담아준다.
	GuestbookVo guestVo = new GuestbookVo(name, password, content);
	
	
	//메소드 사용해서 리스트에 추가 시켜줌.
	guestDao.guestInsert(guestVo);
	
	//리다이렉트 시켜서 addList 페이지로 넘어감.
	//리다이렉트로 끝났을때 밑에 html 코드가 있다면 과감하게 지워도 된다.
	response.sendRedirect("./addList.jsp");	
%>
