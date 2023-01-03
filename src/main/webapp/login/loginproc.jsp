<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%
String id=request.getParameter("id");
String password=request.getParameter("password");

//db접속
String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";

Class.forName(driver);
Connection conn=DriverManager.getConnection(url,user,pw);
//접속성공상태

String sql="select id,pwd from nmember where id=?";
		
PreparedStatement pstmt=conn.prepareStatement(sql);
pstmt.setString(1, id);

ResultSet rs=pstmt.executeQuery();
//rs.next();
//System.out.println("id:"+rs.getString("id")+":: pwd:"+rs.getString(2));

//아이디 비번 일치판정
String ypass="";
int x=-1;
String msg="";

if(rs.next()){ //아이디는 존재
	ypass=rs.getString("pwd");
	if(ypass.equals(password)) //패스일치
		x=1;
	else //패스불일치
		x=0;
}else{ //아이디 존재없음
	x=-1;
}
System.out.println("x value:"+x);
//x값으로 전송위치를 결정
if(x==1){
	//로그인성공 세션에 저장 index.jsp로
	session.setAttribute("sessionID", id);
	msg="../index.jsp";
	
}else if(x==0){
	msg="loginForm.jsp?msg=0";
	
}else{
	msg="loginForm.jsp?msg=-1";
}
response.sendRedirect(msg);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my jsp file</title>
</head>
<body>
<h3>loginproc.jsp</h3>

</body>
</html>