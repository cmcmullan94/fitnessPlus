function calcMacros() {
    calcMaintenance();
    calcProtein();
    calcFat();
    calcCarbs();

}

function calcMaintenance() {

    var bw = document.getElementById("txtWeightInput").value;                 //taking user input, declaring as bodyweight

    var numA = 14;                                                            //set value for first instance of maintenance calc
    var numB = 16;                                                            //set value for second instance of maintenance calc
    var maintResA, maintResB, maintResC;
    var maintenance;

    //Maintenance Calculation
    maintResA = bw * numA;                                                    //finding higher limit of maintenance
    maintResB = bw * numB;                                                    //finding lower limit of maintenance
    maintResC = maintResA - maintResB;
    maintenance = maintResC / 2 + maintResA;                                  //finding middle of lower and upper

    document.getElementById("lblMaintReturn").innerHTML = maintenance;

}

function calcProtein() {
    var bw = document.getElementById("txtWeightInput").value;                 //taking user input, declaring as bodyweight

    var proteinCal, proteinGrams;

    //Protein
    proteinGrams = bw;                                                        //setting grams of protein to bodyweight
    proteinCal = proteinGrams * 4.0;                                          //converting protein from grams to cals

    document.getElementById("lblProteinReturn").innerHTML = proteinCal;


}

function calcFat() {
    var bw = document.getElementById("txtWeightInput").value;                 //taking user input, declaring as bodyweight

    var fatA = 0.3;                                                           //set value for first instance of fat calc
    var fatB = 0.4;                                                           //set value for second instance of fat calc

    var fatCal, fatGrams, fatResA, fatResB, fatResC;

    //Fat
    fatResA = bw * fatA;                                                      //finding higher limit of fat
    fatResB = bw * fatB;                                                      //finding higher limit of fat
    fatResC = fatResA - fatResB;
    fatGrams = fatResC / 2 + fatResA;                                         //finding middle of lower and upper limit

    fatCal = fatGrams * 9.0;                                                  //converting fat from grams to cals

    document.getElementById("lblFatReturn").innerHTML = fatCal;

}

function calcCarbs() {
    var bw = document.getElementById("txtWeightInput").value;                 //taking user input, declaring as bodyweight

    var carbsCal, totalFP;

    //Carbs
    totalFP = calcFat().fatCal + calcProtein().proteinCal;                    //totalling fat and protein in grams 

    carbsCal = maintenance - totalFP;
    carbsGrams = carbsCal / 4;                                                //converting carbs from calories to grams

    document.getElementById("lblCarbReturn").innerHTML = carbsCal;
}

function test() {
    alert("Testing");
}