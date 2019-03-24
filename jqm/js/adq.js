//使用規則:adaryimgsrc 放置 廣告圖片，adaryimgtitle 放置廣告台詞
//#adimg 廣告圖片名稱 #adtitle廣告台詞名稱

// $(function(){
// 	setInterval(ad,2000);
// });

	var adindex=0;// 目前書籍的索引
	var adImgSrc;// 目前取得的書籍圖檔名、書籍名稱
	// 書籍圖片
	var adaryImgSrc=new Array("slider1.jpg","slider2.jpg","slider3.jpg","slider4.jpg","slider5.jpg");

	
	function ad(){	// 上一筆
		adindex++;
		if(adindex>4){adindex=0;}// 可循環
		adImgSrc="images/"+adaryImgSrc[adindex];// 目前取得的圖檔名稱
		$("#showimg").attr("src",adImgSrc);// 動態顯示圖片
		
	}

	