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
    <link rel="stylesheet" href="../resources/css/product/product.css">
    <script src="../js/product/product2.js"></script>
    <style>
    .dropdown_sub_2_1{
	display:none;
	background-color:white;
	border:0.5px solid gray;
}.dropdown_sub_2_2{
	display:block;
	background-color:white;
	border:0.5px solid gray;
}.dropdown_sub_2_3{
	display:none;
	background-color:white;
	border:0.5px solid gray;
}.dropdown_sub_2_4{
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
                <a href="../greeting/">회사소개</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href=".">제품정보</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="../notice/">고객지원</a>
            </div>
        </div>
    </div>
    <div class="main_photo_back">
        <div class="main_text_1">ABOUT COMPANY</div>
        <div class="main_text_2">제품정보</div>
    </div>
    
    <div class="drop_manu">
   
            <div class="inner_case" style="display: flex; z-index: 2;">
            <a href="../"><div class="dropdown_img"></div></a>
            <div class="menu">
               <div class="dropdown">
           			 <div class="photo photob"></div>
                    <div class="dropdown_main_3">고객지원</div>
               		<div class="dropdown_main_1">회사소개</div>
               		<div class="dropdown_main_2">제품정보</div>
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
     	      		 <a href="../../greeting/"><div class="dropdown_sub_1_1">인삿말</div></a>
     	     		 <a href="../../history/"><div class="dropdown_sub_1_2">회사연혁</div></a>
       		  		 <a href="../../division/"><div class="dropdown_sub_1_3">부서안내</div></a>
      		   		 <a href="../../patent/"><div class="dropdown_sub_1_4">인증특허</div></a>
     	    		 <a href="../../road/"><div class="dropdown_sub_1_5">오시는길</div></a>
     	       </div>
     	       <div class="dropdown_sub_2">
     	       <div class="photo"></div>
     	       	<div class="photo dropdown_subC"></div>
      	     		 <a href="../../product1/"><div class="dropdown_sub_2_1">형관</div></a>
       		   		 <div class="dropdown_sub_2_2">프레스</div>
         			 <a href="../../product3/"><div class="dropdown_sub_2_3">철근</div></a>
         			 <a href="../../product4/"><div class="dropdown_sub_2_4">강관</div></a>
            	</div>
            </div>
        </div>
    </div>
    <div class="title_1">
        <div class="inner_case">
            <div class="sub_text2">제품 소개</div>
            <div class="sub_text1">(주)테라금속의 <span style="color: #336699; font-weight: 700;">제품 소개</span> 입니다.</div>
        </div>
    </div>
   
      <div class="inner_case">
    	<div class="product_link">
    		<a href="../product1/" class="product_box">형관</a>
    		<a href="." class="product_box_check">프레스</a>
    		<a href="../product3/" class="product_box">철근</a>
    		<a href="../product4/" class="product_box">강관</a>
    	</div>
    </div>
   <div class="inner_case">
   		<div class="product">
   			<div class="img_2"></div> 
   			<div class="text5">
   			<div class="name_round">프레스</div>
   			<hr class="gray_hr"/>
   			<div>최신 공작기계로 가공된 정밀한 금형, 완전 자동화된 대형 셔틀라인, 소형에서 대형까지 다양한 톤수로 이루어진 프레스 라인 그리고 최고의 전문 엔지니어는 A,B,C 필러, 멤버류, 휠하우스등 어떤 복잡한 형상의 자동차 부품도 한치의 오차도 없이 완벽히 생산하고 있습니다.</div>
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