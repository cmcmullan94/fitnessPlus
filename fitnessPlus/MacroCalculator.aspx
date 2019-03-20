<%@ Page Title="Macro Nutrients" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MacroCalculator.aspx.cs" Inherits="fitnessPlus.MacroCalculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .col-centered {
            margin: auto;
        }
    </style>

    <script>
        function getBodyWeight() {
            var bw = document.getElementById("txtWeightInput");                 //taking user input, declaring as bodyweight

            var numA = 14;                                                                       //set value for first instance of maintenance calc
            var numB = 16;                                                                       //set value for second instance of maintenance calc
            var fatA = 0.3;                                                                      //set value for first instance of fat calc
            var fatB = 0.4;                                                                      //set value for second instance of fat calc
            var maintResA, maintResB, maintResC, proteinCal, carbsCal, fatCal, totalFP;          //variables in kCals 
            var maintenance, proteinGrams, carbsGrams, fatGrams, fatResA, fatResB, fatResC;      //variables in Grams

            //Maintenance Calculation
            maintResA = bw * numA;                                                                     //finding higher limit of maintenance
            maintResB = bw * numB;                                                                     //finding lower limit of maintenance
            maintResC = maintResA - maintResB;                                                         
            maintenance = maintResC / 2 + maintResA;                                                   //finding middle of lower and upper

            //Protein
            proteinGrams = bw;                                                                          //setting grams of protein to bodyweight
            proteinCal = proteinGrams * 4.0;                                                            //converting protein from grams to cals

            //Fat
            fatResA = bw * fatA;                                                                        //finding higher limit of fat
            fatResB = bw * fatB;                                                                        //finding higher limit of fat
            fatResC = fatResA - fatResB;                                                                
            fatGrams = fatResC / 2 + fatResA;                                                           //finding middle of lower and upper limit

            fatCal = fatGrams * 9.0;                                                                    //converting fat from grams to cals

            //Carbs
            totalFP = fatCal + proteinCal;                                                              //totalling fat and protein in grams 

            carbsCal = maintenance - totalFP;
            carbsGrams = carbsCal / 4;                                                                  //converting carbs from calories to grams

            lblMaintReturn.Text = maintenance;
            lblProteinReturn.Text = proteinGrams;
            lblFatReturn.Text = fatGrams;
            lblCarbReturn.Text = carbsGrams;
        }

        function getNumSpecific() {
            var specific = document.getElementById("numSpecific");
            return specific;
        }
    </script>

     <div class="container text-center" >   
               
         <div class="info-header", "col-lg-4 col-lg-offset-4">

            <div class="info-line", "form-group", "col-centered">  
                <label for="txtWeightInput" style="color: #66ccff">
                    Bodyweight - lbs 
                    <br />
                    <br />
                    <input type="number" class="form-control" id="txtWeightInput" aria-describedby="BW" style="width: 200px"/>
                    <br />
                    <small id="calcHelp" class="form-text text-muted">Macros are calculated using pounds!</small>
                </label>
            </div>


             <div class="info-line", "input-group-text", "col-centered" style="padding-top: 20px">
                <label for="Goal" style="color: #66ccff">Goal </label>
                 <br />
                 <br />
                 <br />
                 <label for="rdBulk" style="color: #afabab">Bulk </label>
                    <input type="radio" id="rdBulk">&nbsp;&nbsp;&nbsp;&nbsp;
                 <label for="rdCut" style="color: #afabab">Cut </label>
                    <input type="radio" id="rdCut">
            </div>


             <div class="info-line", "form-group", "col-centered" style="padding-top: 20px"> 
                 <label for="txtNumSpecific" style="color: #66ccff">
                     By how much?
                     <br />
                     <br />
                     <input type="number" class="form-control" id="txtNumSpecific" aria-describedby="specific" style="width: 200px" />
                     <br />
                     <small id="help" class="form-text text-muted">This is how much you want to deviate from your maintenance calories!</small>
                 </label>
            </div>


             <div class="info-line", "align-content-center" style="padding-top: 50px">
                 <asp:Button ID="btnDoCalc" runat="server" Text="GO!" OnClick="getBodyWeight()" value="Go" class="btn btn-info" Style="background-color: #66ccff" Width="100px" font="Calibri" Font-Size="Large" />
             </div>

             <div class="info-line", "align-content-center" style="padding-top: 50px">
                 <asp:Label ID="lblmaintenanceCalories" runat="server" Text="Maintenance Calories: " style="color: #afabab"></asp:Label>
                 <asp:Label ID="lblMaintReturn" runat="server" Text=" " style="color: #afabab"></asp:Label>
             </div>
         </div>

     </div>

           
    <div class="container">

        <div class="row">
            <div class="col">
                <asp:Label ID="lblProtein" runat="server" Text="Protein: " style="color: #afabab"></asp:Label>
                <br />
                <asp:Label ID="lblProteinReturn" runat="server" Text=" " style="color: #afabab"></asp:Label>
            </div>
        
            <div class="col">
                <asp:Label ID="lblCarbs" runat="server" Text="Carbs: " style="color: #afabab"></asp:Label>
                <br />
                <asp:Label ID="lblCarbReturn" runat="server" Text=" " style="color: #afabab"></asp:Label>
            </div>
        
            <div class="col">
                <asp:Label ID="lblFat" runat="server" Text="Fat: " style="color: #afabab" ></asp:Label>
                <br />
                <asp:Label ID="lblFatReturn" runat="server" Text=" " style="color: #afabab"></asp:Label>
            </div>
        </div>


    </div>
    
             

        <div class="container text-center">
             <div class="info-line", "align-content-center" style="padding-top: 50px">
                 <asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-info" Style="background-color: #66ccff" Width="100px" font="Calibri" Font-Size="Large" />
             </div>
        </div>
      
       
</asp:Content>
