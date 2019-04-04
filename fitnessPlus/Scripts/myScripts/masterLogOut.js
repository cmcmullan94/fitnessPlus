var firebase = app_firebase;

function logOut() {
    firebase.auth().signOut();
    console.log("Log Out");
}