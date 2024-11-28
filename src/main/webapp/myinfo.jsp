<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 로그인 정보 확인</title>
</head>
<body>
	<%
		String validMem = (String) session.getAttribute("validMem");  
		// getAttribute object 로 반환 해서 반드시 String 으로 형변환이 필요
		
		String sessionId = (String) session.getAttribute("sessionId");  
		
		if (validMem != null) {  // 로그인 중인 상태
			out.println(sessionId+"님 로그인 중입니다.");
		
			Enumeration enuSession = session.getAttributeNames();
			
			while (enuSession.hasMoreElements()) {
				String sessionName = enuSession.nextElement().toString();  // 세션 속성들의 이름
				System.out.println(sessionName);
				String sessionValue = (String) session.getAttribute(sessionName);  // 세션 속성들의 값
				System.out.println(sessionValue);
			}
			
		} else {  // 로그인하지 않은 상태
			response.sendRedirect("login.jsp");
		}
	
	%>
	<br><br>
	<a href="logout.jsp">로그아웃</a><br><br>
	<a href="sessionTime.jsp">세션의 유효시간 보기</a>
</body>
</html>