
var firebase = app_firebase;
var uid = null;
firebase.auth().onAuthStateChanged(function (user) {
    if (user) {
        // User is signed in.
        uid = user.uid;
    } else {
        uid = null;
        window.location.replace("login.aspx");
    }
});

function logOut() {
    firebase.auth().signOut();
    console.log("Log Out");
}

function test() {

    var user = firebase.auth().currentUser;

    if (user) {
        // User is signed in.
        console.log(uid);
    } else {
        // No user is signed in.
        console.log("Cannot get UID");
    }
}

var firebaseRef = app_firebase.database();             //database reference
var ref = firebaseRef.ref('User');
ref.on('value', gotData, errData)

function gotData(data) {

    //console.log(data.val());
    var users = data.val();
    var keys = Object.keys(users);
    console.log(keys);

    for (var i = 0; i < keys.length; i++) {
        var k = keys[i];
        var initials = users[k].initials;
        var user = users[k].user;
        console.log(initials, user);
    } 
}

function errData(err) {
    console.log("Error!");
    console.log(err);

}

// Note: This example requires that you consent to location sharing when
// prompted by your browser. If you see the error "The Geolocation service
// failed.", it means you probably did not give permission for the browser to
// locate you.
var map, infoWindow;
function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
        center: { lat: -34.397, lng: 150.644 },
        zoom: 6
    });
    infoWindow = new google.maps.InfoWindow;

    setMarkers(map);


    // Try HTML5 geolocation.
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function (position) {
            var pos = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
            };

            infoWindow.setPosition(pos);
            infoWindow.setContent('Location found.');
            infoWindow.open(map);
            map.setCenter(pos);
        }, function () {
            handleLocationError(true, infoWindow, map.getCenter());
        });
    } else {
        // Browser doesn't support Geolocation
        handleLocationError(false, infoWindow, map.getCenter());
    }

}

// Data for the markers consisting of a name, a LatLng and a zIndex for the
// order in which these markers should display on top of each other.
var gyms = [
    ['Glenn Wilkinson Lifestyle', 54.6780, -5.8899, 4],
    ['Greenisland Outdoor Gym', 54.6955, -5.8771, 5],
    ['monkstown boxing club', 54.6888, -5.9169, 3],
    ['Made fitness', 54.7051, -5.8711, 2],
    ['fitness hub ', 54.7118, -5.8218, 1]
];

function setMarkers(map) {
    // Adds markers to the map.

    // Marker sizes are expressed as a Size of X,Y where the origin of the image
    // (0,0) is located in the top left of the image.

    // Origins, anchor positions and coordinates of the marker increase in the X
    // direction to the right and in the Y direction down.
    var image = {
        url: 'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png',
        // This marker is 20 pixels wide by 32 pixels high.
        size: new google.maps.Size(20, 32),
        // The origin for this image is (0, 0).
        origin: new google.maps.Point(0, 0),
        // The anchor for this image is the base of the flagpole at (0, 32).
        anchor: new google.maps.Point(0, 32)
    };
    // Shapes define the clickable region of the icon. The type defines an HTML
    // <area> element 'poly' which traces out a polygon as a series of X,Y points.
    // The final coordinate closes the poly by connecting to the first coordinate.
    var shape = {
        coords: [1, 1, 1, 20, 18, 20, 18, 1],
        type: 'poly'
    };
    for (var i = 0; i < gyms.length; i++) {
        var beach = gyms[i];
        var marker = new google.maps.Marker({
            position: { lat: beach[1], lng: beach[2] },
            map: map,
            icon: image,
            shape: shape,
            title: beach[0],
            zIndex: beach[3]
        });
    }
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
    infoWindow.setPosition(pos);
    infoWindow.setContent(browserHasGeolocation ?
        'Error: The Geolocation service failed.' :
        'Error: Your browser doesn\'t support geolocation.');
    infoWindow.open(map);
}
