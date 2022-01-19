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
		$(sub3_1).css('display','block');
		
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
		
		$(".dropdown_sub_3_1").wrap('<a href="."></a>');
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
		$(".dropdown_sub_3_1").wrap('<a href="."></a>');
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
		$(".dropdown_sub_3_1").wrap('<a href="../../notice/"></a>');
		$(".dropdown_subC").wrap('<a href="../../notice/"></a>');
	});
	$(".dropdown_sub_3_1").click(function(){
		$(this).wrap('<a href="../../notice/"></a>');
		$(".dropdown_subC").wrap('<a href="../../notice/"></a>'); 
		if($(sub3_2).css("display")=="none"){
		$(sub3_1).css("display","block");
		$(sub3_2).css("display","block");
		$(sub3_3).css("display","block");
		$(sub3_4).css('display','block');
		}
		else{
		$(sub3_2).css("display","none");
		$(sub3_3).css("display","none");
		$(sub3_4).css('display','none');
		}
	});
});