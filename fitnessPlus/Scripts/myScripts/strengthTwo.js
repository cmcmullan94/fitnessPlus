document.getElementById("btnSelect").addEventListener("click", select);

function select() {
    var firebase = app_firebase;
    var user = firebase.auth().currentUser;

    uid = user.uid;

    var firebaseRef = app_firebase.database();             //database reference

    var ref = firebaseRef.ref('User').child(uid).child('Plan');           //referencing node


    var data = {                                        //data being added
        ID: 1,
    }

    ref.set(data);

    console.log(data);
}