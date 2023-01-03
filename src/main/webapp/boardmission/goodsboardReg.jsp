<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my jsp file</title>
</head>
<body>
<h3>goodsboardReg.jsp</h3>
<form action="goodsboardRegPro.jsp" method="post">
	<dl>
		<dt>상품명</dt>
		<dt>
			<input type="text" name="gname" />
		</dt>
	</dl>
	<dl>
		<dt>첨부파일</dt>
		<dt>
			<input type="file" name="txtfile" />
		</dt>
	</dl>
	<dl>
		<dt>상품간략소개</dt>
		<dt>
			<textarea name="gdescribe" id="txtdescribe" class="txtdescribe"></textarea>
		</dt>
	</dl>
	<dl>
		<dt>상품가격</dt>
		<dt>
			<input type="text" name="gprice" />
		</dt>
	</dl>
	<input type="submit" value="save" />
	<input type="button" value="cancel" class="cancel" />

</form>

</body>
</html>