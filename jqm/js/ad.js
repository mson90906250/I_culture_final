//使用廣告 
//放置圖片檔   adSrcImg 放置文字檔  adname 	 超連結     adlink
//廣告系統名稱 adarySrc 廣告系統文字 adaryName 超連結網址 arrayadlink
//

var adindex=0;   //目前的頁數
var adSrcImg,adName,adlink;//目前取得的圖檔及文字檔及超連結

// $(function(){
// 			setInterval(ad,5000);
// })

//圖檔陣列
var adarySrc = new Array("cat1.jpg","cat2.jpg","cat3.jpg","cat4.jpg");
//文字檔陣列
var adaryName = new Array("撒嬌","賣萌","討飯","吐舌");
//超連結
var arrayadlink = new Array("http://pso2.jp/players/boost/","https://www.google.com.tw/","https://tw.yahoo.com/","https://apk.tw/forum.php");

function home_ad(){  //上一頁
	adindex ++;
	if(adindex>3){adindex=0;}//循環手段
	adSrcImg="images/"+adarySrc[adindex];//目前取得的圖檔名稱
	adName=adaryName[adindex];//目前取得的文字檔名稱
	adlink=arrayadlink[adindex];
	$("#adsrcimg").attr("src",adSrcImg);//動態顯示圖片
	$("#adname").text(adName);//動態顯示文字檔
	$("#adlink").attr("href",adlink);//動態超連結
}