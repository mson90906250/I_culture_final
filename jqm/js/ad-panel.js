var panelindex=0;   //目前的頁數
var panelSrcImgcat,panelNamecat;//目前取得的圖檔及文字檔

//圖檔陣列
var panelaryCatSrc = new Array("01.jpg","02.jpg","03.jpg","04.jpg","05.jpg","06.jpg","07.jpg","08.jpg","09.jpg","10.jpg");
//文字檔陣列
var panelaryCatName = new Array("店家0","店家1","店家2","店家3","店家4","店家5","店家6","店家7","店家8","店家9");


$( document ).on( "pagecreate", "#demo-page", function() {
    $( document ).on( "swipeleft swiperight", "#demo-page", function( e ) {
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
		$("#srcing").fadeOut();
		$("#srcing").attr("src",panelSrcImgcat).fadeIn();//動態顯示圖片
		$("#name").text(panelNamecat);//動態顯示文字檔
	}

	function adnext(){  //下一頁
		panelindex ++;
		if(panelindex>9){panelindex=0;}//循環手段
		panelSrcImgcat="images/"+panelaryCatSrc[panelindex];//目前取得的圖檔名稱
		panelNamecat=panelaryCatName[panelindex];//目前取得的文字檔名稱
		$("#srcing").fadeOut();
		$("#srcing").attr("src",panelSrcImgcat).fadeIn();//動態顯示圖片
		$("#name").text(panelNamecat);//動態顯示文字檔
	}