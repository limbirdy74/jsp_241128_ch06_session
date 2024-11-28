<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");  // utf-8 로 입력 받는 값들을 모두 인코딩. 무조건 할 것
		
		String memberid = request.getParameter("mid");
		String memberpw = request.getParameter("mpw");
		
		session.setAttribute("sessionId", memberid);  // 세션에 아이디 올리기
		
	%>
	
	<%= memberid %> 님 로그인에 성공하였습니다.
</body>
</html>