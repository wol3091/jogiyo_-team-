<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function move1(a,b,c,d) {
		var url = "../choice/reviewWriteForm.do?ceo_seq="+a+"&logtime="+b+"&food="+c+"&realSeq="+d;
		var encodedUrl = encodeURI(url);
		$(location).attr('href', encodedUrl);
	}
	function move2(a) {
		var url = "../choice/sectionview.do?ceo_seq2="+a;
		var encodedUrl = encodeURI(url);
		$(location).attr('href', encodedUrl);
	}
</script>
<style type="text/css">
.container {
	text-align: center;
}
table {
	border-collapse: collapse;
	border-top: 1px solid #bebebe; 
}
th, td {
	border-bottom: 1px solid #bebebe;
	text-align: center;
	padding: 5px 0;
}
.logo {
	width: 130px;
	height: 60px;
	background-position: center;
}
</style>
</head>
<body>
<div class="container">
	<img class="logo" alt="로고" src="../image/logo-jogiyo.png">
	<div style="width: 1000px; margin: auto; margin-top: 50px;">
		<div style="text-align: center;  height:50px;  background: red; color: white;
		font-size: 1.5em; padding-top: 10px; border-radius: 3px;">
			${memName}님의 주문 리스트
		</div>
		<table style="width: 100%; border-collapse: collapse; " >
			<tr>
				<th style="min-width: 100px;">날짜</th>
				<th style="min-width: 100px;">음식점</th>
				<th style="min-width: 100px;">메뉴</th>
				<th style="min-width: 100px;">가격</th>
				<th style="min-width: 100px;" colspan="1">리뷰</th>
			</tr>
			
			<c:forEach var="owner_orderlist" items="${real_list}">
			<tr>
				<td>${owner_orderlist.logtime}</td>
				<td>${owner_orderlist.ceo_seq}</td>
				<td>${owner_orderlist.food}</td>
				<td>${owner_orderlist.total_price}원</td>
				<td>
				<c:if test="${owner_orderlist.review == 'n'}">
					<button onclick="move1('${owner_orderlist.ceo_seq}','${owner_orderlist.logtime}','${owner_orderlist.food}','${owner_orderlist.delivery_region}');">리뷰 작성</button>
				</c:if>
				<c:if test="${owner_orderlist.review == 'y'}">
					<button disabled>작성 완료</button>
				</c:if>
				</td>
			</tr>
			</c:forEach>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td style="text-align: center;">
					총 주문 금액 : ${total_price}원
				</td>
				<td colspan="1"></td>
			</tr>
		</table>
	</div>
	<br><br>
</div>

</body>
</html>