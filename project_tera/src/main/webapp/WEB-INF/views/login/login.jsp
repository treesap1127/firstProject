<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="../include/header.jsp"></jsp:include>
    <link rel="stylesheet" href="../resources/css/login_style.css">
    
    <title>TeraMetal</title>
    <script>
        function startLogin(){
        	alert("회사에서 직원 코드를 받아서 회원가입을 해주세요");
        }
       window.onload = function(){
    	   const msg = '${msg}';
    	   if(msg) alert('아이디와 비밀번호를 정확히 입력해 주세요.');
    	  
    	   $(".find").click(function(){
   			alert("관리자에게 문의하세요");
   		});
       }
    </script>
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

        <div class="login_main_photo"></div>

        <div class="gom">
           <div class="login_main_box">

                 <a href="../"><div class="inner_box"></div></a>
                <hr class="line" size="3px">
                <div class="login_label">
                    통합로그인
                </div>
                <form method="post">
                    <div>
                        <div class="login">
                           <input type="text" name="id" class="id_input" placeholder="아이디">
                           <div class="id_icon"><img src="../resources/img/login/ID.jpg" alt=""></div>
                        </div>
                        <div class="login">
                            <input type="password" name="passwd"class="id_input"  placeholder="비밀번호">
                            <div class="id_icon"><img src="../resources/img/login/password.jpg" alt=""></div>
                        </div>
                       <button class="login_button" onclick="loginCheck()">로그인</button> 
                       <!-- <input type="button" value="로그인" class="login_button"> -->
                    </div>
                </form>
                <div class="login_out_bottom"> 
                    <p>본사이트는 임직원을 위한 사이트 입니다.<br>불법 사용 시 법적 제재를 받을 수 있습니다.<p>
                </div>
                <div class="login_bottom">
                    <div class="bottom"><button onclick="startLogin()" class="button">초기 접속 방법</button></div>
                    <div class="bottom find">비밀번호 찾기</div>
                    <div class="bottom"><a href="signup/">회원 가입</a></div>
            </div>
        </div>
    </div>

<jsp:include page="../include/body.jsp"></jsp:include>
</body>

</html>     