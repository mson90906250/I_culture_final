var panelindex=0;   //目前的頁數
var panelSrcImgcat,panelSrcImgcat1,panelSrcImgcat2,panelNamecat,panelNamecat1,panelNamecat2;//目前取得的圖檔及文字檔

//圖檔陣列
var panelaryCatSrc = new Array("01.jpg","02.jpg","03.jpg","04.jpg","05.jpg","06.jpg","07.jpg","08.jpg","09.jpg","10.jpg");
//文字檔陣列
var panelaryCatName = new Array("店家0","店家1","店家2","店家3","店家4","店家5","店家6","店家7","店家8","店家9");

//圖檔陣列
var panelaryCatSrc1 = new Array("02.jpg","03.jpg","04.jpg","05.jpg","06.jpg","07.jpg","08.jpg","09.jpg","10.jpg","01.jpg");
//文字檔陣列
var panelaryCatName1 = new Array("店家1","店家2","店家3","店家4","店家5","店家6","店家7","店家8","店家9","店家10");

//圖檔陣列
var panelaryCatSrc2 = new Array("03.jpg","04.jpg","05.jpg","06.jpg","07.jpg","08.jpg","09.jpg","10.jpg","01.jpg","02.jpg");
//文字檔陣列
var panelaryCatName2 = new Array("店家2","店家3","店家4","店家5","店家6","店家7","店家8","店家9","店家10","店家1");

$( document ).on( "pagecreate", "#show", function() {
    $( document ).on( "swipeleft swiperight", "#show", function( e ) {
        if ( $( ".ui-page-active" ).jqmData( "panel" ) !== "open" ) {
            if ( e.type === "swipeleft" ) {
                adnext();
            } else if ( e.type === "swiperight" ) {
                adprev();
            }
        }
    });
});

function adprev(){  //上一頁
		panelindex --;
		if(panelindex<0){panelindex=9;}//循環手段
		panelSrcImgcat="images/"+panelaryCatSrc[panelindex];//目前取得的圖檔名稱
		panelNamecat=panelaryCatName[panelindex];//目前取得的文字檔名稱	

		panelSrcImgcat1="images/"+panelaryCatSrc1[panelindex];//目前取得的圖檔名稱
		panelNamecat1=panelaryCatName1[panelindex];//目前取得的文字檔名稱	

		panelSrcImgcat2="images/"+panelaryCatSrc2[panelindex];//目前取得的圖檔名稱
		panelNamecat2=panelaryCatName2[panelindex];//目前取得的文字檔名稱		
		$("#owner").fadeOut();
		$("#owner1").fadeOut();
		$("#owner2").fadeOut();
		$("#owner").attr("src",panelSrcImgcat).fadeIn();//動態顯示圖片
		$("#owner1").attr("src",panelSrcImgcat1).fadeIn();//動態顯示圖片
		$("#owner2").attr("src",panelSrcImgcat2).fadeIn();//動態顯示圖片
		$("#name").text(panelNamecat);//動態顯示文字檔
		$("#name1").text(panelNamecat1);//動態顯示文字檔
		$("#name2").text(panelNamecat2);//動態顯示文字檔
	}

	function adnext(){  //下一頁
		panelindex ++;
		if(panelindex>9){panelindex=0;}//循環手段
		panelSrcImgcat="images/"+panelaryCatSrc[panelindex];//目前取得的圖檔名稱
		panelNamecat=panelaryCatName[panelindex];//目前取得的文字檔名稱

		panelSrcImgcat1="images/"+panelaryCatSrc1[panelindex];//目前取得的圖檔名稱
		panelNamecat1=panelaryCatName1[panelindex];//目前取得的文字檔名稱	

		panelSrcImgcat2="images/"+panelaryCatSrc2[panelindex];//目前取得的圖檔名稱
		panelNamecat2=panelaryCatName2[panelindex];//目前取得的文字檔名稱		
		$("#owner").fadeOut();
		$("#owner1").fadeOut();
		$("#owner2").fadeOut();
		$("#owner").attr("src",panelSrcImgcat).fadeIn();//動態顯示圖片
		$("#owner1").attr("src",panelSrcImgcat1).fadeIn();//動態顯示圖片
		$("#owner2").attr("src",panelSrcImgcat2).fadeIn();//動態顯示圖片
		$("#name").text(panelNamecat);//動態顯示文字檔
		$("#name1").text(panelNamecat1);//動態顯示文字檔
		$("#name2").text(panelNamecat2);//動態顯示文字檔
	}