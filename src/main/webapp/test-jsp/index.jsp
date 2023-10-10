<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="javax.servlet.RequestDispatcher"
    errorPage="../c231006/exception.jsp"
    pageEncoding="UTF-8"%>
    
<%!
// 선언문 
	String hobby = "음악듣기";
	public String getHobby(){return hobby;}
	//class내에서는 메서드 호출 불가능 ex) gethobby(); 호출 불가
%>    
    
<%
	// 스크립트릿
	String name = "송성민";
	getHobby();
	String age = request.getParameter("age");
	Cookie cookie = new Cookie("test","18643");
	response.addCookie(cookie);
	application.setAttribute("servletContext","입니다.");
	session.setAttribute("session","입니다~.");
	
	request.setAttribute("num", 3);
	request.setAttribute("name", "김남균");
	request.setAttribute("hobby", "음악듣기");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여기가 찐 테스트</title>
</head>
<body>
	<%@ include file="./table.jsp" %>
	<%=name + "입니다." %>
	<%=Integer.parseInt(age) + 10 %>
	
	<%=session.getAttribute("session") %>
	<div></div>
	<%-- 표현식 --%>
	<%! String test = "test"; %>
	<%-- 되기는 하는데 컨벤션(개발자들의 규칙)상으로 맞지않다. --%>
	<%
		for(int i = 0; i < 10; i++){
			out.write(i + "아웃 테스트");
	%>
		<div><%=i %></div>
	<%
		}
	%>
	<%--
	request.setAttribute("num", 3);
	request.setAttribute("name", "김남균");
	request.setAttribute("hobby", "음악듣기");
	RequestDispatcher dispatch = request.getRequestDispatcher("./table.jsp");
	dispatch.forward(request,response);
	--%>
</body>
</html>