  $(document).keypress(function(e) { 

	      	if (e.keyCode == 13) e.preventDefault(); 

	      });
$(function(){
	const main1=".dropdown_main_1";//소개
    const main2=".dropdown_main_2";//제품
	const main3=".dropdown_main_3";//지원
	const sub1=".dropdown_sub_1";//공지
	const sub2=".dropdown_sub_2";//질문
	const sub3=".dropdown_sub_3";//자료실

	const sub3_1=".dropdown_sub_3_1";//공지
	const sub3_2=".dropdown_sub_3_2";//FNQ
	const sub3_3=".dropdown_sub_3_3";//자료실
	const sub3_4=".dropdown_sub_3_4";//QNA
	
	const subc=".dropdown_subC";//화살표
	
	$(".dropdown_main_1").click(function(){
		if($(main3).css( "display" )=='none'){
		$(main2).css('display','block');
		$(main3).css('display','block');
		}
		else if($(main3).css("display")!='none'){
		$(main2).css('display','none');
		$(main3).css('display','none');
		}
		$(sub1).css('display','block');
		$(sub2).css("display","none");
		$(sub3).css("display","none");
		$(sub3_1).css('display','block');
		$(sub3_2).css('display','block');
		$(sub3_3).css('display','block');
		$(sub3_4).css('display','block');
	});
	
	$(".dropdown_main_2").click(function(){
		if($(main1).css( "display" )=='none'){
		$(main1).css('display','block');
		$(main3).css('display','block');
		}
		else if($(main1).css( "display" )!='none'){
		$(main1).css('display','none');
		$(main3).css('display','none');
		}
		$(sub1).css("display","none");
		$(sub2).css('display','block');
		$(sub3).css("display","none");
		$(sub3_4).css('display','block');
		
	});
	$(".photob").click(function(){
		if($(main3).css( "display" )=="block"){
		$(sub1).css("display","none");
		$(sub2).css("display","none");
		$(sub3).css("display","block");
		}
		else if($(main1).css( "display" )=="block"){
		$(sub1).css("display","block");
		$(sub2).css("display","none");
		$(sub3).css("display","none");
		}
		else if($(main2).css( "display" )=="block"){
		$(sub1).css("display","none");
		$(sub2).css("display","block");
		$(sub3).css("display","none");
		}
		
		$(main1).css("display","block");
		$(main2).css("display","block");
		$(main3).css("display","block");

		$(sub3_1).css("display","block");
		$(sub3_2).css("display","block");
		$(sub3_3).css("display","block");
		$(sub3_4).css('display','block');
		
		$(".dropdown_sub_3_4").wrap('<a href="."></a>');
		$(".dropdown_subC").wrap('<a href="."></a>');
	});
	$(".dropdown_main_3").click(function(){
		if($(main1).css( "display" )=="none"){
		$(main1).css("display","block");
		$(main2).css("display","block");
		}
		else if($(main1).css( "display" )!="none"){
		$(main1).css("display","none");
		$(main2).css("display","none");
		}
		$(sub3_1).css("display","block");
		$(sub3_2).css("display","block");
		$(sub3_3).css("display","block");
		$(sub3_4).css('display','block');
		$(sub1).css("display","none");
		$(sub2).css("display","none");
		$(sub3).css("display","block");
		$(".dropdown_sub_3_4").wrap('<a href="."></a>');
		$(".dropdown_subC").wrap('<a href="."></a>');
	});
		$(subc).click(function(){
		if($(main1).css( "display" )=="none"){
		$(main1).css("display","block");
		$(main2).css("display","block");
		}
		else if($(main1).css( "display" )!="none"){
		$(main1).css("display","none");
		$(main2).css("display","none");
		}
		$(sub3_1).css("display","block");
		$(sub3_2).css("display","block");
		$(sub3_3).css("display","block");
		$(sub3_4).css('display','block');
		$(sub1).css("display","none");
		$(sub2).css("display","none");
		$(sub3).css("display","block");
		$(".dropdown_sub_3_4").wrap('<a href="../../qna/"></a>');
		$(".dropdown_subC").wrap('<a href="../../qna/"></a>');
	});
	$(".dropdown_sub_3_4").click(function(){
		$(this).wrap('<a href="../../qna/"></a>');
		$(".dropdown_subC").wrap('<a href="../../qna/"></a>'); 
		if($(sub3_2).css("display")=="none"){
		$(sub3_1).css("display","block");
		$(sub3_2).css("display","block");
		$(sub3_3).css("display","block");
		$(sub3_4).css('display','block');
		}
		else{
		$(sub3_2).css("display","none");
		$(sub3_3).css("display","none");
		$(sub3_1).css('display','none');
		}
	});
//	$(".lock_case .lock_passwd").on("keypress", function(event) {
//      if(event.keyCode == 13) {
//         e.preventDefault();
//      }
//   });
	$("#lockdown").click(function(){
		const item ={
			qna: $("#lock_qna").val(),
			qnaPasswd: $("#lock_passwd").val(),
		}
		console.log(item);
		$.ajax("/lock", {
				method: "PUT",
				contentType: "application/json",
				//dataType: "json",
				data: JSON.stringify(item),
				success: function(result){ 
					console.log("ajax입성");
					if(result == "OK") {
		 			$(".lock").removeClass('lock');
					$(".lock_case").addClass("lock");
	          	 	 }
	          		else{
					console.log(result);
	                alert(`비밀번호가 틀렸습니다`);
					$(".lock_passwd").focus();
				}
				},
				error: xhr => alert(`오류 발생: ${xhr.statusText}`)
			});
	});
});