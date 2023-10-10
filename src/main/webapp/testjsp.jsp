<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 앞뒤에 %가 들어가는게 기본형식, @는 태그명으로 사용 -->
    <!-- 위와 같은 것들을 디렉티브 태그라고 얘기한다. -->

<%--
	JSP에서의 주석(Java로 컴파일할때도 들어오지않는다.
	디렉티브 태그
		페이지 디렉티브 태그
			Java에서 사용하는 페이지를 설정하는 정보를 갖고있다.
			language = JSP에서 사용하는 언어
			contentType = 페이지 출력 형식
			session = 세션 사용 여부, true
			pageEncoding = 페이지에서 사용하는 언어 형식
			import = 다른 패키지에서 클래스 등을 가져옴
			errorPage, isErrorPage
			
		인클루드 디렉티브 태그
		태그라이브 디렉티브 태그
		
 --%>
    
<%
	String str = "Java를 입력했어요"; // Java코드를 입력하는걸로 사용한다.
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 테스트</title>
</head>
<body>
	여기에 입력하면 페이지에 뜬데
</body>
</html>