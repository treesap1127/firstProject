<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="include/header.jsp"></jsp:include>
<title>TeraMetal</title>
    <link rel="stylesheet" href="resources/css/mainpage.css">
    <link rel="icon" type="image/png"  href="resources/img/favicon.png"/>
    <style>
         a {
      text-decoration: none;
      color: white;
    }
  a:hover {
      color: white
    }
    </style>
</head>

<body>
    <div class="main">
        <!--메인-->
        <div class="center">
            <div class="inner_case">
			<c:if test="${sessionScope.partner.id==null}">
                <span class="login_start" style="font-weight: 600;font-size: 0.9rem;left:82%">
                    <a href="login/">Login</a>
                </span>
            </c:if>
               	<c:if test="${sessionScope.partner.grade ==1}">
						<span class="login_start">
						${sessionScope.partner.id}&nbsp;님 환영 합니다
								 |
								<a href="logout">로그아웃</a>
						</span>
				</c:if>
				<c:if test="${sessionScope.partner.grade ==2}">
						<span class="login_start">
						<a href="member/">회원 정보 수정</a>&nbsp;&nbsp;
						${sessionScope.partner.id}&nbsp;님 환영 합니다
								 |
								<a href="logout">로그아웃</a>
						</span>
				</c:if>
				 <span class="logo"></span>
                <span class="manu_top_link">
                    <a href="greeting/">회사소개</a>
                    <a href="product1/">제품정보</a>
                    <a href="notice/">고객지원</a>
                </span>
                <span>
                    <hr>
                </span>
                <span class="main_top_text">
                    <span class="main_top_yellow">고객과 신뢰</span><span class="main_top_white_big">를 실천하는 기업</span><br>
                    <span class="main_top_white_small">변함없는 신념으로<br>최고의 제품과 서비스를 제공하기 위해 항상 노력합니다</span>
                </span>
                <div class="main_top_bottom"></div>
            </div>
        </div>
    </div>
    <div class="main">
        <!--제품소개-->
        <div class="midle">
            <div class="inner_case">
                <div class="mid_title">제품소개</div>
                <div class="container">
                    <div class="mid_main">
                        <div class="mid_main_top_1"></div>
                        <div class="mid_main_bottom1">형관</div>
                        <!-- ${item.productname} -->
                        <div class="mid_main_bottom2">형강은 건축, 기타 구조물의 기둥 기타 강도 부재, 교량용 지지대, 토목용 도구등에 사용됩니다.</div>
                        <!-- ${item.productinfo} -->

                    </div>



                    <div class="mid_main">
                        <div class="mid_main_top_2"></div>
                        <div class="mid_main_bottom1">프레스</div>
                        <!-- ${item.productname} -->
                        <div class="mid_main_bottom2">최고의 전문 엔지니어는 어떤 복잡한 형상의 자동차 부품도 한치의 오차도 없이 완벽히 생산하고 있습니다.</div>
                        <!-- ${item.productinfo} -->

                    </div>


                    <div class="mid_main">
                        <div class="mid_main_top_3"></div>
                        <div class="mid_main_bottom1">철근</div>
                        <!-- ${item.productname} -->
                        <div class="mid_main_bottom2">철근은 표면에 축 방향의 돌기와 횡 방향으로 일정한 간격의 마디가 있어 콘크리트 부착력이 강하게 만들어진 제품입니다.</div>
                        <!-- ${item.productinfo} -->

                    </div>


                    <div class="mid_main">
                        <div class="mid_main_top_4"></div>
                        <div class="mid_main_bottom1">강관</div>
                        <!-- ${item.productname} -->
                        <div class="mid_main_bottom2">강관산업의 선두주자, 최고 품질의 배관용, 구조용강관, 각형강관, 칼라강관을 비롯하여 스테인레스강관과 자동차부품용 강관생산으로 철강산업과 경제발전의 원동력이 되어왔습니다.</div>
                        <!-- ${item.productinfo} -->

                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="main">
        <!--주요정보-->
        <div class="under">
            <div class="inner_case">
                <a href="history/">
                <div class="info_box1">
                        <div class="info_box1_1">주요정보</div>
                        <hr class="lhr">
                        <div class="info_box1_2">테라금속의 주요정보를 확인해보세요</div>
                </div>
            </a>
                <a href="patent/">
                <div class="info_box2">

                        <p class="info_box2_1">인증 특허</p>
                        <hr class="lhr2">
                        <div class="info_box2_2">테라금속은 최고수준의 품질을 위해 항상 노력합니다.</div>
                        <span class="info_icon2"></span>

                </div>
            </a>
                <a href="division/">
                <div class="info_box3">

                        <div class="info_box3_1">부서안내</div>
                        <hr class="lhr3">
                        <div class="info_box3_2">각 부서와 담당자의 연락처를 확인하실 수 있습니다.</div>
                        <span class="info_icon3"></span>

                </div>
            </a>
                <a href="notice/">
                <div class="info_box4">
                        <div class="info_box4_1">고객지원</div>
                        <hr class="lhr4">
                        <div class="info_box4_2">문의 및 상담이 필요하시면 <br>고객상담실로 문의 바랍니다.</div>
                        <span class="info_icon4"></span>

                </div>
            </a>
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
    



<jsp:include page="include/body.jsp"></jsp:include>
</body>

</html>