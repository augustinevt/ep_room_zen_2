
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



var showHouse = function(marker){
  $.ajax({url: 'houses/'+marker.id, dataType: 'script', success: function(){
    $('#house-map-show').append('<I heart jQuery>');
  }});

};
