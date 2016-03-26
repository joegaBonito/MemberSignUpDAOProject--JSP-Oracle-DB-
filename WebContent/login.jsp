<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% if(session.getAttribute("ValidMem") != null) {%>
	<jsp:forward page = "main.jsp"></jsp:forward>
<%} %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="loginOk.jsp" method="post">
		ID: <input type="text" name="id" value="<%if (session.getAttribute("id")!=null) out.println(session.getAttribute("id")); %>" size="10"><br/>
		PW: <input type="password" name="pw"><br/>
		<input type="submit" value="submit"> &nbsp;&nbsp; <input type="button" value="sign up" onclick="javascript:window.location='join.jsp'">
	</form>
</body>
</html>