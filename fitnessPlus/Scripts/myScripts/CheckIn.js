
//initial setup
document.addEventListener('DOMContentLoaded', function () {
    addListeners();
    setRating(); //based on value inside the div
});

function addListeners() {
    var stars = document.querySelectorAll('.star');
    [].forEach.call(stars, function (star, index) {
        star.addEventListener('click', (function (idx) {
            console.log('adding rating on', index);
            document.querySelector('.stars').setAttribute('data-rating', idx + 1);
            console.log('Rating is now', idx + 1);
            setRating();
        }).bind(window, index));
    });

}

function setRating() {
    var stars = document.querySelectorAll('.star');
    var rating = parseInt(document.querySelector('.stars').getAttribute('data-rating'));
    [].forEach.call(stars, function (star, index) {
        if (rating > index) {
            star.classList.add('rated');
            console.log('added rated on', index);
        } else {
            star.classList.remove('rated');
            console.log('removed rated on', index);
        }
    });
}


function save() {
    var firebase = app_firebase;
    var user = firebase.auth().currentUser;

    uid = user.uid;

    var firebaseRef = app_firebase.database();                              //database reference

    var ref = firebaseRef.ref('User').child(uid).child('Check-In');           //referencing node

    var txtWeight = document.getElementById("txtWeightInput").value;
    var txtWaist = document.getElementById("txtWaist").value;
    var txtHips = document.getElementById("txtHips").value;
    var txtNeck = document.getElementById("txtNeck").value;



    var data = {                                                            //data being added
        weight: txtWeight,
        waist: txtWaist,
        hips: txtHips,
        neck: txtNeck,

    }

    ref.set(data);
}