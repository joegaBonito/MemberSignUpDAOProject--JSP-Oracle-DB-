<%@page import="java.sql.Timestamp"%>
<%@page import="com.javadao.ex.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="dto" class="com.javadao.ex.MemberDTO"/>
<jsp:setProperty name="dto" property="*" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
		dto.setrDate(new Timestamp(System.currentTimeMillis()));
		MemberDAO dao = MemberDAO.getInstance();
		if(dao.confirmid(dto.getId()) == MemberDAO.MEMBER_EXISTENT) {
%>
		<script language="javascript">
			alert("ID already Exists");
			history.back();
		</script>
<%
		} else {
			int ri = dao.insertMember(dto);
			if(ri == MemberDAO.MEMBER_JOIN_SUCCESS) {
				session.setAttribute("id", dto.getId());
%>
			<script language="javascript">
				alert("Successfully signed up");
				document.location.href="login.jsp";
			</script>
<%
			} else {
%>
			<script language="javascript">
				alert("Failed to sign up.");
				document.location.href="login.jsp";
			</script>
<%
			}
		}
%>
</body>
</html>