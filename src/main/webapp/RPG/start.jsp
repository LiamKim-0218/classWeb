<%--
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="./styles/start.css" rel="stylesheet" type="text/css"><head>
<meta charset="UTF-8">
<title>게임 시작 화면</title>
</head>
<body>


	<div>


		
	</div>

</body>
</html>

--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>RPG 게임 - 시작 화면</title>
    <link href="./styles/start.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div class="container">
        <h1>RPG 게임</h1>
        <div class="options">
            <h2>로그인 또는 회원가입</h2>
            <form action="login" method="post"> 
                <label for="username">사용자 이름:</label>
                <input type="text" id="username" name="username" required>
                <br>
                <label for="password">비밀번호:</label>
                <input type="password" id="password" name="password" required>
                <br>
                <input type="submit" value="로그인">
            </form>
            <p>아직 계정이 없으신가요? <a href="register.jsp">회원가입</a></p>
        </div>
        <div class="start-button">
            <a href="game.jsp">게임 시작</a>
        </div>
    </div>
</body>
</html>


