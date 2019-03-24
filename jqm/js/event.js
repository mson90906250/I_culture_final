function event_getData(){
	
	$.ajax({
		type:"GET",
		url:"https://tcnr1624.000webhostapp.com/select_db.php",
		dataType:"json",//將收到資料轉成json
		success:show,
		error:function(){
			alert("資料錯誤");
		}
	});
	$.ajax({
		type:"GET",
		url:"https://tcnr1624.000webhostapp.com/select_db_content.php",
		dataType:"json",
		success:content,
		error:function(){
			alert("資料錯誤");
		}
	});			
}
function show(data){
	$("#list").empty();
	for(i=0; i<data.length;i++){
	strHTML='<li><a href="#content'+data[i].ID+'" data-ajax="false"><img src="https://tcnr1624.000webhostapp.com/image/'+data[i].Event_Image+'"><h2>'+data[i].Event_Date+'</h2><p>'+data[i].Event_Title+'</p></a></li>';	
	$("#list").append(strHTML);
		  	$( "#list" ).listview( "refresh" );	
	}			
}
function content(data){
	$("#event_content1").empty();
	$("#event_content2").empty();
	$("#event_content3").empty();
	$("#event_content4").empty();
	$("#event_content5").empty();
	$("#event_content6").empty();
	$("#event_content7").empty();
	contentHTML1='<table width="100%"><tr><td align="center" valign="center" ><img src="https://tcnr1624.000webhostapp.com/image/'+data.Slider_Image+'" name="showimg1" id="showimg1" width="100%"></td></tr></table><div><h2>活動日期：'+data[0].Content_date+'</h2><br><h4>'+data[0].Content_title+'</h4><br><h4>'+data[0].Content_content+'</h4></div>';
	$("#event_content1").append(contentHTML1);
	contentHTML2='<table width="100%"><tr><td align="center" valign="center" ><img src="https://tcnr1624.000webhostapp.com/image/'+data.Slider_Image+'" name="showimg2" id="showimg2" width="100%"></td></tr></table><div><h2>活動日期：'+data[5].Content_date+'</h2><br><h4>'+data[5].Content_title+'</h4><br><h4>'+data[5].Content_content+'</h4></div>';
	$("#event_content2").append(contentHTML2);
	contentHTML3='<table width="100%"><tr><td align="center" valign="center" ><img src="https://tcnr1624.000webhostapp.com/image/'+data.Slider_Image+'" name="showimg3" id="showimg3" width="100%"></td></tr></table><div><h2>活動日期：'+data[9].Content_date+'</h2><br><h4>'+data[9].Content_title+'</h4><br><h4>'+data[9].Content_content+'</h4></div>';
	$("#event_content3").append(contentHTML3);
	contentHTML4='<table width="100%"><tr><td align="center" valign="center" ><img src="https://tcnr1624.000webhostapp.com/image/'+data.Slider_Image+'" name="showimg4" id="showimg4" width="100%"></td></tr></table><div><h2>活動日期：'+data[14].Content_date+'</h2><br><h4>'+data[14].Content_title+'</h4><br><h4>'+data[14].Content_content+'</h4></div>';
	$("#event_content4").append(contentHTML4);
	contentHTML5='<table width="100%"><tr><td align="center" valign="center" ><img src="https://tcnr1624.000webhostapp.com/image/'+data.Slider_Image+'" name="showimg5" id="showimg5" width="100%"></td></tr></table><div><h2>活動日期：'+data[20].Content_date+'</h2><br><h4>'+data[20].Content_title+'</h4><br><h4>'+data[20].Content_content+'</h4></div>';
	$("#event_content5").append(contentHTML5);
	contentHTML6='<table width="100%"><tr><td align="center" valign="center" ><img src="https://tcnr1624.000webhostapp.com/image/'+data.Slider_Image+'" name="showimg6" id="showimg6" width="100%"></td></tr></table><div><h2>活動日期：'+data[24].Content_date+'</h2><br><h4>'+data[24].Content_title+'</h4><br><h4>'+data[24].Content_content+'</h4></div>';
	$("#event_content6").append(contentHTML6);
	contentHTML7='<table width="100%"><tr><td align="center" valign="center" ><img src="https://tcnr1624.000webhostapp.com/image/'+data.Slider_Image+'" name="showimg7" id="showimg7" width="100%"></td></tr></table><div><h2>活動日期：'+data[30].Content_date+'</h2><br><h4>'+data[29].Content_title+'</h4><br><h4>'+data[29].Content_content+'</h4></div>';
	$("#event_content7").append(contentHTML7);			
}