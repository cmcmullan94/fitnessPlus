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

    var row1 = values[3] * squatMax;
    var row2 = values[5] * squatMax;
    var row3 = values[6] * squatMax;
    var row4 = values[4] * squatMax;
    var row5 = values[6] * squatMax;
    var row6 = values[7] * squatMax;
    var row7 = values[5] * squatMax;
    var row8 = values[7] * squatMax;
    var row9 = values[8] * squatMax;
    var row10 = values[0] * squatMax;
    var row11 = values[1] * squatMax;
    var row12 = values[2] * squatMax;

    //Inputting squat values 
    document.getElementById("tdW1S1").innerHTML = row1;
    document.getElementById("tdW1S2").innerHTML = row2;
    document.getElementById("tdW1S3").innerHTML = row3;
    document.getElementById("tdW2S1").innerHTML = row4;
    document.getElementById("tdW2S2").innerHTML = row5;
    document.getElementById("tdW2S3").innerHTML = row6;
    document.getElementById("tdW3S1").innerHTML = row7;
    document.getElementById("tdW3S2").innerHTML = row8;
    document.getElementById("tdW3S3").innerHTML = row9;
    document.getElementById("tdW4S1").innerHTML = row10;
    document.getElementById("tdW4S2").innerHTML = row11;
    document.getElementById("tdW4S3").innerHTML = row12;

    //inputting deadlift values

    //inputting bench values 

    //inputting OHP values



    return row1;

}


