<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my jsp file</title>
<link rel="stylesheet" href="../css/join_style.css" />
</head>
<body>
<script>
function checkValue() {
	inputForm=eval("document.logininfo");
	if (!inputForm.id.value) {
		alert("아이디없음");
		return false;
	}
	if (!inputForm.password.value) {
		alert("패스워드없음없음");
		return false;
	}
//return true;	
}
/* 자바스크립트 form 태그의 데이터 전송을 막는 방법으로 onsubmit이벤트를 활용
return false이면 action이 진행하지 않음
기본값은 return true임 */

function goJoinForm() {
	location.href="../joinus/join.jsp";
}

</script>


<h3>loginForm.jsp</h3>
<div id="wrap">
	<form action="loginproc.jsp" method="post" name="logininfo"
	onsubmit="return checkValue();">
		<img src="../img/welcome.jpg" id="wel_img" alt="welcome" />
		<br /><br />
		<table>
			<tr>
				<td bgcolor="skyblue" colspan="2">L O G I N</td>
			</tr>
			<tr>
				<td bgcolor="skyblue">아이디</td>
				<td>
					<input type="text" name="id" maxlength="50" />
				</td>
			</tr>
			<tr>
				<td bgcolor="skyblue">비밀번호</td>
				<td>
					<input type="password" name="password" maxlength="50" />
				</td>
			</tr>
		</table>
		<br />
		<input type="submit" value="login" />
		<input type="button" value="join" onclick="goJoinForm();" />
	</form>
	<%
	//msg를 받아 구분
	String mymsg=request.getParameter("msg");
	if(mymsg!=null && mymsg.equals("0")){
		out.print("<br>");
		out.print("<font color='red' size='2'>비밀번호확인</font>");
		
	}else if(mymsg!=null && mymsg.equals("-1")){
		out.print("<br>");
		out.print("<font color='red' size='2'>아이디확인</font>");
	}
	%>

</div>

</body>
</html>