<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="../include/header.jsp"></jsp:include>
    <link rel="stylesheet" href="../../resources/css/signup.css">
    
    <title>TeraMetal</title>
    <script>
        function startLogin(){
            alert("회사에서 직원 코드를 받아서 회원가입을 해주세요");
        }
        function check_id_Async() {
        	   const form = document.getElementById("signup_form");
        	   const xhr = new XMLHttpRequest();

        	   xhr.onreadystatechange = function() {
        	      console.log(xhr.readyState);
        	      
        	      if(xhr.readyState == XMLHttpRequest.DONE) {
        	         if(xhr.status == 200) {
        	            const result = xhr.responseText;
        	            
        	            if(result == "OK") {
        	               alert(`\${form.id.value} 는 사용가능한 아이디 입니다`);
        	               form.checkId.value = form.id.value;
        	            }
        	            else
        	               alert(`\${form.id.value} 는 이미 사용중인 아이디 입니다`);         
        	         }
        	      }
        	   }

        	   xhr.open("GET", `checkId?id=\${form.id.value}`, true);
        	   
        	   xhr.send(); //값을 받아오면 readystate 값 이 바뀐다 그러면 onreadystatechange 값이 변경되면서 함수 실해
        	   // readystate 이란 400 300 200 이란 것이다 대신 성공 했을때만 사용 가능한 아이디라 알리고 formcheck 아이디값을 넣어주기
        	   
        	}
        function signup() {
        	   const form = document.getElementById("signup_form");
        	   const regx = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=()]).*$/;
        	   
        	   
        	   if(form.checkId.value != form.id.value) { //여기서 값이 같은거 확인
        	      alert("아이디 중복검사를 해 주세요");
        	      return;
        	   }
        	   
        	   if(form.id.value == "") {
        	      alert("아이디를 입력 해 주세요");
        	      form.id.focus();
        	      return;
        	   }
        	   
        	   if(form.passwd.value == "") {
        	      alert("비밀번호를 입력 해 주세요");
        	      form.passwd.focus();
        	      return;
        	   }
        	   if(!regx.test(form.passwd.value)){
        		   alert("특수문자,문자,숫자 포함 형태의 8~15자리 이내로 쓰시오");
        		   form.passwd.focus();
        		   return;
        	   }
        	   
        	   if(form.passwd_confirm.value == "") {
        	      alert("비밀번호 확인를 입력 해 주세요");
        	      form.passwd_confirm.focus();
        	      return;
        	   }

        	   
        	   if(form.passwd.value != form.passwd_confirm.value) {
        	      alert("비밀번호와 비밀번호 확인이 일치하지 않습니다");
        	      form.passwd.value == "";
        	      form.passwd_confirm.value == "";
        	      form.passwd.focus();
        	      return;
        	   }
        	   
        	   
        	   if(form.jobCode.value == "") {
        	      alert("직원코드를 입력 해 주세요");
        	      form.address.focus();
        	      return;
        	   }
        	   form.submit();//회원가입 을 타입으로 따로 지정해줘서 결과값 전달을 해줘야함
        	}
        window.onload =  function(){
//여기서 함수까진 들어가는데 답은 못받음.
		var s='${msg}';
		if (s=='false'){alert("직원코드가 올바르지 않습니다.");}
		var checklogin='${checkLogin}';
  	    if(checklogin=='true'){alert("회원가입이 완료되었습니다!\n 로그인을 해주세요");}
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
    <div class="bottom_min">
        <div class="login_main_photo"></div>

        <div class="gom">
            <div class="login_main_box">

                <a href="../../"> <div class="inner_box"></div></a>
                <hr class="line" size="3px">
                <div class="login_label">
                    회원가입
                </div>
                <form id="signup_form" method="post">
                <input type="hidden" name="checkId">
                    <div>
                        <div class="login">
                           <input type="text" name="id" class="id_input" placeholder="아이디">
                           <div class="id_icon"><img src="../../img/login/ID.jpg" alt=""></div>
                            <button type="button" class="overlap" onclick="check_id_Async()">중복확인</button>
                            
                        </div>
                        <div class="login">
                            <input type="password" name="passwd"class="id_input"  placeholder="비밀번호">
                            <div class="id_icon"><img src="../../img/login/password.jpg" alt=""></div>
                        </div>
                        <div class="login">
                            <input type="password" name="passwd_confirm"class="id_input"  placeholder="비밀번호 확인">
                            <div class="id_icon"><img src="../../img/login/password.jpg" alt=""></div>
                        </div>
                        <div class="login">
                            <input type="password" name="jobCode"class="id_input"  placeholder="직원코드">
                            <div class="id_icon"><img src="../../img/login/password.jpg" alt=""></div>
                        </div>
                            <button type="button" onclick="signup()" class="login_button">회원가입</button>
                            
                    </div>
                </form>
                <div class="login_out_bottom"> 
                    <p>본사이트는 임직원을 위한 사이트 입니다.<br>불법 사용 시 법적 제재를 받을 수 있습니다.<p>
                </div>
                <div class="login_bottom">
                    <!--alert-->
                    <div class="bottom"><button onclick="startLogin() " class="button">초기 접속 방법</button></div>
                    <div class="bottom"><a href="..">뒤로 가기</a></div>
                </div>
            </div>
        </div>
    </div>

<jsp:include page="../include/body.jsp"></jsp:include>
</body>

</html>  