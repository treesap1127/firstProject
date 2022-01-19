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
    <link rel="stylesheet" href="../resources/css/qna/qna.css">
    
    <script src="../js/qna.js"></script>
    <script>
    $(function(){
    	const addtag =`<a href="add" class="page-link button1">등록</a>`;
    	sessionGrade="${sessionScope.partner.grade}";
    	$(`.UD${sessionScope.partner.id}`).removeClass('deleteUpdate');
    	if(${sessionScope.partner.grade}==1){
    		$(".addtag").prepend(addtag);    	}
    	if(sessionGrade>=2){
    		$(".answer").css("display","block");
    		}
    	if($(".answerCheck").innerText='답변 완료'){
    		$('.answer2').addClass('deleteUpdate');
    	}
    	//qna와 클래스에 아이디주고 맞으면 수정삭제뜨게ㅇㅇ
    });
    </script>
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
                <a href="../product1/">제품정보</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href=".">고객지원</a>
            </div>
        </div>
    </div>
    <div class="main_photo_back">
        <div class="main_text_1">ABOUT COMPANY</div>
        <div class="main_text_2">고객지원</div>
    </div>
    
    <div class="drop_manu">
   
    <div class="inner_case" style="display: flex;">
           <a href="../"><div class="dropdown_img"></div></a>
            <div class="menu">
               <div class="dropdown">
               		<div class="photo photob"></div>
                    <div class="dropdown_main_3">고객지원</div>
               		<div class="dropdown_main_1">회사소개</div>
               		<div class="dropdown_main_2">제품정보</div>
   		        </div>

   		        <div class="dropdown_sub_3">
   		           	 <div class="photo dropdown_subC"></div>
   		      		 <div class="dropdown_sub_3_4">Q&A</div>
   	        		 <a href="../notice/"><div class="dropdown_sub_3_1">공지사항</div></a>
    	      		 <a href="../fnq/"><div class="dropdown_sub_3_2">F&Q</div></a>
   		      		 <a href="../info/"><div class="dropdown_sub_3_3">자료실</div></a>
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
            <div class="sub_text2">Q&A</div>
            <div class="sub_text1">(주)테라금속의 <span style="color: #336699; font-weight: 700;">Q&A</span> 입니다.</div>
        </div>
    </div>
    <div class="search">
        <div class="inner_case">
                    <form class="row">
                      <div class="search_move_1">
                           <select name="search" class="form-select control">
                              <option value="0">검색항목</option>
                              <option value="1" ${pager.search==1?'selected':''}>번호</option>
                               <option value="2" ${pager.search==2?'selected':''}>제목</option>
                                <option value="3" ${pager.search==3?'selected':''}>작성자</option>
                               <option value="4" ${pager.search==4?'selected':''}>작성일</option>
                         </select>
                     </div>
                     <div class="search_move_2"><input type="text" name="keyword" value="${pager.keyword eq 'null'?'':pager.keyword}" class="form-control control"></div>
		
                     <div class="search_move_3"><button class="btn btn-search">검색</button></div>
                    </form>
        </div>
    </div>
    <div>
        <div class="inner_case">
            <table border="1" class="table_all" >
                 <thead class="table_head">
                    <tr>
                        <td>번호</td>
                        <td>제목</td>
                        <td>작성자</td>
                        <td>작성일</td>
                        <td>답변여부</td>
                        <td></td>                     
                    </tr>
                </thead>
    
                <tbody class="table_body">
                    <c:forEach var="item" items="${list}">
                        <tr class="grade_${item.grade}">
                            <td>${item.qna}</td>
                            <td class="black"><a href="view/${item.qna}">${item.qnaName}</a></td>
                            <td class="black"><a href="view/${item.qna}">${item.id}</a></td>
                            <td>${item.qnaDate}</td>
                            <td><div class="answerCheck check${item.answerCheck}"></div></td>
                            <td class="deleteUpdate UD${item.id} answer${item.answerCheck}" colspan="0">
                            <a href="delete/${item.qna}" class="btn btn-sm btn-danger">삭제</a>
    												<a href="update/${item.qna}" class="btn btn-sm btn-warning">변경</a></td>
    						<td class="answer"><a href="answer/${item.qna}" class="btn btn-sm btn-primary">답변</a>&nbsp;&nbsp;<a href="delete/${item.qna}" class="btn btn-sm btn-danger">삭제</a></td>
                        </tr>
                    </c:forEach>
                    <c:if test="${list.size() < 1}">
                        <tr>
                            <td colspan="6">등록 된 공지가 없습니다</td>
                        </tr>
                    </c:if>
                </tbody>
                <tfoot class="table_foot">
                    <tr>
                        <td class =""colspan="5">
                        <div class="pagination justify-content-center table_padding" >
                            <div class="page-item"><a href="?page=1${pager.query}" class="page-link button">처음</a></div>
                            <div class="page-item"><a href="?page=${pager.prev}${pager.query}" class="page-link button">이전</a></div> 
                            
                            <c:forEach var="page" items="${pager.list}">
                                <div class="page-item ${page == pager.page ? 'active':''}"><a href="?page=${page}${pager.query}" class="page-link button">${page}</a></div>
                            </c:forEach>
    
                            <div class="page-item"><a href="?page=${pager.next}${pager.query}" class="page-link button">다음</a></div>
                            <div class="page-item"><a href="?page=${pager.last}${pager.query}" class="page-link button">마지막</a>
                            </div>
                        </div>
                        </td>
						<td class="addtag"></td>
                    </tr>
                </tfoot>
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