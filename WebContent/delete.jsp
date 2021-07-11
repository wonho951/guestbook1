<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>
<%@page import="java.util.List" %>


<%
	request.setCharacterEncoding("UTF-8");
	GuestbookDao GuestDao = new GuestbookDao();	//여러번 사용할 수도 있으니 위에서 선언
	
	
	int no = Integer.parseInt(request.getParameter("no"));
	String pw = request.getParameter("password");
	
	System.out.println(no);
	GuestbookVo guestVo = new GuestbookVo(no,pw);
	
	GuestDao.guestDelete(guestVo);
	
	response.sendRedirect("./addList.jsp");
	
	
	
	/* 좋지 않은 방법.
		모든 리스트를 불러온 다음 no하나만 가져와서 지우긴 하지만 
		비효율적임. 극단적으로 생각했을때 메모리의 용량도 용량이고
		속도 면에서도 불리함.
	GuestbookVo gVo = new GuestbookVo();  
	
	List<GuestbookVo> guestList = GuestDao.getguestList();
	int no = Integer.parseInt(request.getParameter("no"));
	String pw = request.getParameter("password");
	
 	for(int i=0; i<guestList.size(); i++){
 		if(guestList.get(i).getNo() == no &&  guestList.get(i).getPassword().equals(pw)){
 			GuestDao.guestDelete(no);
 		}
 	}
	*/
	
%>  
  
<!-- 밑에 html문은 필요없으니 과감하게 지워도 됨. -->
