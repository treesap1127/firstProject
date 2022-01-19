<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<jsp:include page="../include/header.jsp"></jsp:include>
<link rel="stylesheet" href="../../resources/css/notice/notice_add.css">
<link
   href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
   rel="stylesheet">
   <link rel="icon" type="image/png"  href="../../resources/img/favicon.png"/>
<script
   src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script>
   $(function() {
      $('#summernote').summernote();

      $("#add_image").click(function() {
         const div = $("<div>").addClass("mt-2");
         const label = $("<label>").text("파일");
         const button = $("<span>").text("삭제");

         button.addClass("btn btn-outline-primary btn-sm");
         const file = $("<input>").attr("type", "file");
         file.attr("name", "noticeFile");
         file.addClass("form-control");

         button.click(function() {
            $(this).parent().remove();
         });

         div.append(label);
         div.append(button);
         div.append(file);

         $("form > div:last-child").before(div);
      });
      $("button.delete").click(function(){
			const code =$(this).data("code");//이걸로 코드값을 얻네 data-code로 받은값
			//이 코드값은 딜리트가 파일 코드값
			$.ajax("../file/delete/"+code,{
				method:"GET",
				success:function(result){
					console.log(result);
					console.log(code);
					if(result)
						$("button.delete[data-code='"+code+"']").parent().remove();
				},
				error:function(jqxhr, status){
					alert.log(status);
				}
			});
		});
   });
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
				<a href="../notice/">고객지원</a>
			</div>
		</div>
	</div>
	<div class="main_photo_back">
		<div class="main_text_1">ABOUT COMPANY</div>
		<div class="main_text_2">회사소개</div>
	</div>

	<div class="title_1">
		<div class="inner_case">
			<div class="sub_text2">공지사항 수정</div>
		</div>
	</div>
	<div class="inner_case" style="padding-bottom: 10rem;">
		<form method="post" enctype="multipart/form-data">
			<div class="form-floating">
				<div class="formName">공지 제목</div>
				<input type="text" id="noticeName" name="noticeName"
					class="form-control" placeholder="공지제목" value="${item.noticeName}"> <label
					style="padding: 55px 1.25rem;">제목:</label>
			</div>

			<div class="add_info">
				<label class="noticeInfo">공지 내용</label>
				<textarea rows="20" cols="113" name="noticeInfo" id="summernote">${item.noticeInfo}</textarea>
				
			</div>
			<input type="hidden" name="id" class="id"
				value="${sessionScope.partner.id}" />

			<div class="mt-2">
			
		<div>
 			<ul>
 				<c:if test="${item.multfile==null||item.multfile.size()<1}">
 				<li>등록 된 제품이미지가 없습니다</li>
 				</c:if>
 				<c:forEach var="file" items="${item.multfile}">
 				<li class="fileDelete"><button type="button" class="btn btn-sm btn-danger delete" data-code="${file.code}">삭제</button>${file.filename}</li>
 				
 				</c:forEach>
 			</ul>
 		</div>
 				<div>
				<label>제품이미지:
					<span id="add_image" class="btn btn-outline-primary btn-sm">추가</span>
					</label> 
					<input type="file" name="noticeFile" class="form-control">
					</div>
			</div>
			<div class="add_button">
				<button class="end_button">수정</button>
				<a href="../../notice/" class="back_button">뒤로가기</a>
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