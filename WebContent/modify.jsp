<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.javadao.ex.MemberDAO" %>
<%@ page import="com.javadao.ex.MemberDTO" %>
    <%
    	String id= (String)session.getAttribute("id");
    	MemberDAO dao = MemberDAO.getInstance();
    	MemberDTO dto = dao.getMember(id);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="modifyOk.jsp" method="post" name="reg_frm">
		ID: <%=dto.getId() %><br/>
		PW: <input type="password" name="pw" size="20"><br/>
		PW Check: <input type="password" name="pw_check" size="20"><br/>
		Name: <%=dto.getName() %> <br/>
		e-Mail: <input type="text" name="eMail" size="20" value="<%=dto.geteMail() %>"><br/>
		Address: <input type="text" name="address" size="50" value="<%=dto.getAddress() %>"><br/>
		<input type="button" value="modify" onclick="updateInfoConfirm()">&nbsp;&nbsp;&nbsp; <input type="reset" value="cancel" onclick="javascript:window.location='login.jsp'">
	</form>
</body>
</html>