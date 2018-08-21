$(function(){
	function changeColor(ele){
		var select = $(ele +' option:selected').val()
		if(select == 1){
			$(ele).css('color',"#999")
		}else{
			$(ele).css('color',"#555")
		}
	}
	
	$("#localcity").change(function(){
		changeColor('#localcity')
	})
	$("#comschools").change(function(){
		changeColor('#comschools')
	})
	$('#btnzc').click(function(){
		var select1 = $('#localcity option:selected').val();
		var select2 = $('#comschools option:selected').val();
		var name = $("#name").val()
		var phone = $("#phone").val()
		var email = $("#email").val()
		var reg=/^1[3578]\d{9}$/;
		var reg2 = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		var conpany = $("#conpany").val();
		var msg = $('.msg');
		if(name==''|| phone=='' ||  email=='' || conpany==''){
			msg.css('opacity',1)
			msg.html("信息必须填写完整!")
		}else if(!reg.test(phone)){
			msg.css('opacity',1)
			msg.html("手机号码格式不正确!")
		}else if(!reg2.test(email)){
			msg.css('opacity',1)
			msg.html("邮箱格式不正确!")
		}else if(select1 == 1){
			msg.css('opacity',1)
			msg.html("请选择省份!")
		}else if(select2 == 1){
			msg.css('opacity',1)
			msg.html("请选择意向报名的院校培训国家!")
		}else{
			msg.css('opacity',0)
			msg.html("");
			$('form').submit()
		}
	})
})
