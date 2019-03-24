$(function(e){
	//setInterval(showprev , 1000);
	$("#prev").bind('click',showprev);
	$("#next").bind('click',shownext);

	var index=0;   //目前的頁數
	var SrcImgcat,Namecat;//目前取得的圖檔及文字檔

	//圖檔陣列
	var aryCatSrc = new Array("cat1.jpg","cat2.jpg","cat3.jpg","cat4.jpg");
	//文字檔陣列
	var aryCatName = new Array("撒嬌","賣萌","討飯","吐舌");

	function showprev(){  //上一頁
		index --;
		if(index<0){index=6;}//循環手段
		SrcImgcat="images/"+aryCatSrc[index];//目前取得的圖檔名稱
		Namecat=aryCatName[index];//目前取得的文字檔名稱
		$("#srcimg").attr("src",SrcImgcat);//動態顯示圖片
		$("#name").text(Namecat);//動態顯示文字檔
	}

	function shownext(){  //下一頁
		index ++;
		if(index>6){index=0;}//循環手段
		SrcImgcat="images/"+aryCatSrc[index];//目前取得的圖檔名稱
		Namecat=aryCatName[index];//目前取得的文字檔名稱
		$("#srcimg").attr("src",SrcImgcat);//動態顯示圖片
		$("#name").text(Namecat);//動態顯示文字檔
	}
})
		
