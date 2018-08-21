


   

  

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>年会资料上传</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/upload.css">
</head>
<body>
<div class="top">
	<img src="image/banner2.jpg" width="100%" alt="">
</div>
<div class="container main">
	<div class="txt">
		<h5>尊敬的合作伙伴，您好！</h5>
		<p>
			2017 GEA全球合作伙伴大会即将启幕！为了更好地为300+合作代理提供互动化、智能化的卓越培训学习体验，我们将为参会代理们提供各参会院校培训资料下载通道，打造全面高效的教与学资源交流共享平台。
		</p>
		<p>
			以下相关资料仅用于2017 GEA全球合作伙伴大会，建议您上传学校介绍PPT/PDF、校园宣传视频等相关资料。由于时间的紧迫性，建议您先上传已经准备好的资料，未整理好的资料您可以延后再次上传，且上传次数不设限。
		</p>
	</div>	
	<div class="file">
		<form id="form1" action="/users/saveBase" enctype="multipart/form-data" method="post">
			<div class="table-responsive">
			<input id="school_id" value="1" type="hidden">
				<table id="basemsg" class="table table-bordered">
					<tr>
						<th colspan="2">基本信息</th>
					</tr>
					<tr>
						<td>学校中文名:</td>
						<td>
							<input id="zhname" type="text" name="school.schoolname" value="asdfasd">
							<span>*学校名称应完整，便于代理搜索</span>
						</td>
					</tr>
					<tr>
						<td>学校英文名:</td>
						<td>
							<input id="enname" type="text" name="school.enname" value="asdfasdfas">
							<span>*学校名称应完整，便于代理搜索</span>
						</td>
					</tr>
					<tr>
						<td>学校logo:</td>
						<td>
					<span style="color: red">*你已经上传头像，可再次上传修改。</span>	
							<input id="logo" type="file" name="school.logo_path" data-path="F:\workspace\anneed\src\main\webapp\upload\1\logo\logo.png">
							<span>*图片格式（png，jpg，gif）仅用于2017 GEA全球合作伙伴大会，不作第二用途</span>
						</td>
					</tr>
				<tr>
						<td>学校官网:</td>
						<td>
							<input type="text" name="school.schoollink" value="asdfasdfasdf" ><span style="color: red"> </span>
						</td>
					</tr> 
					
					<tr>
						<td>国家类别:</td>
						<td>
							<select name="school.country" id="ddlCategory" >
						
								<option value="">请选择</option>
								<option value="英欧"  >英欧</option>
								<option value="美国" 	>美国</option>
								<option value="澳洲" 	>澳洲</option>
								<option value="加拿大" 	selected="selected">加拿大</option>
								<!-- <option value="瑞士" 	>瑞士</option>
								<option value="其他" 	>其他</option> -->
							</select>
						</td>
					</tr>
				</table>
			</div>
			<div id="modalbtn" class="clearfix">
			<div style="float: left;">
				<button class="btn btn-primary" data-toggle="modal" data-target="#myModal">文件上传</button>
			</div>
			<span style="color: red;font-size: 12px;float: left;margin-left: 20px;">注：1）文件格式为PPT（powerpoint）、PDF。如果有多个文件，请务必要压缩后再上传，单个文件大小限制10M以内
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2）上传的资料建议为培训当日演示的PPT、PDF，若未整理完，可延后上传 </span>
			</div>
			<div class="table-responsive">
				<table id="choosemsg" class="table table-bordered">
					<tr>
						<th colspan="2">其他信息</th>
					</tr>
					<tr>
						<td>学校关键词:</td>
						<td>
							<input type="text" name="school.keyword" value="1212312,dafsdfasdf">
							<span>*20字以内关键词请用英文'，'隔开</span>
						</td>
					</tr>
					<tr>
						<td>学校简介:</td>
						<td>
							<textarea name="school.schoolinfo"  id="" cols="30" rows="10" style="width:50vw;height: 30vw" placeholder="请输入学校介绍信息，500字以内">asdfasdf</textarea>
						</td>
					</tr>
					<tr>
						<td>学校特色:</td>
						<td>
							<textarea name="school.feature"  id="" cols="30" rows="10" style="width:50vw;height: 30vw" placeholder="请输入学校特色卖点，500字以内">asdfasdf</textarea>
						</td>
					</tr>
					<tr>
						<td>学校宣传视频:</td>
						<td>
							<textarea name="school.videolinks"  id="" cols="30" rows="10" style="width:50vw;height: 30vw" placeholder="如有，请输入学校视频在线观看链接多条则用英文'，'分隔">www.insearch.com.cn</textarea>
						</td>
					</tr>
					<tr>
						<td>是否有推广<br>激励政策：</td>
	
						<td><input class="radios" name="school.policy" type="radio" value="1"  					checked="checked">是</input>
							<input class="radios" name="school.policy" type="radio" value="0"  >否</input>
					
						<div id="textzhence" >
							<textarea name="school.policy_msg" id="" cols="30" rows="10" style="width:50vw;height: 30vw" placeholder="如有，请输入激励推广政策内容，500字以内">  sdfasdfasdfasdgdsfasdf</textarea>
						</div>
						</td>
					</tr>
				</table>
				<p class="text-center" style="margin-top: 30px;"><button id="btn" type="button" class="btn btn-info">提交</button></p>
			</div>
		</form>
	</div>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">文件上传</h4>
	            </div>
	            <div class="modal-body">
	            		<div id="menu">
	            			<a href="javascript:void(0)" id="pickfiles" onclick="javascript:;"><span class="glyphicon glyphicon-plus"></span><span>选择文件</span></a>
							<a href="javascript:void(0)" id="uploadfiles"><span class="glyphicon glyphicon-th-list"></span><span>上传文件</span></a>
							<a href="javascript:void(0)" id="delete"><span class="glyphicon glyphicon-minus"></span><span>删除文件</span></a>
	            		</div>
						<ul id="file-list">
						<!-- <li ><input type="checkbox" value='' ><span>5555.jpg</span></li> -->
					
						</ul>
						<ul>
							<li id="filetotal"> </li>
	<!-- 						<li id="uploadtotal"> </li> -->
						</ul>
						<!-- <button type="submit" class="btn btn-primary">提交</button> -->
					<span style="color:red">*请不要上传同名的文件，如果需要覆盖已上传的文件，请先删除已上传过的文件。</span>
	            	
	            </div>
	            <div class="modal-footer">
					<div id="showFileMsg" style="display: none;" class="clearfix">
						
						<div class="progress" style="width: 150px;float: right;">
						  <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
						    0%
						  </div>
						</div>
						<div style="float: right;margin-right: 10px;"><span class="showFilename"></span>上传中：</div>
					</div>
	            	
	            						
	                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	            </div>
	        </div>
	    </div>
	</div>
</div>

</body>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<!-- 批量文件上传 -->
	<script type="text/javascript"
		src="/js/plupload-2.3.1/js/plupload.full.min.js"></script>
	<script type="text/javascript"
		src="/js/plupload-2.3.1/js/i18n/zh_CN.js"></script>
		
<script type="text/javascript">
$(function(){
	$(".radios").click(function(){
		var val = $(this).val()
		console.log(val)
		if(val==1){
			$("#textzhence").css("display","block")
		}else{
			$("#textzhence").css("display","none")
		}
	})
	
	

	 $("#btn").click(function(){
	/* 		var logopath=$("#logo").attr("data-path");
		var zhname = $("#zhname").val();
			var logo = $("#logo").val();
		var enname = $("#enname").val();
		var ddlCategory = $("#ddlCategory").val()
		if(zhname==""){
			alert("学校中文名不能为空!")
			return;
		}else if(enname==""){
			alert("学校英文名不能为空!")
			return;
/* 		}else if(logo==""&&logopath.length==0){
			
			alert("请添加学校logo")
			return; */
	/* 	}else if(!/\.(gif|jpg|jpeg|png|GIF|JPG|PNG)$/.test(logo)&&logopath.length==0){
			alert("图片格式错误!")
			return; */
		/* }else if(ddlCategory==0){
			alert("请选择国家类别")
			return;
		}else *//* { */ 
			$("#form1").submit();
		 	// $("#form1").submit()
	
	}) 
	
	
	 $.ajax({
		  url: "/users/getFilesList",
		
		  success: function(data){
			 var con=data.rows;
			 var content="";
			 for (x in con)
			 {
				 content+='<li ><input type="radio" name="radio" value='+con[x].id+' ><span>'+con[x].filename+'</span></li>';				 
			 }
			  
		   $("#file-list").html(content);
		  }
		});
	$("#delete").click(function(){
		var spanval = $("#file-list input[type='radio']:checked").parent('li').find("span");
		var spanarr="";
		console.log(spanval.length);
		for (var i = 0; i < spanval.length; i++) {
			spanarr +=$(spanval[i]).text()+","

		}
		console.log(spanarr)
		 $.ajax({
			  url: "/users/deleteFile",
				data:{filenames:spanarr},
			  success: function(data){
					if(data=='success'){
						
					 $.ajax({
						  url: "/users/getFilesList",
						
						  success: function(data){
							 var con=data.rows;
							 var content="";
							 for (x in con)
							 {
								content+='<li ><input type="radio" name="radio" value='+con[x].id+' ><span>'+con[x].filename+'</span></li>';				 
							 }
							  
						   $("#file-list").html(content);
						   var len = $("#file-list li").length;
						   $("#filetotal").html("您已上传：<span style='color:red'>"+len+"</span>/20个文件");
						  }
						});
					}
				  
			  }
			});
	});

})
</script>
<script type="text/javascript" src="/js/user-js/users-uploadfiles.js"></script>


</html>