//使用廣告 
//放置圖片檔   adSrcImg 放置文字檔  adname 	 超連結     adlink
//廣告系統名稱 adarySrc 廣告系統文字 adaryName 超連結網址 arrayadlink
//

var adindex2=0;   //目前的頁數
var adlink2,adName2;//目前取得的圖檔及文字檔及超連結

$(function(){
			setInterval(ad2,3000);
		})


var adaryName2 = new Array("大特價A01","大特價A02","大特價A03","大特價A04");
//超連結
var arrayadlink2 = new Array("http://exam.tcnr13.com/number.html","http://exam.tcnr13.com/number.html","http://exam.tcnr13.com/number.html","http://exam.tcnr13.com/number.html");

function ad2(){  //上一頁
	adindex2 ++;
	if(adindex2>3){adindex2=0;}//循環手段
	adName2=adaryName2[adindex2];//目前取得的文字檔名稱
	adlink2=arrayadlink2[adindex2];
	$("#adname2").text(adName2);//動態顯示文字檔
	$("#adlink2").attr("href",adlink2);//動態超連結
}