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

    //mainApp.logOut = logOut;
//})()