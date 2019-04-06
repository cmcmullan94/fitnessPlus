//var mainApp = {};

//(function ()){
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


    //mainApp.logOut = logOut;
//})()