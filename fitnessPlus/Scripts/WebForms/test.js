//method call from button click
function calcMacros() {
    calcMaintenance();
    calcProtein();
    calcFat();
    calcCarbs();
}

//creating macro object
var macros = {
    bodyWeight: document.getElementById("txtWeightInput").,
    specific: document.getElementById("txtNumSpecific").value,
    maintenance: 0,
    proteinGrams: 0,
    fatGrams: 0,
    carbsGrams: 0,

    //getters
    get bw() {
        return this.bodyWeight;
    },

    get sp() {
        return this.specific;
    },

    get m() {
        return this.maintenance;
    },

    get pG() {
        return this.proteinGrams;
    },

    get fG() {
        return this.fatGrams;
    },

    get cG() {
        return this.cG;
    },

    //setters
    set bw(bw) {
        this.bodyWeight = bw;
    },

    set pG(pG) {
        this.proteinGrams = pG;
    }

};

function calcMaintenance() {
    var numA = 14;                                                            //set value for lower limit of maintenance value                                      
    var maintResA;

    //Maintenance Calculation
    maintResA = macros.bodyWeight * numA;                                                    //finding lower limit of maintenance

    if (document.getElementById("rdBulk").checked == true) {
        macros.maintenance = + macros.bodyWeight + +maintResA + +macros.specific;

        document.getElementById("lblMaintReturn").innerHTML = macros.maintenance;        //updating label element

    } else if (document.getElementById("rdCut").checked == true) {
        macros.maintenance = + macros.bodyWeight + +maintResA - +macros.specific;

        document.getElementById("lblMaintReturn").innerHTML = macros.maintenance;        //updating label element
    } else if (document.getElementById("rdNeither").checked == true) {
        macros.maintenance = + macros.bodyWeight + +maintResA;
        

        document.getElementById("lblMaintReturn").innerHTML = macros.maintenance;        //updating label element
    } else {
        document.getElementById("lblMaintReturn").innerHTML = macros.maintenance;        //updating label element
        return macros.maintenance;
    }


    return macros.maintenance;

    console.log("Maintenance inside function = " + macros.maintenance);
}

console.log("Maintenance after function = " + macros.maintenance);

function calcProtein() {

    document.getElementById("lblProteinReturn").innerHTML = macros.bodyWeight;

    return macros.bodyWeight;

    console.log("Protein inside function = " + macros.proteinGrams);

}

console.log("Protein after function = " + macros.proteinGrams);

function calcFat() {
    var fatA = 0.3;                                                           //set value for first instance of fat calc
    var fatB = 0.4;                                                           //set value for second instance of fat calc
    var fatLow, fatHigh, fatResC, fatResD;

    //Fat Calculation
    fatLow = macros.bodyWeight * fatA;                                                      //finding lower limit of fat
    fatHigh = macros.bodyWeight * fatB;                                                     //finding higher limit of fat
    fatResC = fatHigh - fatLow;                                              //finding difference in low and high
    fatResD = fatResC / 2;                                                   //divide difference in 2

    macros.fatGrams = +fatResD + +fatLow;

    document.getElementById("lblFatReturn").innerHTML = macros.fatGrams;            //set label to result

    return macros.fatGrams;

    console.log("Fat inside function = " + macros.fatGrams);

}

console.log("Fat outside function = " + macros.fatGrams);

function calcCarbs() {
    var proteinCal, fatCal, totalFP, carbsCal;

    proteinCal = macros.bodyWeight * 4         //converting protein in grams (bw) to protein calories
    fatCal = macros.fatGrams * 9                            //convert fat in grams to calories

    //carbs
    totalFP = fatCal + proteinCal;                                            //totalling fat and protein in grams 
    carbsCal = macros.maintenance - totalFP;
    macros.carbsGrams = carbsCal / 4;                                                //converting carbs from calories to grams

    Math.round(macros.carbsGrams);

    document.getElementById("lblCarbReturn").innerHTML = macros.carbsGrams;


    return macros.carbsGrams;

    console.log("Carbs inside function = " + macros.carbsGrams);
}

console.log("Carbs outside function = " + macros.carbsGrams);