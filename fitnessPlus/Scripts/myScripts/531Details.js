function calcAll() {
    //all functions 
    setSquat();
    setDeadlift();
    setBench();
    calcOHP();
}

function setSquat() {
    var squatMax = document.getElementById("txtSquatInput").value;

    var values = [0.4, //0
        0.5, //1
        0.6, //2
        0.65, //3
        0.7, //4
        0.75, //5
        0.8, //6
        0.85, //7
        0.9]; //8

    var squatVal1 = values[3] * squatMax;
    var squatVal2 = values[5] * squatMax;
    var squatVal3 = values[6] * squatMax;
    var squatVal4 = values[4] * squatMax;
    var squatVal5 = values[6] * squatMax;
    var squatVal6 = values[7] * squatMax;
    var squatVal7 = values[5] * squatMax;
    var squatVal8 = values[7] * squatMax;
    var squatVal9 = values[8] * squatMax;
    var squatVal10 = values[0] * squatMax;
    var squatVal11 = values[1] * squatMax;
    var squatVal12 = values[2] * squatMax;


    //Inputting squat values 
    document.getElementById("tdW1S1").innerHTML = Math.round(squatVal1);
    document.getElementById("tdW1S2").innerHTML = Math.round(squatVal2);
    document.getElementById("tdW1S3").innerHTML = Math.round(squatVal3);
    document.getElementById("tdW2S1").innerHTML = Math.round(squatVal4);
    document.getElementById("tdW2S2").innerHTML = Math.round(squatVal5);
    document.getElementById("tdW2S3").innerHTML = Math.round(squatVal6);
    document.getElementById("tdW3S1").innerHTML = Math.round(squatVal7);
    document.getElementById("tdW3S2").innerHTML = Math.round(squatVal8);
    document.getElementById("tdW3S3").innerHTML = Math.round(squatVal9);
    document.getElementById("tdW4S1").innerHTML = Math.round(squatVal10);
    document.getElementById("tdW4S2").innerHTML = Math.round(squatVal11);
    document.getElementById("tdW4S3").innerHTML = Math.round(squatVal12);

   
    //inputting bench values 

    //inputting OHP values



    return squatMax;


    console.log("Squat Max Val = " + squatMax);

}

function setDeadlift() {
    var deadMax = document.getElementById("txtDeadliftInput").value;

    var values = [0.4, //0
        0.5, //1
        0.6, //2
        0.65, //3
        0.7, //4
        0.75, //5
        0.8, //6
        0.85, //7
        0.9]; //8

    //inputting deadlift values
    var deadVal1 = values[3] * deadMax;
    var deadVal2 = values[5] * deadMax;
    var deadVal3 = values[6] * deadMax;
    var deadVal4 = values[4] * deadMax;
    var deadVal5 = values[6] * deadMax;
    var deadVal6 = values[7] * deadMax;
    var deadVal7 = values[5] * deadMax;
    var deadVal8 = values[7] * deadMax;
    var deadVal9 = values[8] * deadMax;
    var deadVal10 = values[0] * deadMax;
    var deadVal11 = values[1] * deadMax;
    var deadVal12 = values[2] * deadMax;

    document.getElementById("tdW1D1").innerHTML = Math.round(deadVal1);
    document.getElementById("tdW1D2").innerHTML = Math.round(deadVal2);
    document.getElementById("tdW1D3").innerHTML = Math.round(deadVal3);
    document.getElementById("tdW2D1").innerHTML = Math.round(deadVal4);
    document.getElementById("tdW2D2").innerHTML = Math.round(deadVal5);
    document.getElementById("tdW2D3").innerHTML = Math.round(deadVal6);
    document.getElementById("tdW3D1").innerHTML = Math.round(deadVal7);
    document.getElementById("tdW3D2").innerHTML = Math.round(deadVal8);
    document.getElementById("tdW3D3").innerHTML = Math.round(deadVal9);
    document.getElementById("tdW4D1").innerHTML = Math.round(deadVal10);
    document.getElementById("tdW4D2").innerHTML = Math.round(deadVal11);
    document.getElementById("tdW4D3").innerHTML = Math.round(deadVal12);

    return deadMax;

    console.log("Deadlift Max Val = " + deadMax);
}


function setBench() {
    var benchMax = document.getElementById("txtDeadliftInput").value;

    var values = [0.4, //0
        0.5, //1
        0.6, //2
        0.65, //3
        0.7, //4
        0.75, //5
        0.8, //6
        0.85, //7
        0.9]; //8

    //inputting deadlift values
    var benchVal1 = values[3] * benchMax;
    var benchVal2 = values[5] * benchMax;
    var benchVal3 = values[6] * benchMax;
    var benchVal4 = values[4] * benchMax;
    var benchVal5 = values[6] * benchMax;
    var benchVal6 = values[7] * benchMax;
    var benchVal7 = values[5] * benchMax;
    var benchVal8 = values[7] * benchMax;
    var benchVal9 = values[8] * benchMax;
    var benchVal10 = values[0] * benchMax;
    var benchVal11 = values[1] * benchMax;
    var benchVal12 = values[2] * benchMax;

    document.getElementById("tdW1B1").innerHTML = Math.round(benchVal1);
    document.getElementById("tdW1B2").innerHTML = Math.round(benchVal2);
    document.getElementById("tdW1B3").innerHTML = Math.round(benchVal3);
    document.getElementById("tdW2B1").innerHTML = Math.round(benchVal4);
    document.getElementById("tdW2B2").innerHTML = Math.round(benchVal5);
    document.getElementById("tdW2B3").innerHTML = Math.round(benchVal6);
    document.getElementById("tdW3B1").innerHTML = Math.round(benchVal7);
    document.getElementById("tdW3B2").innerHTML = Math.round(benchVal8);
    document.getElementById("tdW3B3").innerHTML = Math.round(benchVal9);
    document.getElementById("tdW4B1").innerHTML = Math.round(benchVal10);
    document.getElementById("tdW4B2").innerHTML = Math.round(benchVal11);
    document.getElementById("tdW4B3").innerHTML = Math.round(benchVal12);

    return benchMax;

    console.log("Bench Max Val = " + benchMax);

}



function calcOHP() {
    var ohpMax = document.getElementById("txtOHPInput").value;

    var values = [0.4, //0
        0.5, //1
        0.6, //2
        0.65, //3
        0.7, //4
        0.75, //5
        0.8, //6
        0.85, //7
        0.9]; //8

    //inputting deadlift values
    var ohpVal1 = values[3] * ohpMax;
    var ohpVal2 = values[5] * ohpMax;
    var ohpVal3 = values[6] * ohpMax;
    var ohpVal4 = values[4] * ohpMax;
    var ohpVal5 = values[6] * ohpMax;
    var ohpVal6 = values[7] * ohpMax;
    var ohpVal7 = values[5] * ohpMax;
    var ohpVal8 = values[7] * ohpMax;
    var ohpVal9 = values[8] * ohpMax;
    var ohpVal10 = values[0] * ohpMax;
    var ohpVal11 = values[1] * ohpMax;
    var ohpVal12 = values[2] * ohpMax;

    document.getElementById("tdW1O1").innerHTML = Math.round(ohpVal1);
    document.getElementById("tdW1O2").innerHTML = Math.round(ohpVal2);
    document.getElementById("tdW1O3").innerHTML = Math.round(ohpVal3);
    document.getElementById("tdW2O1").innerHTML = Math.round(ohpVal4);
    document.getElementById("tdW2O2").innerHTML = Math.round(ohpVal5);
    document.getElementById("tdW2O3").innerHTML = Math.round(ohpVal6);
    document.getElementById("tdW3O1").innerHTML = Math.round(ohpVal7);
    document.getElementById("tdW3O2").innerHTML = Math.round(ohpVal8);
    document.getElementById("tdW3O3").innerHTML = Math.round(ohpVal9);
    document.getElementById("tdW4O1").innerHTML = Math.round(ohpVal10);
    document.getElementById("tdW4O2").innerHTML = Math.round(ohpVal11);
    document.getElementById("tdW4O3").innerHTML = Math.round(ohpVal12);

    return ohpMax;

    console.log("OHP Max Val = " + ohpMax);

}


function save() {

    var firebase = app_firebase;
    var user = firebase.auth().currentUser;

    uid = user.uid;

    var firebaseRef = app_firebase.database();                  //database reference

    var ref = firebaseRef.ref('User').child(uid).child('Plan');           //referencing node

    var squatMax = document.getElementById("txtSquatInput").value;
    var deadMax = document.getElementById("txtDeadliftInput").value;
    var benchMax = document.getElementById("txtBenchInput").value;
    var ohpMax = document.getElementById("txtOHPInput").value;

    var data = {                                                //data being added
        ID: 001,
        Name: "5/3/1/ - Intermediate",
        squatMax: squatMax,
        deadMax: deadMax,
        benchMax: benchMax,
        ohpMax: ohpMax,

    }

    ref.set(data);

}


    





