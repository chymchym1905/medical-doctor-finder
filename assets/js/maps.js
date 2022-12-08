function loadMap() {

    var mapOptions = {
        center:new google.maps.LatLng(10.772325, 106.658722),
        zoom:9,
        mapTypeId:google.maps.MapTypeId.ROADMAP
    };

    var map = new google.maps.Map(document.getElementById("maps"),mapOptions);

    var marker = new google.maps.Marker({
        position: new google.maps.LatLng(10.772325, 106.658722),
        map: map,
        draggable: true
    });

    marker.setMap(map);

    var infowindow = new google.maps.InfoWindow({
        content: "Medical Doctor Finder, Ho Chi Minh City"
    });

    infowindow.open(map,marker);
}

google.maps.event.addDomListener(window, 'load', loadMap);