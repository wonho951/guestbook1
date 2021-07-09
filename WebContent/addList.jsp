<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>



<%
	GuestbookDao guestBookDao = new GuestbookDao();
	List<GuestbookVo> guestList = guestBookDao.getguestList();
	//System.out.println(guestList.toString());
	
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GuestBook-addList</title>
</head>
<body>
	<form action = "./add.jsp" method = "get">
		<table border = "1">
			<tr>
				<td>이름</td>
				<td><input type = "text" name = "name"></td>
				<td>비밀번호</td>
				<td><input type = "password" name = "password"></td>
			</tr>
		
			<tr>
				<td colspan = "5"><textarea name = "content"></textarea></td>
			</tr>
			
			<tr>
				<td colspan = "5"><button type = "submit">확인</button></td>
			</tr>
		</table>
	</form>
	<br>
	
	<% for(int i = 0; i < guestList.size(); i++) {%>		
	<table border = "1">
		<tr>
			<td><%= guestList.get(i).getNo() %></td>
			<td><%= guestList.get(i).getName() %></td>
			<td><%= guestList.get(i).getRegDate() %></td>	
			<td><a href="./deleteForm.jsp?no=<%= guestList.get(i).getNo()%>">삭제</a></td>
		</tr>
	
		<tr>
			<td colspan = "4"><%= guestList.get(i).getContent() %></td>
		</tr>
	</table>
	<br>
	
	<%} %>


</body>
</html>