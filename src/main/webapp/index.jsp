<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my jsp file</title>
</head>
<body>
<script>
function logoutproc() {
	location.href="login/logoutproc.jsp"
}

</script>

<h1>index.jsp</h1>
<b><font size="3">메인화면입니다</font></b>
<%
if(session.getAttribute("sessionID")==null){ //로그인 안됨
	
}else{ //로그인인상태
%>
	<h3>
		<font color="blue"><%=session.getAttribute("sessionID") %></font>
		님 로그인 성공 반가방가!
	</h3> <br />
	<input type="button" value="logout" onclick="logoutproc();" />
<%
}

%>
<a href="customer/notice.jsp">customer notice</a>

</body>
</html>