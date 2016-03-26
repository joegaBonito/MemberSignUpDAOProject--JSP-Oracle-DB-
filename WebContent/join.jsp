<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script language="JavaScript" src="members.js"></script>
</head>
<body>
	<form action="joinOk.jsp" method="post" name="reg_frm" >
		ID: <input type="text" name="id" size="20"> <br/>
		PW: <input type="password" name="pw" size="20"> <br/>
		PW check: <input type="password" name="pw_check" size="20"> <br/>
		Name: <input type="text" name="name" size="20"><br/>
		eMail: <input type="text" name="eMail" size="20"><br/>
		Address: <input type="text" name="address" size="50"><br/>
		<input type="button" value="sign up" onclick="infoConfirm()">&nbsp;&nbsp;&nbsp; <input type="reset" value="cancel" onclick="javascript:window.location='login.jsp'">
	</form>
</body>
</html>