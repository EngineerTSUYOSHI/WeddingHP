<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User,model.Register,dao.RegisterDAO,java.util.List" %>
<%

List<Register> registerList = (List<Register>)request.getAttribute("registerList");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>結婚式招待状</title>
</head>
<body>
<p>参列者リスト</p>

<table border="1">
	<tr>
		<th>名前</th>
		<th>カナ</th>
		<th>メールアドレス</th>
		<th>電話番号</th>
		<th>メッセージ</th>
	</tr>

	<% for(Register register : registerList){ %>
		<tr>
		<p>
			<td><%= register.getName() %></td>
		 	<td><%= register.getKanaName() %></td>
			<td><%= register.getAddress() %></td>
			<td><%= register.getTel() %></td>
			<td><%= register.getMessage() %></td>
		</p>	
		</tr>
	<% } %>
</table>
<a href="/test0204/">TOPへ</a>
</body>
</html>