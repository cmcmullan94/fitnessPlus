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

}

//Add a realtime listener
firebase.auth().onAuthStateChanged(firebaseUser => {
    if (firebaseUser) {
        console.log(firebaseUser);
    } else {
        console.log('not logged in');
    }
});
   

    //mainApp.logOut = logOut;
//})()