<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="../include/header.jsp"></jsp:include>
    <link rel="stylesheet" href="../../resources/css/company/company.css">
    <script src="../js/company/division.js"></script>
	<title>TeraMetal</title>
</head>

<body>
    <div class="login_back">
		<div class="inner_case">
		 		<span class="login_start">
				관리자 님 환영 합니다
					 |
					<a href="../../../logout" style="color:white;">로그아웃</a>
			</span>
		</div>
	</div>
    <div class="manu_back">
        <div class="inner_case">
        <a href="../"><div class="logo"></div></a>
            <div class="move_menu">
                <a href="../../greeting/">회사소개</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="../../product1/">제품정보</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="../../notice/">고객지원</a>
            </div>
        </div>
    </div>
    <div class="main_photo_back">
        <div class="main_text_1">ABOUT COMPANY</div>
        <div class="main_text_2">비밀번호 정보 수정</div>
    </div>
    
    <div class="title_1">
        <div class="inner_case">
            <div class="sub_text2">비밀번호 정보 수정</div>
            <div class="sub_text1">(주)테라금속의 <span style="color: #336699; font-weight: 700;">비밀번호 정보 수정</span> 입니다.</div>
        </div>
    </div>
    
	<div class="passwd">
		<div class="inner_case">
			<form method="post" class="input_"><input type="hidden" name="id" value="${item.id}"/>
			아이디: ${item.id} <br/> 원하는 비밀번호: 
			<input type="password" name="passwd"/> <button class="btn btn-sm btn-primary">입력</button>
			</form>
		</div>
	</div>

    <div class="bottom">
        <!--고객센터-->
        <hr class="lhr5">
        <hr class="lhr5_1">
        <div class="inner_case_bottom">
            <div class="bottom_text_1">고객센터</div>
            <div class="bottom_text_2">평일 08:00 ~ 19:30, 토요일,공휴일
                휴무&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;02-1234-5678&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;customer@terametal.co.kr</div>
            <div class="bottom_text_3">상호 : (주)테라금속&nbsp;&nbsp;&nbsp; 대표자 : 이재성<br>
                주소 : 대전광역시 동구 우암로 352-21 (주)테라금속

                <br><br>사업자 등록번호 : 123-45-6789<br>TEL : 02-1234-5678 Email : customer@terametal.co.kr
            </div>
            <div class="bottom_text_4">© Tera Metal Co., Ltd All rights reservedv.</div>
        </div>

    </div>
    <jsp:include page="../include/body.jsp"></jsp:include>
</body>
</html>