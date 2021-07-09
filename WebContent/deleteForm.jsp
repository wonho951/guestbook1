<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import="com.javaex.vo.GuestbookVo" %>


<%
	request.setCharacterEncoding("UTF-8");	//post일때 한글 깨지는 경우 이거 해줌.
	
	
	String guest = request.getParameter("no");	//String guest보다는 no로 명명 해주는게 좋음.
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GuestBook-deleteForm</title>
</head>
<body>

	<form action="./delete.jsp" method="post">	<!--  숨겨야 하니 post로 바꿈 확인시에는 get-->
		비밀번호:<input type="password" name="password"> 
		<button type="submit">확인</button>
		<input type="hidden" name = "no" value="<%=guest  %>">	<!-- 그나마 여기서 name값이 no라서 다행이지 아니었음 망함 ㅇㅋ? -->
	</form>
	<a href="./addList.jsp">메인으로 돌아가기</a>
	
	
</body>
</html>