


  function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
      center: {lat:  45.5231, lng: -122.6065},
      zoom: 12,
      scrollwheel: false,
      zoomControlOptions: {
        position: google.maps.ControlPosition.LEFT_BOTTOM
      },
      streetViewControlOptions: {
        position: google.maps.ControlPosition.LEFT_BOTTOM
      },
      mapTypeControl: false,
      styles :
      [{"elementType":"geometry","stylers":[{"hue":"#ff4400"},{"saturation":-68},{"lightness":-4},{"gamma":0.72}]},{"featureType":"road","elementType":"labels.icon"},{"featureType":"landscape.man_made","elementType":"geometry","stylers":[{"hue":"#0077ff"},{"gamma":3.1}]},{"featureType":"water","stylers":[{"hue":"#00ccff"},{"gamma":0.44},{"saturation":-33}]},{"featureType":"poi.park","stylers":[{"hue":"#44ff00"},{"saturation":-23}]},{"featureType":"water","elementType":"labels.text.fill","stylers":[{"hue":"#007fff"},{"gamma":0.77},{"saturation":65},{"lightness":99}]},{"featureType":"water","elementType":"labels.text.stroke","stylers":[{"gamma":0.11},{"weight":5.6},{"saturation":99},{"hue":"#0091ff"},{"lightness":-86}]},{"featureType":"transit.line","elementType":"geometry","stylers":[{"lightness":-48},{"hue":"#ff5e00"},{"gamma":1.2},{"saturation":-23}]},{"featureType":"transit","elementType":"labels.text.stroke","stylers":[{"saturation":-64},{"hue":"#ff9100"},{"lightness":16},{"gamma":0.47},{"weight":2.7}]}]
    });
  }

  var removeMarkers = function(){
    for (var i = 0; i < map_markers.length; i++) {
      map_markers[i].setMap(null);
    }
    map_markers = [];
  };

  var addMarkers = function(new_markers) {
    for( i = 0; i < new_markers.length; i++ ) {
      var infowindow = new google.maps.InfoWindow({
        content: '<h1>This entry has no content</h1>'
      });
      var marker = new google.maps.Marker({
        position: {lat: markers[i][1], lng: markers[i][2]},
        map: map,
        animation: google.maps.Animation.BOUNCE,
        title: markers[i][0],
        id: markers[i][4],
        windowContent: '<h1>' + markers[i][0] +'<img src="'+markers[i][3]+'" alt=" picture of  '+markers[i][0]+'" >'+ '</h1>'
      });

      marker.addListener('click', function() {
        // infowindow.setContent(this.windowContent);
        // infowindow.open(map, this);
        showHouse(this);
      });

      map_markers.push(marker);
    }
  };

  var renderMap = function(){
    initMap();
    addMarkers();
  };

  var showHouse = function(marker){
    $.ajax({url: 'houses/'+marker.id, dataType: 'script', success: function(){
      $('#house-map-show').append('<I heart jQuery>');
    }});

  };
