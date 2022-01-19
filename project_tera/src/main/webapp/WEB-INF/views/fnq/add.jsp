<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<jsp:include page="../include/header.jsp"></jsp:include>
<link rel="stylesheet" href="../resources/css/notice/notice_add.css">
<link rel="icon" type="image/png"  href="../../resources/img/favicon.png"/>
<link
   href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
   rel="stylesheet">
<script
   src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script>
   $(function() {
	  $('#summernote').summernote();
   })
    </script>
</head>

<body>
	<div class="login_back">
		<div class="inner_case">
		 
			<c:if test="${sessionScope.partner.id==null}">
               <span class="login_start" style="font-weight: 600;font-size: 0.9rem;left:82%">
                    <a href="../../login/">Login</a>
                </span>
            </c:if>
               	<c:if test="${sessionScope.partner.id !=null}">
						<span class="login_start">
						${sessionScope.partner.id}&nbsp;님 환영 합니다
								 |
								<a href="../../logout">로그아웃</a>
						</span>
				</c:if>
		</div>
	</div>
	<div class="manu_back">
		<div class="inner_case">
		<a href="../../"><div class="logo"></div></a>
			<div class="move_menu">
				<a href="../greeting/">회사소개</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="../product1/">제품정보</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="../fnq/">고객지원</a>
			</div>
		</div>
	</div>
	<div class="main_photo_back">
		<div class="main_text_1">ABOUT COMPANY</div>
		<div class="main_text_2">고객지원</div>
	</div>

	<div class="title_1">
		<div class="inner_case">
			<div class="sub_text2">자주 묻는 질문 등록</div>
		</div>
	</div>
	<div class="inner_case" style="padding-bottom: 10rem;">
		<form method="post">
			<div class="form-floating">
				<div class="formName">자주 묻는 질문 제목</div>
				<input type="text" name="fnqName"
					class="form-control" placeholder="자료제목"> <label
					style="padding: 55px 1.25rem;">제목:</label>
			</div>

			<div class="add_info">
				<label>자주 묻는 질문 내용</label>
				<textarea rows="20" cols="113" name="fnqInfo" id="summernote"></textarea>
			</div>
			<input type="hidden" name="id" class="id"
				value="${sessionScope.partner.id}" />
				
			<div class="add_button">
				<button class="end_button">등록</button>
				<a href="." class="back_button">뒤로가기</a>
			</div>
		</form>
	</div>
	<div class="bottom">
		<!--고객센터-->
		<hr class="lhr5">
		<hr class="lhr5_1">
		<div class="inner_case_bottom">
			<div class="bottom_text_1">고객센터</div>
			<div class="bottom_text_2">평일 08:00 ~ 19:30, 토요일,공휴일
				휴무&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;02-1234-5678&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;customer@terametal.co.kr</div>
			<div class="bottom_text_3">
				상호 : (주)테라금속&nbsp;&nbsp;&nbsp; 대표자 : 이재성<br> 주소 : 대전광역시 동구 우암로
				352-21 (주)테라금속 <br>
				<br>사업자 등록번호 : 123-45-6789<br>TEL : 02-1234-5678 Email :
				customer@terametal.co.kr
			</div>
			<div class="bottom_text_4">© Tera Metal Co., Ltd All rights
				reservedv.</div>
		</div>
	</div>

	<jsp:include page="../include/body.jsp"></jsp:include>
</body>

</html>