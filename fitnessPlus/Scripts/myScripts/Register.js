
function registerAccount() {
    var firebase = app_firebase;
    var firebaseRef = app_firebase.database();     //database reference
    var user = firebase.auth().currentUser;
    var ref = firebaseRef.ref('User');           //referencing node
    var userName = document.getElementById("txtUsernameInput").value;

    if (user) {
        // User is signed in.
        uid = user.uid;
        var data = {                                    //data being added
            ID: uid,
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