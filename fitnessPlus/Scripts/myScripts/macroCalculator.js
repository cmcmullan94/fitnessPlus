//declaring all variables needed 
var maintenance = 0;
var proteinGrams = 0;
var fatGrams = 0;
var carbsGrams = 0;

function calcMacros() {
    calcMaintenance();
    calcProtein();
    calcFat();
    calcCarbs();
}


//maintenance function
function calcMaintenance() {
    var bw = document.getElementById("txtWeightInput").value;
    var specific = document.getElementById("txtNumSpecific").value;

    var numA = 14;                                                            //set value for lower limit of maintenance value                                      
    var maintResA;

    //Maintenance Calculation
    maintResA = bw * numA;                                                    //finding lower limit of maintenance

    if (document.getElementById("rdBulk").checked == true) {
        maintenance = +bw + +maintResA + +specific;

        document.getElementById("lblMaintReturn").innerHTML = maintenance;        //updating label element
    } else if (document.getElementById("rdCut").checked == true) {
        maintenance = +bw + +maintResA - +specific;

        document.getElementById("lblMaintReturn").innerHTML = maintenance;        //updating label element
    } else if (document.getElementById("rdNeither").checked == true) {
        maintenance = +bw + +maintResA;

        document.getElementById("lblMaintReturn").innerHTML = maintenance;        //updating label element
    } else {
        document.getElementById("lblMaintReturn").innerHTML = maintenance;        //updating label element
        return maintenance;
    }
 

    return maintenance;                                                       //result
}

console.log("Maintenance = " + maintenance);


//protein function 
function calcProtein() {
    var bw = document.getElementById("txtWeightInput").value;

    //protein has 1:1 lb to BW ratio
    document.getElementById("lblProteinReturn").innerHTML = bw;

    return bw;
}

//fat function
function calcFat() {
    var bw = document.getElementById("txtWeightInput").value;

    var fatA = 0.3;                                                           //set value for first instance of fat calc
    var fatB = 0.4;                                                           //set value for second instance of fat calc
    var fatLow, fatHigh, fatResC, fatResD;

    //Fat Calculation
    fatLow = bw * fatA;                                                      //finding lower limit of fat
    fatHigh = bw * fatB;                                                     //finding higher limit of fat
    fatResC = fatHigh - fatLow;                                              //finding difference in low and high
    fatResD = fatResC / 2;                                                   //divide difference in 2

    fatGrams = +fatResD + +fatLow;                                           //add difference to lower limit 

    document.getElementById("lblFatReturn").innerHTML = fatGrams;            //set label to result

    return fatGrams;
}

console.log("Fat Grams = " + fatGrams);

//carbs function
function calcCarbs() {
    var bw = document.getElementById("txtWeightInput").value;

    var proteinCal, fatCal, totalFP, carbsCal, carbsGrams;

    proteinCal = bw * 4                                                     //converting protein in grams (bw) to protein calories
    fatCal = fatGrams * 9                                                   //convert fat in grams to calories


    //carbs
    totalFP = fatCal + proteinCal;                                            //totalling fat and protein in grams 
    carbsCal = maintenance - totalFP;
    carbsGrams = carbsCal / 4;                                                //converting carbs from calories to grams


    Math.round(carbsGrams);    

    document.getElementById("lblCarbReturn").innerHTML = carbsGrams;


    return this.carbsGrams;

}


const btnSave = document.getElementById("btnSave");

btnSave.addEventListener('click', e => {
    alert("Hello");

})

    var firebase = app_firebase.database();     //database reference
    var ref = firebase.ref('macros');           //referencing node

    var data = {                                    //data being added
        protein: 10,

    }

    ref.push(data);

