// Initialize Firebase
var config = {
    apiKey: "AIzaSyA6sW4dqXcugpnpNHkZyrHPyfwRWTU9fKc",
    authDomain: "fitnessplus-5d8b8.firebaseapp.com",
    databaseURL: "https://fitnessplus-5d8b8.firebaseio.com",
    projectId: "fitnessplus-5d8b8",
    storageBucket: "fitnessplus-5d8b8.appspot.com",
    messagingSenderId: "950998040753"
};
firebase.initializeApp(config);
console.log(firebase);

var firebaseRef = firebase.database().ref();    //reference
firebaseRef.child("Text").set("Sample from js file");

function test() {
    firebaseRef.child("Second").set("Sample from function");
}