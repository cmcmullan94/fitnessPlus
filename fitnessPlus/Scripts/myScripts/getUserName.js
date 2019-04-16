var firebase = app_firebase;
var user = firebase.auth().currentUser;
uid = user.uid;

var firebaseRef = app_firebase.database().ref('Username');                                  //database reference
ref.on('Username', gotData, errData);

function gotData(data) {
    console.log(data.val());
}

function errData(err) {
    console.log('Error!');
    console.log(err);
}

console.log("Username" + firebaseRef);