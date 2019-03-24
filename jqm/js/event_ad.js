//廣告的使用規則 adimgsrcary:放置圖片陣列  adnameary:廣告詞陣列 adlinkary=超連結陣列
//adimg:廣告圖 adname:廣告名 adlink:超連結
//載入ad.js並將所需變更圖片id設為showimg,文字id設為showname即可顯示廣告ad效果
// $(function(){
// 	setInterval(ad,3000)  //每隔N秒換圖,直接呼叫function即可
// });
var adindex=0; //目前的索引
var adimg1,adimg2;//取得目前的圖檔
//圖片
var adimgsrcary1=new Array("slider1_1.jpg","slider1_2.jpg","slider1_3.jpg","slider1_4.jpg",
	"slider1_5.jpg");
var adimgsrcary2=new Array("slider2_1.jpg","slider2_2.jpg","slider2_3.jpg","slider2_4.jpg",
	"slider2_5.jpg");
var adimgsrcary3=new Array("slider3_1.jpg","slider3_2.jpg","slider3_3.jpg","slider3_4.jpg",
	"slider3_5.jpg");
var adimgsrcary4=new Array("slider4_1.jpg","slider4_2.jpg","slider4_3.jpg","slider4_4.jpg",
	"slider4_5.jpg");
var adimgsrcary5=new Array("slider5_1.jpg","slider5_2.jpg","slider5_3.jpg","slider5_4.jpg",
	"slider5_5.jpg");
var adimgsrcary6=new Array("slider6_1.jpg","slider6_2.jpg","slider6_3.jpg","slider6_4.jpg",
	"slider6_5.jpg");
var adimgsrcary7=new Array("slider7_1.jpg","slider7_2.jpg","slider7_3.jpg","slider7_4.jpg",
	"slider7_5.jpg");


function event_ad(){//廣告
	adindex++;
	if(adindex>4){adindex=0}
		adimg1="https://tcnr1624.000webhostapp.com/image/"+adimgsrcary1[adindex];//取得目前產品圖片
		$("#showimg1").attr("src",adimg1);//動態顯示圖片 attr取代裡面的變數 src換成setSrc
		adimg2="https://tcnr1624.000webhostapp.com/image/"+adimgsrcary2[adindex];
		$("#showimg2").attr("src",adimg2);
		adimg3="https://tcnr1624.000webhostapp.com/image/"+adimgsrcary3[adindex];
		$("#showimg3").attr("src",adimg3);
		adimg4="https://tcnr1624.000webhostapp.com/image/"+adimgsrcary4[adindex];
		$("#showimg4").attr("src",adimg4);
		adimg5="https://tcnr1624.000webhostapp.com/image/"+adimgsrcary5[adindex];
		$("#showimg5").attr("src",adimg5);
		adimg6="https://tcnr1624.000webhostapp.com/image/"+adimgsrcary6[adindex];
		$("#showimg6").attr("src",adimg6);
		adimg7="https://tcnr1624.000webhostapp.com/image/"+adimgsrcary7[adindex];
		$("#showimg7").attr("src",adimg7);														
}