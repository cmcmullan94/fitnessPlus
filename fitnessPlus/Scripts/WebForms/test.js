//method call from button click
//function calcMacros() {
//    calcMaintenance();
//    calcProtein();
//    calcFat();
//    calcCarbs();
//}


document.getElementById("btnDoCalc").onclick = calcMacros();

function calcMacros() {
    var myMacros = new Macros(bw, sp);
}

//object definition 
var macroNutrients = {
    bodyWeight: 0,
    maintenanceValue: 0,
    specificValue: 0,
    proteinValue: 0,
    fatValue: 0,
    carbsValue: 0,

    calcMaintenance: function () {
        this.maintenanceValue = document.getElementById("txtWeightInput").value;
        this.specificValue = document.getElementById("txtNumSpecific").value;

        var numA = 14;                                                            //set value for lower limit of maintenance value                                      
        var maintResA;

        //Maintenance Calculation
        maintResA = this.maintenanceValue * numA;                                                    //finding lower limit of maintenance

        if (document.getElementById("rdBulk").checked == true) {
            this.maintenanceValue = +bw + +maintResA + +specific;

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

        console.log("MaintRes A after if = " + maintResA);
        console.log("Specific = " + specific);

        return this.maintenanceValue;
    },

    calcProtein: function () {
        this.proteinValue = document.getElementById("txtWeightInput").value;
        return this.proteinValue;
    },

    calcFat: function () {
        return this.fatValue;
    },

    calcCarbs: function () {
        return this.carbsValue;
    }





}



//constructor of macros object
function Macros(bw, sp) {
        this.bodyWeight = bw;
        this.specific = sp;
        this.maintenance = 0;
        this.fatGrams = 0;
        this.carbsGrams = 0;

        this.bodyWeight = function () {
            document.getElementById("txtWeightInput").value;
            return bw;
        }

        this.specific = function () {
            document.getElementById("txtNumSpecific").value;
            return sp;
        }
    }


