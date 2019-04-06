
function registerAccount() {
    var firebase = app_firebase;
    var firebaseRef = app_firebase.database();   //database reference
    var user = firebase.auth().currentUser;

    uid = user.uid;

    var ref = firebaseRef.ref('User').child(uid);           //referencing node
    var userName = document.getElementById("txtUsernameInput").value;

    if (user) {
        // User is signed in.
        
        var data = {                             //data being added
            Username: userName,
        }

        window.location = 'myHome.aspx';

    } else {
        // No user is signed in.
        console.log("Cannot get UID");
    }

    ref.push(data);


}

function test() {
    console.log("Test");
}