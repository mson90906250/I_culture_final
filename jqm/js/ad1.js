//使用廣告 
//放置圖片檔   adSrcImg 放置文字檔  adname 	 超連結     adlink
//廣告系統名稱 adarySrc 廣告系統文字 adaryName 超連結網址 arrayadlink
//

var adindex1=0;   //目前的頁數
var adSrcImg1,adName1;//目前取得的圖檔及文字檔及超連結

$(function(){
			setInterval(ad1,4000);
		})


//文字檔陣列
var adaryName1 = new Array("散文特展","名人傳記特展","名畫特展");



function ad1(){  //上一頁
	adindex1 ++;
	if(adindex1>2){adindex1=0;}//循環手段

	adName1=adaryName1[adindex1];//目前取得的文字檔名稱


	$("#adname1").text(adName1);//動態顯示文字檔
}