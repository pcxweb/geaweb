//users 批量上传文件
	var schoolid=$("#school_id").val();
	if(!schoolid.length>0){
		window.location.href("/login.html");
	}
	
	showup(schoolid);
	function showup(schoolid){
		
		$.ajax({
			url: "/users/getFileCountAndSize",
			data:{id:schoolid},
			success: function(data){
				/* var size=data.filesize;*/
				var count=data.filecount;
				
				var uploadsize=data.filecount;
				$("#filetotal").html("您已上传：<span style='color:red'>"+uploadsize+"</span>/20个文件");
			}
		});
	}
	
	
	var uploader = new plupload.Uploader({
        // General settings
        runtimes : 'html5,flash,silverlight,html4',
		browse_button : 'pickfiles', // you can pass in id...
        url : '/users/savefiles',
        chunk_size : '100mb',
        unique_names : true,
        
        prevent_duplicates : false, //不允许选取重复文件
        // Resize images on client-side if we can
        resize : { width : 320, height : 240, quality : 90 },
        
        filters : {
            max_file_size : '100mb',

			// Specify what files to browse for
            mime_types: [
                {title : "office files", extensions : "pdf,pptx,ppt"},
                { title : "Zip files", extensions : "zip" }
            ]
        },
 
		flash_swf_url : '/js/plupload-2.3.1/js/moxie.min.js',
		silverlight_xap_url : '/js/plupload-2.3.1/js/Moxie.xap',
         
        
        preinit : {
            Init: function(up, info) {
              
            },
 
            UploadFile: function(up, file) {
              
 				// console.log(file)
               
            }
        },
 
        
        init : {
			PostInit: function() {
				
			
				document.getElementById('uploadfiles').onclick = function() {
					uploader.start();
					return false;
				};
			},

			Browse: function(up) {
                
            },

            Refresh: function(up) {
                
            },
 
            StateChanged: function(up) {
               
            },
 
            QueueChanged: function(up) {
                
            },

			OptionChanged: function(up, name, value, oldValue) {
				
			},

			BeforeUpload: function(up, file) {
				
				
			},
 
            UploadProgress: function(up, file) {
            	 var percent = file.percent;  
            	 // console.log(file.name+"已经上传了"+percent+"%");
            
            	 // $("#showFileMsg").html(file.name+"已经上传了"+percent+"%");
            	 $("#showFileMsg").css("display","block")
            	 $("#showFileMsg .progress-bar").attr("aria-valuenow",percent);
            	 $("#showFileMsg .progress-bar").css("width",percent+"%");
            	 $("#showFileMsg .progress-bar").text(percent+"%")
            	 if(percent==100){
            	 	setTimeout(function(){$("#showFileMsg").hide()}, 2000);
            	 }
            	
             },

			FileFiltered: function(up, file) {
				
			},
 
            FilesAdded: function(up, files) {
             plupload.each(files, function(file) {
            	 	
            	 
                    log('文件名:', file.name);
                });
            },
 
            FilesRemoved: function(up, files) {
                
 
                plupload.each(files, function(file) {
            		
                });
            },
 
            FileUploaded: function(up, file, info) {
                
            },
 
            ChunkUploaded: function(up, file, info) {
                
            },

			UploadComplete: function(up, files) {
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
				 
				 
				 showup(schoolid);
				 
				
			},

			Destroy: function(up) {
				
 
            Error: function(up, args) {
              
	            console.log(args);
	            if(args.code=="-602"){
	            	alert("文件不能重复,请重新选择!");
	            }else if(args.code=="-600"){
	            	alert("文件超过100M,请重新选择!");
	            }
            }
            
        }
    });
 
 
    function log() {
        var str = "";
 
        plupload.each(arguments, function(arg) {
            var row = "";
 
            if (typeof(arg) != "string") {
                plupload.each(arg, function(value, key) {
                    // Convert items in File objects to human readable form
                    if (arg instanceof plupload.File) {
                        // Convert status to human readable
                        switch (value) {
                            case plupload.QUEUED:
                                value = 'QUEUED';
                                break;
 
                            case plupload.UPLOADING:
                                value = 'UPLOADING';
                                break;
 
                            case plupload.FAILED:
                                value = 'FAILED';
                                break;
 
                            case plupload.DONE:
                                value = 'DONE';
                                break;
                        }
                    }
 
                    if (typeof(value) != "function") {
                        row += (row ? ', ' : '') + key + '=' + value;
                    }
                });
 
                str += row + " ";
            } else {
                str += arg + " ";
            }
        });
 
        var log = document.getElementById('console');
        log.innerHTML += str + "\n";
    }

	uploader.init();


	
	
	
	