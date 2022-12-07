function loadMap() {

    var mapOptions = {
        center:new google.maps.LatLng(17.609993, 83.221436),
        zoom:9,
        mapTypeId:google.maps.MapTypeId.ROADMAP
    };

    var map = new google.maps.Map(document.getElementById("sample"),mapOptions);
}

google.maps.event.addDomListener(window, 'load', loadMap);