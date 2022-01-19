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
    <link rel="stylesheet" href="../resources/css/company/division.css">
    <script src="../js/company/division.js"></script>
    <script>
  $(function(){
  $("#division1").click(function(){
    	$("#division1").removeClass("division_button_check division_button_nocheck");
    	$("#division2").removeClass("division_button_check division_button_nocheck");
    	$("#division3").removeClass("division_button_check division_button_nocheck");
    	$("#division4").removeClass("division_button_check division_button_nocheck");
    	$("#division1").addClass("division_button_check");
    	$("#division2").addClass("division_button_nocheck");
    	$("#division3").addClass("division_button_nocheck");
    	$("#division4").addClass("division_button_nocheck");
    	$(".division_info_division1").css("display","block");
    	$(".division_info_division2").css("display","none");
    	$(".division_info_division3").css("display","none");
    	$(".division_info_division4").css("display","none");
    });
    $("#division2").click(function(){
    	$("#division1").removeClass("division_button_check division_button_nocheck");
    	$("#division2").removeClass("division_button_check division_button_nocheck");
    	$("#division3").removeClass("division_button_check division_button_nocheck");
    	$("#division4").removeClass("division_button_check division_button_nocheck");
    	$("#division1").addClass("division_button_nocheck");
    	$("#division2").addClass("division_button_check");
    	$("#division3").addClass("division_button_nocheck");
    	$("#division4").addClass("division_button_nocheck");
    	$(".division_info_division1").css("display","none");
    	$(".division_info_division2").css("display","block");
    	$(".division_info_division3").css("display","none");
    	$(".division_info_division4").css("display","none");
    });
    $("#division3").click(function(){
    	$("#division1").removeClass("division_button_check division_button_nocheck");
    	$("#division2").removeClass("division_button_check division_button_nocheck");
    	$("#division3").removeClass("division_button_check division_button_nocheck");
    	$("#division4").removeClass("division_button_check division_button_nocheck");
    	$("#division1").addClass("division_button_nocheck");
    	$("#division2").addClass("division_button_nocheck");
    	$("#division3").addClass("division_button_check");
    	$("#division4").addClass("division_button_nocheck");
    	$(".division_info_division1").css("display","none");
    	$(".division_info_division2").css("display","none");
    	$(".division_info_division3").css("display","block");
    	$(".division_info_division4").css("display","none");
    });
    $("#division4").click(function(){
    	$("#division1").removeClass("division_button_check division_button_nocheck");
    	$("#division2").removeClass("division_button_check division_button_nocheck");
    	$("#division3").removeClass("division_button_check division_button_nocheck");
    	$("#division4").removeClass("division_button_check division_button_nocheck");
    	$("#division1").addClass("division_button_nocheck");
    	$("#division2").addClass("division_button_nocheck");
    	$("#division3").addClass("division_button_nocheck");
    	$("#division4").addClass("division_button_check");
    	$(".division_info_division1").css("display","none");
    	$(".division_info_division2").css("display","none");
    	$(".division_info_division3").css("display","none");
    	$(".division_info_division4").css("display","block");
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
	display:block;
	background-color:white;
	border:0.5px solid gray;
}.dropdown_sub_1_4{
	display:none;
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
       		  		 <div class="dropdown_sub_1_3">부서안내</div>
      		   		 <a href="../../patent/"><div class="dropdown_sub_1_4">인증특허</div></a>
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
            <div class="sub_text2">부서안내</div>
            <div class="sub_text1">(주)테라금속의 <span style="color: #336699; font-weight: 700;">부서안내</span> 입니다.</div>
        </div>
    </div>
	<div class="division_button"><!-- 버튼 색깔만 다르게 -->
		<div class="inner_case">
			<button class="division_button_check"id="division1" style="border: 0;outline: 0;">관리부</button>
			<button class="division_button_nocheck"id="division2"  style="border: 0;outline: 0;">무역부</button>
			<button class="division_button_nocheck"id="division3" style="border: 0;outline: 0;">영업/품질관리부</button>
			<button class="division_button_nocheck"id="division4" style="border: 0;outline: 0;">생산부</button>
		</div>
	</div>
	
	<div class="division_info_division1">
		<div class="inner_case" style="width: 51%;left: 49.6%;">
		<table border="1" class="table_all">
		<thead class="table_head">
			<tr>
				<td>직책</td>
				<td>담당자</td>
				<td>연락처</td>
			</tr>
		</thead>
		<tbody class="table_body">
			<tr>
				<td>부장</td>
				<td>홍길동</td>
				<td>010-1234-4321</td>
			</tr>
			<tr>
				<td>과장</td>
				<td>홍길북</td>
				<td>010-1234-4321</td>
			</tr>
			<tr>
				<td>대리</td>
				<td>홍길서</td>
				<td>010-1234-4321</td>
			</tr>
			<tr>
				<td>사원</td>
				<td>홍길남</td>
				<td>010-1234-4321</td>
			</tr>
			</tbody>
		</table>
		</div>
	</div>
	<div class="division_info_division2">
		<div class="inner_case" style="width: 51%;left: 49.6%;">
		<table border="1" class="table_all">
		<thead class="table_head">
			<tr>
				<td>직책</td>
				<td>담당자</td>
				<td>연락처</td>
			</tr>
		</thead>
		<tbody class="table_body">
			<tr>
				<td>부장</td>
				<td>홍김동</td>
				<td>010-1591-4321</td>
			</tr>
			<tr>
				<td>과장</td>
				<td>홍김북</td>
				<td>010-1591-4321</td>
			</tr>
			<tr>
				<td>대리</td>
				<td>홍김서</td>
				<td>010-1591-4321</td>
			</tr>
			<tr>
				<td>사원</td>
				<td>홍김남</td>
				<td>010-1591-4321</td>
			</tr>
			</tbody>
		</table>
		</div>
	</div>
	
	<div class="division_info_division3">
		<div class="inner_case" style="width: 51%;left: 49.6%;">
		<table border="1" class="table_all">
		<thead class="table_head">
			<tr>
				<td>직책</td>
				<td>담당자</td>
				<td>연락처</td>
			</tr>
		</thead>
		<tbody class="table_body">
			<tr>
				<td>부장</td>
				<td>콩길동</td>
				<td>010-4567-4321</td>
			</tr>
			<tr>
				<td>과장</td>
				<td>콩길북</td>
				<td>010-4567-4321</td>
			</tr>
			<tr>
				<td>대리</td>
				<td>콩길서</td>
				<td>010-4567-4321</td>
			</tr>
			<tr>
				<td>사원</td>
				<td>콩길남</td>
				<td>010-4567-4321</td>
			</tr>
			</tbody>
		</table>
		</div>
	</div>
	
	<div class="division_info_division4">
		<div class="inner_case" style="width: 51%;left: 49.6%;">
		<table border="1" class="table_all">
		<thead class="table_head">
			<tr>
				<td>직책</td>
				<td>담당자</td>
				<td>연락처</td>
			</tr>
		</thead>
		<tbody class="table_body">
			<tr>
				<td>부장</td>
				<td>홍경동</td>
				<td>010-9870-4321</td>
			</tr>
			<tr>
				<td>과장</td>
				<td>홍경북</td>
				<td>010-9870-4321</td>
			</tr>
			<tr>
				<td>대리</td>
				<td>홍경서</td>
				<td>010-9870-4321</td>
			</tr>
			<tr>
				<td>사원</td>
				<td>홍경남</td>
				<td>010-9870-4321</td>
			</tr>
			</tbody>
		</table>
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