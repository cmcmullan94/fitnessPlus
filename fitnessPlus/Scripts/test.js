


function calcMacros() {
    //run all the functions via button click
    calcMaintenance();
    calcProtein();
    calcFat();
    calcCarbs();

}

//maintenance function
let maintenance = function calcMaintenance(bw) {
    var bw = document.getElementById("txtWeightInput").value;

    var numA = 14;                                                            //set value for first instance of maintenance calc
    var numB = 16;                                                            //set value for second instance of maintenance calc
    var maintResA, maintResB, maintResC;

    //Maintenance Calculation
    maintResA = bw * numA;                                                    //finding higher limit of maintenance
    maintResB = bw * numB;                                                    //finding lower limit of maintenance
    maintResC = maintResA - maintResB;
    maintenance = maintResC / 2 + maintResA;                                  //finding middle of lower and upper

    document.getElementById("lblMaintReturn").innerHTML = maintenance;

    return maintenance;

    
}


//protein function 
let protein = function calcProtein(bw) {
    var bw = document.getElementById("txtWeightInput").value;

    var proteinGrams;

    //Protein
    proteinGrams = bw;                                                        //setting grams of protein to bodyweight

    document.getElementById("lblProteinReturn").innerHTML = proteinGrams;

    return proteinGrams;
}

//fat function
let fat = function calcFat(bw) {
    var bw = document.getElementById("txtWeightInput").value;

    var fatA = 0.3;                                                           //set value for first instance of fat calc
    var fatB = 0.4;                                                           //set value for second instance of fat calc

    var fatGrams, fatResA, fatResB, fatResC;

    //Fat
    fatResA = bw * fatA;                                                      //finding higher limit of fat
    fatResB = bw * fatB;                                                      //finding higher limit of fat
    fatResC = fatResA - fatResB;
    fatGrams = fatResC / 2 + fatResA;                                         //finding middle of lower and upper limit

    document.getElementById("lblFatReturn").innerHTML = fatGrams;

    return fatGrams;
}

//carbs function
let carbs = function calcCarbs(maintenance, proteinGrams, fatGrams, callback) {

    var proteinCal, fatCal, totalFP, carbsCal, carbsGrams;

    //Carbs
    proteinCal = proteinGrams * 4.0;                                          //converting protein from grams to cals
    fatCal = fatGrams * 9.0;                                                  //converting fat from grams to cals

    totalFP = fatCal + proteinCal;                                            //totalling fat and protein in grams 

    carbsCal = maintenance - totalFP;
    carbsGrams = carbsCal / 4;                                                //converting carbs from calories to grams


    document.getElementById("lblCarbReturn").innerHTML = carbsGrams;

    carbsGrams = callback(maintenance, proteinGrams, fatGrams);

    return carbsGrams;
}


console.log("Carbs Value " + carbs);