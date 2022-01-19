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
    <link rel="stylesheet" href="../resources/css/company/patent.css">
    <script src="../js/company/patent.js"></script>
  <script>
  $(function(){
  $("#patent1").click(function(){
    	$("#patent1").removeClass("patent_button_check patent_button_nocheck");
    	$("#patent2").removeClass("patent_button_check patent_button_nocheck");
    	$("#patent3").removeClass("patent_button_check patent_button_nocheck");
    	$("#patent1").addClass("patent_button_check");
    	$("#patent2").addClass("patent_button_nocheck");
    	$("#patent3").addClass("patent_button_nocheck");
    	$(".patent_info_patent1").css("display","block");
    	$(".patent_info_patent2").css("display","none");
    	$(".patent_info_patent3").css("display","none");
    });
    $("#patent2").click(function(){
    	$("#patent1").removeClass("patent_button_check patent_button_nocheck");
    	$("#patent2").removeClass("patent_button_check patent_button_nocheck");
    	$("#patent3").removeClass("patent_button_check patent_button_nocheck");
    	$("#patent1").addClass("patent_button_nocheck");
    	$("#patent2").addClass("patent_button_check");
    	$("#patent3").addClass("patent_button_nocheck");
    	$(".patent_info_patent1").css("display","none");
    	$(".patent_info_patent2").css("display","block");
    	$(".patent_info_patent3").css("display","none");
    });
    $("#patent3").click(function(){
    	$("#patent1").removeClass("patent_button_check patent_button_nocheck");
    	$("#patent2").removeClass("patent_button_check patent_button_nocheck");
    	$("#patent3").removeClass("patent_button_check patent_button_nocheck");
    	$("#patent1").addClass("patent_button_nocheck");
    	$("#patent2").addClass("patent_button_nocheck");
    	$("#patent3").addClass("patent_button_check");
    	$(".patent_info_patent1").css("display","none");
    	$(".patent_info_patent2").css("display","none");
    	$(".patent_info_patent3").css("display","block");
    });
  });
  </script>
	<style>
	.dropdown_sub_1_1{
	display:none;
	background-color:white;
	border:0.5px solid gray;
}.dropdown_sub_1_2{
	display:none;
	background-color:white;
	border:0.5px solid gray;
}.dropdown_sub_1_3{
	display:none;
	background-color:white;
	border:0.5px solid gray;
}.dropdown_sub_1_4{
	display:block;
	background-color:white;
	border:0.5px solid gray;
}.dropdown_sub_1_5{
	display:none;
	background-color:white;
	border:0.5px solid gray;
}
	</style>
	<title>TeraMetal</title>
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
        <a href="../"><div class="logo"></div></a>
            <div class="move_menu">
                <a href=".">회사소개</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="../product1/">제품정보</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="../notice/">고객지원</a>
            </div>
        </div>
    </div>
    <div class="main_photo_back">
        <div class="main_text_1">ABOUT COMPANY</div>
        <div class="main_text_2">회사소개</div>
    </div>
    
    <div class="drop_manu">
        <div class="inner_case" style="display: flex; z-index: 2;">
            <a href="../"><div class="dropdown_img"></div></a>
            <div class="menu">
               <div class="dropdown">
           			 <div class="photo photob"></div>
               		<div class="dropdown_main_1">회사소개</div>
               		<div class="dropdown_main_2">제품정보</div>
                    <div class="dropdown_main_3">고객지원</div>
   		        </div>
   		        <div class="dropdown_sub_3">
   		        <div class="photo"></div>
   	        		 <a href="../../notice/"><div class="dropdown_sub_3_1">공지사항</div></a>
    	      		 <a href="../../fnq/"><div class="dropdown_sub_3_2">F&Q</div></a>
   		      		 <a href="../../info/"><div class="dropdown_sub_3_3">자료실</div></a>
   		      		 <a href="../../qna/"><div class="dropdown_sub_3_4">Q&A</div></a>
       		    </div>
    	        <div class="dropdown_sub_1">
    	        <div class="photo"></div>
    	       	<div class="photo dropdown_subC"></div>
     	      		 <a href="../../greeting/"><div class="dropdown_sub_1_1">인삿말</div></a>
     	     		 <a href="../../history/"><div class="dropdown_sub_1_2">회사연혁</div></a>
       		  		 <a href="../../division/"><div class="dropdown_sub_1_3">부서안내</div></a>
      		   		 <div class="dropdown_sub_1_4">인증특허</div>
     	    		 <a href="../../road/"><div class="dropdown_sub_1_5">오시는길</div></a>
     	       </div>
     	       <div class="dropdown_sub_2">
     	       <div class="photo"></div>

      	     		 <a href="../../product1/"><div class="dropdown_sub_2_1">형관</div></a>
       		   		 <a href="../../product2/"><div class="dropdown_sub_2_2">프레스</div></a>
         			 <a href="../../product3/"><div class="dropdown_sub_2_3">철근</div></a>
         			 <a href="../../product4/"><div class="dropdown_sub_2_4">강관</div></a>
            	</div>
            </div>
        </div>
    </div>
    <div class="title_1">
        <div class="inner_case">
            <div class="sub_text2">인증특허</div>
            <div class="sub_text1">(주)테라금속의 <span style="color: #336699; font-weight: 700;">인증특허</span> 입니다.</div>
        </div>
    </div>
	<div class="patent_button"><!-- 버튼 색깔만 다르게 -->
		<div class="inner_case">
			<button class="patent_button_check"id="patent1" style="border: 0;outline: 0;">선급 인증</button>
			<button class="patent_button_nocheck"id="patent2"  style="border: 0;outline: 0;">특허증</button>
			<button class="patent_button_nocheck"id="patent3" style="border: 0;outline: 0;">인증서</button>
		</div>
	</div>

	<div class="patent_info_patent1"> <!-- 버튼 말고위아래만 정해주면 됨 스크립트로 인증서 별로 띄우게 디스플레이 설정  -->
		<div class="inner_case" style="display: flex;" >
			<div class="patent_case"><!-- 케이스 위치 크기 넣어주기 -->
				<div class="patent_photo_1"></div><!-- 이미지랑 크기 넣어주기 -->
				<div class="patent_text">선급 인증</div><!-- 이미지 이름 -->
			</div>

			<div class="patent_case"><!-- 케이스 위치 크기 넣어주기 -->
				<div class="patent_photo_1"></div><!-- 이미지랑 크기 넣어주기 -->
				<div class="patent_text">선급 인증</div><!-- 이미지 이름 -->
			</div>

			<div class="patent_case"><!-- 케이스 위치 크기 넣어주기 -->
				<div class="patent_photo_1"></div><!-- 이미지랑 크기 넣어주기 -->
				<div class="patent_text">선급 인증</div><!-- 이미지 이름 -->
			</div>

			<div class="patent_case"><!-- 케이스 위치 크기 넣어주기 -->
				<div class="patent_photo_1"></div><!-- 이미지랑 크기 넣어주기 -->
				<div class="patent_text">선급 인증</div><!-- 이미지 이름 -->
			</div>
		</div>
	</div>
	
	<div class="patent_info_patent2"> <!-- 버튼 말고위아래만 정해주면 됨 스크립트로 인증서 별로 띄우게 디스플레이 설정  -->
		<div class="inner_case" style="display: flex;" >
			<div class="patent_case"><!-- 케이스 위치 크기 넣어주기 -->
				<div class="patent_photo_1"></div><!-- 이미지랑 크기 넣어주기 -->
				<div class="patent_text">특허증</div><!-- 이미지 이름 -->
			</div>

			<div class="patent_case"><!-- 케이스 위치 크기 넣어주기 -->
				<div class="patent_photo_1"></div><!-- 이미지랑 크기 넣어주기 -->
				<div class="patent_text">특허증</div><!-- 이미지 이름 -->
			</div>

			<div class="patent_case"><!-- 케이스 위치 크기 넣어주기 -->
				<div class="patent_photo_1"></div><!-- 이미지랑 크기 넣어주기 -->
				<div class="patent_text">특허증</div><!-- 이미지 이름 -->
			</div>

			<div class="patent_case"><!-- 케이스 위치 크기 넣어주기 -->
				<div class="patent_photo_1"></div><!-- 이미지랑 크기 넣어주기 -->
				<div class="patent_text">특허증</div><!-- 이미지 이름 -->
			</div>
		</div>
	</div>

	<div class="patent_info_patent3"> <!-- 버튼 말고위아래만 정해주면 됨 스크립트로 인증서 별로 띄우게 디스플레이 설정  -->
		<div class="inner_case" style="display: flex;" >
			<div class="patent_case"><!-- 케이스 위치 크기 넣어주기 -->
				<div class="patent_photo_1"></div><!-- 이미지랑 크기 넣어주기 -->
				<div class="patent_text">인증서</div><!-- 이미지 이름 -->
			</div>

			<div class="patent_case"><!-- 케이스 위치 크기 넣어주기 -->
				<div class="patent_photo_1"></div><!-- 이미지랑 크기 넣어주기 -->
				<div class="patent_text">인증서</div><!-- 이미지 이름 -->
			</div>

			<div class="patent_case"><!-- 케이스 위치 크기 넣어주기 -->
				<div class="patent_photo_1"></div><!-- 이미지랑 크기 넣어주기 -->
				<div class="patent_text">인증서</div><!-- 이미지 이름 -->
			</div>

			<div class="patent_case"><!-- 케이스 위치 크기 넣어주기 -->
				<div class="patent_photo_1"></div><!-- 이미지랑 크기 넣어주기 -->
				<div class="patent_text">인증서</div><!-- 이미지 이름 -->
			</div>
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