//home panel
	$( document ).on( "pagecreate", "#home", function() {
      $( document ).on( "swipeleft swiperight", "#home", function( e ) {
        // We check if there is no open panel on the page because otherwise
        // a swipe to close the left panel would also open the right panel (and v.v.).
        // We do this by checking the data that the framework stores on the page element (panel: open).
        if ( $( ".ui-page-active" ).jqmData( "panel" ) !== "open" ) {
          if ( e.type === "swipeleft" ) {
            $( "#home-panelr" ).panel( "open" );
          }else if ( e.type === "swiperight" ) {
            $( "#home-panell" ).panel( "open" );
          }
        }
      });
    });

    //about panel
    $( document ).on( "pagecreate", "#about", function() {
      $( document ).on( "swipeleft swiperight", "#about", function( e ) {
        // We check if there is no open panel on the page because otherwise
        // a swipe to close the left panel would also open the right panel (and v.v.).
        // We do this by checking the data that the framework stores on the page element (panel: open).
        if ( $( ".ui-page-active" ).jqmData( "panel" ) !== "open" ) {
          if ( e.type === "swipeleft" ) {
            $( "#about-panelr" ).panel( "open" );
          }else if ( e.type === "swiperight" ) {
            $( "#about-panell" ).panel( "open" );
          }
        }
      });
    });

    //event panel
    $( document ).on( "pagecreate", "#event", function() {
      $( document ).on( "swipeleft swiperight", "#event", function( e ) {
        // We check if there is no open panel on the page because otherwise
        // a swipe to close the left panel would also open the right panel (and v.v.).
        // We do this by checking the data that the framework stores on the page element (panel: open).
        if ( $( ".ui-page-active" ).jqmData( "panel" ) !== "open" ) {
          if ( e.type === "swipeleft" ) {
            $( "#event-panelr" ).panel( "open" );
          }else if ( e.type === "swiperight" ) {
            $( "#event-panell" ).panel( "open" );
          }
        }
      });
    });

    //shop01 panel
    $( document ).on( "pagecreate", "#shop01", function() {
      $( document ).on( "swipeleft swiperight", "#shop01", function( e ) {
        // We check if there is no open panel on the page because otherwise
        // a swipe to close the left panel would also open the right panel (and v.v.).
        // We do this by checking the data that the framework stores on the page element (panel: open).
        if ( $( ".ui-page-active" ).jqmData( "panel" ) !== "open" ) {
          if ( e.type === "swipeleft" ) {
            $( "#shop01-panelr" ).panel( "open" );
          }else if ( e.type === "swiperight" ) {
            $( "#shop01-panell" ).panel( "open" );
          }
        }
      });
    });

    //favorite panel
    $( document ).on( "pagecreate", "#favorite", function() {
      $( document ).on( "swipeleft swiperight", "#favorite", function( e ) {
        // We check if there is no open panel on the page because otherwise
        // a swipe to close the left panel would also open the right panel (and v.v.).
        // We do this by checking the data that the framework stores on the page element (panel: open).
        if ( $( ".ui-page-active" ).jqmData( "panel" ) !== "open" ) {
          if ( e.type === "swipeleft" ) {
            $( "#favorite-panelr" ).panel( "open" );
          }else if ( e.type === "swiperight" ) {
            $( "#favorite-panell" ).panel( "open" );
          }
        }
      });
    });

    //more panel
    $( document ).on( "pagecreate", "#more", function() {
      $( document ).on( "swipeleft swiperight", "#more", function( e ) {
        // We check if there is no open panel on the page because otherwise
        // a swipe to close the left panel would also open the right panel (and v.v.).
        // We do this by checking the data that the framework stores on the page element (panel: open).
        if ( $( ".ui-page-active" ).jqmData( "panel" ) !== "open" ) {
          if ( e.type === "swipeleft" ) {
            $( "#more-panelr" ).panel( "open" );
          }else if ( e.type === "swiperight" ) {
            $( "#more-panell" ).panel( "open" );
          }
        }
      });
    });

    //bus panel
    $( document ).on( "pagecreate", "#bus", function() {
      $( document ).on( "swipeleft swiperight", "#bus", function( e ) {
        // We check if there is no open panel on the page because otherwise
        // a swipe to close the left panel would also open the right panel (and v.v.).
        // We do this by checking the data that the framework stores on the page element (panel: open).
        if ( $( ".ui-page-active" ).jqmData( "panel" ) !== "open" ) {
          if ( e.type === "swipeleft" ) {
            $( "#bus-panelr" ).panel( "open" );
          }else if ( e.type === "swiperight" ) {
            $( "#bus-panell" ).panel( "open" );
          }
        }
      });
    });

    //ubike panel
    $( document ).on( "pagecreate", "#ubike", function() {
      $( document ).on( "swipeleft swiperight", "#ubike", function( e ) {
        // We check if there is no open panel on the page because otherwise
        // a swipe to close the left panel would also open the right panel (and v.v.).
        // We do this by checking the data that the framework stores on the page element (panel: open).
        if ( $( ".ui-page-active" ).jqmData( "panel" ) !== "open" ) {
          if ( e.type === "swipeleft" ) {
            $( "#ubike-panelr" ).panel( "open" );
          }else if ( e.type === "swiperight" ) {
            $( "#ubike-panell" ).panel( "open" );
          }
        }
      });
    });

    //about_us panel
    $( document ).on( "pagecreate", "#about_us", function() {
      $( document ).on( "swipeleft swiperight", "#about_us", function( e ) {
        // We check if there is no open panel on the page because otherwise
        // a swipe to close the left panel would also open the right panel (and v.v.).
        // We do this by checking the data that the framework stores on the page element (panel: open).
        if ( $( ".ui-page-active" ).jqmData( "panel" ) !== "open" ) {
          if ( e.type === "swipeleft" ) {
            $( "#about_us-panelr" ).panel( "open" );
          }else if ( e.type === "swiperight" ) {
            $( "#about_us-panell" ).panel( "open" );
          }
        }
      });
    });