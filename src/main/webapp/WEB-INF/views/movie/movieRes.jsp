<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/movieRes.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script >
function mvclick(s) {
	console.log( s + " 버튼을 누르셨습니다.");
}
	
</script>
</head>
<body>
<div class="first">
<div class="mid">
	<div class="date">
<!-- 		<div class="reserve_day">날짜</div> -->
		<div class="reserve_date"></div>
	</div>
	<br>
	
	<!-- 영화 선택 탭 (임시) -->
	<div class="choose_section">
	<div class="movie">
		<div class="movielist_table">영화</div>
		<div class="movielist_wrapper">
		<c:forEach var="item" items="${mlist }">
			<button class="movielist_button">
				<span class="movielist" id="movielist"><c:out value="${item.movieNm }"/></span>
			</button>
		</c:forEach>
		</div>
	</div>
	<!--  -->
	
	<div class="last_section">
	<div class="time">
		<div class="time_table">시간</div>
			<div class="time_wrapper">
				<button class="reserve_button">
					<span class="movietime" id="movietime_1">12:00</span>
				</button>
				<button class="reserve_button">
					<span class="movietime" id="movietime_2">14:00</span>
				</button>
				<button class="reserve_button">
					<span class="movietime" id="movietime_3">16:00</span>
				</button>
				<button class="reserve_button">
					<span class="movietime" id="movietime_4">18:00</span>
				</button>
			</div>
	</div>
	
	<!-- 선택 결과 섹션(임시) -->
	<div class="choose_result_section">
		<img src="http://ojsfile.ohmynews.com/STD_IMG_FILE/2021/0801/IE002846586_STD.jpeg" class="example">
		<div class="choose_result_content">
			<span class="choose_result_title">모가디슈</span>
			<span class="choose_result_date">2021/9/30/목</span>
			<span class="choose_result_time"></span>
		</div>
	<!--  -->
	
			<form class="moveSeatForm" action="/seatchoice" method="post">
				<c:if test=""></c:if>
				<input type="hidden" name="movieNm" value="${dto.movieNm}">
				<input type="hidden" name="movieCd" value="${dto.movieCd}">
				<input type="hidden" class="reserveDate" name="reserveDate"> 
				<input type="hidden" class="screenTime" name="screenTime">
				<button class="moveSeatButton" type="button">좌석 선택</button>
				<!-- <input type="submit" value="좌석선택하기"> -->
			</form>
	</div>
	</div>
</div>
</div>
</div>
	<script src="/resources/js/reserve.js"></script>


</body>
</html>