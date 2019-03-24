//使用廣告 
//放置圖片檔   adSrcImg 放置文字檔  adname 	 超連結     adlink
//廣告系統名稱 adarySrc 廣告系統文字 adaryName 超連結網址 arrayadlink
//

var adindex3=0;   //目前的頁數
var adSrcImg3;//目前取得的圖檔及文字檔及超連結

$(function(){
			setInterval(ad3,5000);
		})

//圖檔陣列
var adarySrc3 = new Array("01.jpg","02.jpg","03.jpg","04.jpg","05.jpg","06.jpg"
						,"07.jpg","08.jpg","09.jpg","10.jpg","11.jpg","12.jpg");


function ad3(){  //上一頁
	adindex3 ++;
	if(adindex3>11){adindex3=0;}//循環手段
	adSrcImg3="images/"+adarySrc3[adindex3];//目前取得的圖檔名稱
	
	$("#adsrcimg3").attr("src",adSrcImg3);//動態顯示圖片
	
}