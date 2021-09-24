<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@font-face { 
    font-family: 'ONE-Mobile-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/ONE-Mobile-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
*{
	font-family: 'ONE-Mobile-Regular', cursive;
}
</style>
<link rel="stylesheet" href="../resources/css/movieInfo.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<!-- bootstrap table 가져오기 -->
<script
	src="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table.min.js"></script>

</head>
<body>

	<div id="info_wrap">

		<input type="hidden" id="mvCd" value="${dto.movieCd }">
		<div id="info_title">
			<div class="bg" style="background-image: url('${dto.image}')">
			</div>
			<div class="info_left">
				<h2>${dto.movieNm }</h2>
				<h3 id="mvEn"></h3>
			</div>
			<div class="info_bottom">
				<div class="bottom">
					<p class="subtitle">FilmBox 평점</p>
					<p class="sub">
						8.0 <span>점</span>
					</p>
				</div>
				<div class="bottom">
					<p class="subtitle">박스오피스</p>
					<p class="sub">
						${dto.rank } <span>위</span>
					</p>
				</div>
				<div class="bottom">
					<p class="subtitle">누적관객수</p>
					<p class="sub">
						64,231 <span>명</span>
					</p>
				</div>
			</div>
			<div class="info_right">
				<img alt="영화 포스터" src="${dto.image }">
			</div>
		</div>
		<div class="reserve_screen-type">
			<div class="reserve">
				<input type="button" value="예매하기"
					onclick="location.href='/reservemovie/${dto.movieCd }/${dto.movieNm }'">
			</div>
		</div>


		<ul class="tab_wrap">
			<li class="act first_btn">영화정보</li>
			<li class="second_btn">실관람평 (5,762)</li>
		</ul>
		
		<table id="content" class="table table-hover">
		</table>
		<div class="rgyPostIt">
		
		</div>
		

		<div class="review_wrap">
			<p>
				총 <b>1,256</b>건의 관람평이 있습니다.
			</p>
			<div class="line"></div>
			<ul class="review">
				<li>
					<div class="user_info">
						<span class="userName"> Film Box </span>
					</div>
					<div class="review_info">
						${dto.movieNm } 을/를 재밌게 관람하셨나요? 관람평을 남기시면 <strong>500P</strong>가
						적립됩니다. <strong id="review_window">관람평 쓰기</strong>
					</div>
				</li>
				<li>
					<div class="user_info">
						<span class="userName">이*름</span> <span><img alt="star"
							src="../resources/img/star.png"> 8 </span>
					</div>
					<div class="review_info">재밌었어용 ㅎㅎ</div>
				</li>
				<li>
					<div class="user_info">
						<span class="userName">이*름</span> <span><img alt="star"
							src="../resources/img/star.png"> 8 </span>
					</div>
					<div class="review_info">재밌었어용 ㅎㅎ ㄴㄴㄴ</div>
				</li>
				<li>
					<div class="user_info">
						<span class="userName">이*름</span> <span><img alt="star"
							src="../resources/img/star.png"> 8 </span>
					</div>
					<div class="review_info">재밌었어용</div>
				</li>
			</ul>
		</div>
		
		<!-- 댓글 작성 창 -->
		<form id="review_write">
			<header class="window_top">
				<h5>관람평 작성 </h5>
			</header>
			<div class="score">
				<h2 class="tit">${dto.movieNm }</h2>
				    <p><b class="star"> 0 </b> 점</p>
				    <fieldset>
				     	<input type="radio" name="rating" value="10" id="rate1"><label for="rate1">⭐</label>
				        <input type="radio" name="rating" value="9" id="rate2"><label for="rate2">⭐</label>
				        <input type="radio" name="rating" value="8" id="rate3"><label for="rate3">⭐</label>
				        <input type="radio" name="rating" value="7" id="rate4"><label for="rate4">⭐</label>
				        <input type="radio" name="rating" value="6" id="rate5"><label for="rate5">⭐</label>
				        <input type="radio" name="rating" value="5" id="rate6"><label for="rate6">⭐</label>
				        <input type="radio" name="rating" value="4" id="rate7"><label for="rate7">⭐</label>
				        <input type="radio" name="rating" value="3" id="rate8"><label for="rate8">⭐</label>
				        <input type="radio" name="rating" value="2" id="rate9"><label for="rate9">⭐</label>
				        <input type="radio" name="rating" value="1" id="rate10"><label for="rate10">⭐</label>
				    </fieldset>
				    <br>
				<textarea id="reviewContent" name="reviewContent" rows="5" cols="50" placeholder="관람평을 남겨주세요. 스포 및 비방글은 무통보 삭제조치를 받을 수 있습니다."></textarea>
				<br>
				<input type="reset" id="reset" value="취소">
				<input type="submit" value="등록">
			</div>
		</form>

	</div>
	<script src="../resources/js/movieInfo.js"></script>
</body>
</html>