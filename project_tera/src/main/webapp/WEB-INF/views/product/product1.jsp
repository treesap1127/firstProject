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
    <script src="../js/product/product1.js"></script>
    <style>
    .dropdown_sub_2_1{
	display:block;
	background-color:white;
	border:0.5px solid gray;
}.dropdown_sub_2_2{
	display:none;
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
      	     		 <div class="dropdown_sub_2_1">형관</div>
       		   		 <a href="../../product2/"><div class="dropdown_sub_2_2">프레스</div></a>
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
    		<a href="." class="product_box_check">형관</a>
    		<a href="../product2/" class="product_box">프레스</a>
    		<a href="../product3/" class="product_box">철근</a>
    		<a href="../product4/" class="product_box">강관</a>
    	</div>
    </div>
   <div class="inner_case">
   		<div class="product">
   			<div class="img_1"></div> 
   			<div class="text5">
   			<div class="name_round">형관</div>
   			<hr class="gray_hr"/>
   			<div>형강은 건축, 기타 구조물의 기둥 기타 강도 부재, 교량용 지지대, 토목용 도구등에 사용됩니다.<br/><br/>
H-형강, 경량H-형강, I-형강, 등변ㄱ형강, 부등변ㄱ형강, 조선용ㄱ형강·ㄷ형강, C.T형강, 열간압연 형강(평철), C형강, 레일, 강널말뚝, 데크플레이트</div>
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