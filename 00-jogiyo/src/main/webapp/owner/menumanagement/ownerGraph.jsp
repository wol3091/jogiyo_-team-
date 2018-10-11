<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-
BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-
rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-
Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript">
$(document).ready(function() { 
	change1();
});

function change1() { 
	$('.div2').hide();
	$('.div1').show();
}


function change2() { 
	$('.div1').hide();
	$('.div2').show();
}







google.charts.load('current', {'packages':['line']});
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart1)
google.charts.setOnLoadCallback(drawChart);

function drawChart() {

var data = new google.visualization.DataTable();
data.addColumn('string', '날짜');
data.addColumn('number', '매출');

data.addRows([
	['${day_s[11]}',  ${day_pofit[11] }],
	  ['${day_s[10]}',  ${day_pofit[10] }],
	  ['${day_s[9]}',  ${day_pofit[9] }],
	  ['${day_s[8]}',  ${day_pofit[8] }],
	  ['${day_s[7]}',  ${day_pofit[7] }],
	  ['${day_s[6]}',  ${day_pofit[6] }],
	  ['${day_s[5]}',  ${day_pofit[5] }],
	  ['${day_s[4]}',  ${day_pofit[4] }],
	  ['${day_s[3]}',  ${day_pofit[3] }],
	  ['${day_s[2]}',  ${day_pofit[2] }],
	  ['${day_s[1]}',  ${day_pofit[1] }],
	  ['${day_s[0]}',  ${day_pofit[0] }],
	  
]);
var options = {
 chart: {
   title: '조기요',
   subtitle: '가게 일 매출(원래 월)'
 },
 width: 900,
 height: 500,
 axes: {
   x: {
     0: {side: 'bottom'}
   }
 }
};

var chart = new google.charts.Line(document.getElementById('line_top_x'));

chart.draw(data, google.charts.Line.convertOptions(options));
} 

function drawChart1() {

 var data = google.visualization.arrayToDataTable([
 
 	['Task', 'Hours per Day'],
 	<c:forEach var="item" items="${list}">
   ['${item.getFood()}', ${item.getFoodPrice()}],
 </c:forEach>
 ]);

 var options = {
		 chart: {
			   title: '조기요',
			   subtitle: '메뉴별 매출'
			 },
			 width: 900,
			 height: 500,
   
 };

 var chart = new google.visualization.PieChart(document.getElementById('piechart'));

 chart.draw(data, options);
}


 
 
</script>
<style type="text/css">
.main {
   height: 910px;
   overflow:hidden;
}
.main-content {
   width: 1100px;
   height: 100%;
   overflow-y:scroll;
}
.h3{
   text-align: center;
}
p{
   text-align: center;
}
#myTab{
   margin: 0 auto;
}
.font{
color: black;
font-weight: bold;
} 
.container{
   margin: auto;
}
.header{
 padding-bottom: 40px; 
}
.login{
color: white;
font-size:large;
letter-spacing: 2px;
margin-top: 10px;}
.form-control{
margin:10px;
}
.form-signup-heading{
text-shadow: 0.05em 0.05em 0.05em;
color: gray;
}
.body{
background-color: rgba(0,0,0,0.05); 
}
img{
margin-left: 25px; margin-top: 25px;
}
body{
margin:0; padding:0;
}
.basic{
height: 500px;
}
.header_name{
font-family: serif;
font-style: italic;}
.tab-content{
height:1000px;
}
/*btn-block**/
.btn-block{
 margin-left: -160px;
}
/*세션 기본정보 css*/
.tbody_tr{
margin: 0 auto;
height: 80px;
color: gray;
text-align: center;
padding: 100%;
}
.table { vertical-align: middle; }
.td_subName{
font-weight: bold;
height:50px; 
}
.wonsanji{
   font-size: x-small;
   font-weight: lighter;
   text-align: left;
   text-shadow: none;
}
.td2_subName{
   font-family:나눔고딕, NanumGothic, Georgia, Serif;
}
.H/M{
padding: 10px;
margin: 5px;
}
.main_nav{
margin-top:50px;
}
.storeName{
color: gray;
}
</style>
</head>
<body>
<div class="main">
<div class="main-content">
<!-- readme -->
<!-- 24시간 영업 클릭 시 시간선택셀럭트 숨김 기능 필요 -->
<div class="page-header">
  <h2>매출 그래프</h2>
</div>

<div class="nav nav-tabs nav-justified">
<ul class="nav nav-tabs nav-justified" role="tablist" id="myTab">
	<li style="cursor: pointer;" onclick="change1()"><a role="tab" data-toggle="tab" class="font">월별 매출</a></li>
	<li style="cursor: pointer;" onclick="change2()" ><a role="tab" data-toggle="tab" class="font">메뉴별 매출</a></li>
</ul>
<div class="tab-content">
   <div role="tabpanel" class="div1" id="home">
      <div class="basic">
      <br>
   			<div id="line_top_x"></div>
      </div>
   </div>
   
   <div role="tabpanel" class="div2" id="test">
      <div class="basic">
      		<div id="piechart" style="width: 900px; height: 500px;"></div>	
      </div>
   </div>   
</div>
</div>
</div>
</div>
<script>
$(function () {
	$('#myTab a:first').tab('show')
  })
</script>
</body>
</html> 