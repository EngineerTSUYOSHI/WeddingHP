<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="model.User" %>
<%
User loginUser = (User)session.getAttribute("loginUser");
%>
<html>
<head>
<meta charset="UTF-8">
<title>結婚式招待状</title>
</head>
<body>
<h1>招待者専用ページ</h1>
<% if(loginUser != null) { %>
	<p>ようこそ,<%= loginUser.getName() %>様</p>
	<a href="/test0204/Main">参加者を見る</a><br>
	<a href="/test0204/">TOPへ</a>
<% }else{ %>　<!-- セションにインスタンスがない場合 -->
	<p>ログインに失敗しました</p>
	<a href="/test0204/">TOPへ</a>
<% } %>


</body>
</html>