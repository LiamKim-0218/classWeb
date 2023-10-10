<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.Date"
    pageEncoding="UTF-8"%>
<%-- fmt : format, 언어 형식 --%>
<%-- JSTL => c, fmt, sql, x(XML), fn(function) --%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>원하는 언어로 즉각적인 적용</title>
</head>
<body>
	<fmt:setLocale value="en_US" />
	<%--
	<fmt:setLocale value="en_US" />
	<fmt:setLocale value="ja_JP" />
	<fmt:setLocale value="zh_CN" />
	--%>
	<div id="Locale" data-locale="ko_KR">
		<div id="name" data-name="test_ko.name"></div>
	
	</div>
	<%-- 파일의 위치는 WEB-INF/classes/student.properties --%>
	<%-- 파일의 위치는 WEB-INF/classes/student_ko.properties --%>
	<%-- 파일의 위치는 WEB-INF/classes/student_en.properties --%>
	<fmt:bundle basename="student">
		<fmt:message key="student.name" /><br />
		<fmt:message key="student.className" /><br />
	</fmt:bundle>
	<fmt:setLocale value="ko_KR" />
	<fmt:setBundle basename="student"/>
	<fmt:message key="student.name" /><br />
	<fmt:message key="student.className" /><br />
	<%-- l18n --%>
	<fmt:formatNumber value="1000" type="number" var="won" />
	${won }	<br />
	<fmt:formatNumber value="1000" type="currency" currencySymbol="\\"  groupingUsed= "true"/><br />
	<%-- groupingUsed = 단위별로 끊어줄것이냐 --%>
	
	<c:set var="now" value="<%=new Date() %>"/>
	<%--java.util.Date --%>
	${now }<br />
	<fmt:formatDate 
			value="${now }"
			type="both"
			pattern="YYYY / MM / dd- hh : ss"
		/>
	<fmt:timeZone value="America/New York">
		<fmt:formatDate
			value="${now }"
			type="time"
			dateStyle="full"
			timeStyle="short"
		/><br />
		<fmt:formatDate 
			value="${now }"
			type="both"
			pattern="YYYY / MM / dd- hh : ss"
		/>
	</fmt:timeZone>
	
</body>
</html>