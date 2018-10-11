<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload=function() {
		alert("리뷰가 작성되었습니다.");
		location.href="../choice/myPage.do";
	}
</script>
</head>
<body>
<c:if test="${su == 0 }">
	<p id="write">회원 가입 실패</p>
</c:if>
<c:if test="${su > 0 }">
	<p id="write">회원 가입 성공</p>
</c:if>
</body>
</html>