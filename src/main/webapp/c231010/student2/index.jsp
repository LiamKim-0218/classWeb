<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.List ,c231006.StudentBean"
    isELIgnored="false"%>
 
<%--
	List students =(ArrayList) request.getAttribute("students");
--%>
<jsp:useBean id="studentsMap" class="java.util.HashMap" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--<%=((StudentBean)
			((List)request.getAttribute("students")).get(0)
		).getName() %><br />--%>
	${students[0].name }<br />
	${students[1].name }<br />	
	${studentsMap[0].name }<br />	
	${studentsMap[1].name }<br />
	${sessionScope.studentsMap.students[0].name }<br />	
	session? Context(application)?
	page => request => session => application(Context, ServletContext)
	<%=request.getContextPath() %><br />
	${pageContext.request.contextPath }<br />
	${requestScope.error }<br />
	<%-- pageScope, requestScope, sessionScope, applicationScope --%>
	<% for(int i = 0; i < 2; ++i){ %>
		<%=i %><br />
	<% } %>
	
</body>
</html>