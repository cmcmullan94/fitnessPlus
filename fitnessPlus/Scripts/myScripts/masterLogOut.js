var firebase = app_firebase;

function signOut() {
    firebase.auth().signOut().then(function () {
        window.location = 'logIn.aspx';

    }).catch(function (error) {
        console.log("Sign Out error");
    });
}