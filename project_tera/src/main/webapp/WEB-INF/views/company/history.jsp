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
    <link rel="stylesheet" href="../resources/css/company/company.css">
    <script src="../js/company/history.js"></script>
	<style>
	.dropdown_sub_1_1{
	display:none;
	background-color:white;
	border:0.5px solid gray;
}.dropdown_sub_1_2{
	display:block;
	background-color:white;
	border:0.5px solid gray;
}.dropdown_sub_1_3{
	display:none;
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
     	     		 <div class="dropdown_sub_1_2">회사연혁</div>
       		  		 <a href="../../division/"><div class="dropdown_sub_1_3">부서안내</div></a>
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
            <div class="sub_text2">회사연혁</div>
            <div class="sub_text1">(주)테라금속의 <span style="color: #336699; font-weight: 700;">회사연혁</span> 입니다.</div>
        </div>
    </div>
    <div class="history_info_box">
    <div class="inner_case" style="display: flex;">
	<div class="history_info">
<span style="color:cornflowerblue">2018.01</span> 하치장 공장부지 취득<br/>
<span style="color:cornflowerblue">2010.06</span> 한국표준협회 한국산업규격 KS 표시 획득<br/>
<span style="color:cornflowerblue">2010.03</span> 경영혁신형 중소기업 확인서 취득<br/>
<span style="color:cornflowerblue">2004.11</span> 품질경영시스템인증서 취득<br/>
<span style="color:cornflowerblue">2003.01</span> 신선공장 설비 합리화 완공. 생산능력 1000% 증가<br/>
<span style="color:cornflowerblue">2002.12</span> 신선공장 증설<br/>
<span style="color:cornflowerblue">1996.03</span> 제 1000회 조세의 날 재정경제원상 표창 수상<br/>
<span style="color:cornflowerblue">1994.10</span> 장외주식시장(KOSDAQ)등록<br/>
<span style="color:cornflowerblue">1993.11</span> 제 1000회 무역의날 1000만불 수출탑 수상<br/>
<span style="color:cornflowerblue">1985.11</span> 제 1000회 무역의날 1000만불 수출탑 수상 및 대통령상 표창 수상<br/>
<span style="color:cornflowerblue">1983.03</span> 제 1000회 조세의 날 표창 수상<br/>
<span style="color:cornflowerblue">1967.07</span> 회사상호 "TeraMetal" 설립(대전 동구)<br/>
	</div>
	<div class="history_img"></div>
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