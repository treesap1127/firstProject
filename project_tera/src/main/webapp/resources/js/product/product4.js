$(function(){
	const main1=".dropdown_main_1";//소개
    const main2=".dropdown_main_2";//제품
	const main3=".dropdown_main_3";//지원
	const sub1=".dropdown_sub_1";//공지
	const sub2=".dropdown_sub_2";//질문
	const sub3=".dropdown_sub_3";//자료실

	const sub3_1=".dropdown_sub_2_1";//제품1
	const sub3_2=".dropdown_sub_2_2";//제품2
	const sub3_3=".dropdown_sub_2_3";//제품3
	const sub3_4=".dropdown_sub_2_4";//제품4
	
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
	
	$(".dropdown_main_3").click(function(){
		if($(main1).css( "display" )=='none'){
		$(main1).css('display','block');
		$(main2).css('display','block');
		}
		else if($(main1).css( "display" )!='none'){
		$(main1).css('display','none');
		$(main2).css('display','none');
		}
		$(sub1).css("display","none");
		$(sub3).css('display','block');
		$(sub2).css("display","none");
		$(sub3_4).css('display','block');
		
	});
	$(".photob").click(function(){
		if($(main3).css( "display" )=="block"){
		$(sub1).css("display","none");
		$(sub3).css("display","block");
		$(sub2).css("display","none");
		}
		else if($(main1).css( "display" )=="block"){
		$(sub1).css("display","block");
		$(sub3).css("display","none");
		$(sub2).css("display","none");
		}
		else if($(main2).css( "display" )=="block"){
		$(sub1).css("display","none");
		$(sub3).css("display","none");
		$(sub2).css("display","block");
		}
		
		$(main1).css("display","block");
		$(main3).css("display","block");
		$(main2).css("display","block");

		$(sub3_1).css("display","block");
		$(sub3_2).css("display","block");
		$(sub3_3).css("display","block");
		$(sub3_4).css('display','block');
		
		$(".dropdown_sub_2_4").wrap('<a href="../../product4/"></a>');
		$(".dropdown_subC").wrap('<a href="../../product4/"></a>');
	});
	$(".dropdown_main_2").click(function(){
		if($(main1).css( "display" )=="none"){
		$(main1).css("display","block");
		$(main3).css("display","block");
		}
		else if($(main1).css( "display" )!="none"){
		$(main1).css("display","none");
		$(main3).css("display","none");
		}
		$(sub3_1).css("display","block");
		$(sub3_2).css("display","block");
		$(sub3_3).css("display","block");
		$(sub3_4).css('display','block');
		$(sub1).css("display","none");
		$(sub3).css("display","none");
		$(sub2).css("display","block");
		$(".dropdown_sub_2_4").wrap('<a href="../../product4/"></a>');
		$(".dropdown_subC").wrap('<a href="../../product4/"></a>');
	});
		$(subc).click(function(){
		$(".dropdown_subC").wrap('<a href="../../product4/"></a>'); 
		$(".dropdown_sub_2_4").wrap('<a href="../../product4/"></a>');
		if($(sub3_3).css("display")=="none"){
		$(sub3_3).css("display","block");
		$(sub3_2).css("display","block");
		$(sub3_1).css('display','block');
		}
		else{
		$(sub3_3).css("display","none");
		$(sub3_2).css("display","none");
		$(sub3_1).css('display','none');
		}
	});
	$(".dropdown_sub_2_4").click(function(){
		$(".dropdown_sub_2_4").wrap('<a href="../../product4/"></a>');
		$(".dropdown_subC").wrap('<a href="../../product4/"></a>'); 
		if($(sub3_3).css("display")=="none"){
		$(sub3_2).css("display","block");
		$(sub3_3).css("display","block");
		$(sub3_1).css('display','block');
		}
		else{
		$(sub3_2).css("display","none");
		$(sub3_3).css("display","none");
		$(sub3_1).css('display','none');
		}
	});
});