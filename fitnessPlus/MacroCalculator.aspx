<%@ Page Title="Macro Nutrients" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MacroCalculator.aspx.cs" Inherits="fitnessPlus.MacroCalculator" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .col-centered {
            margin: auto;
        }

        #btnDoCalc {
            width: 100px;
            font-family: Calibri;
            font-size: large;
        }

        #btnSave {
            width: 100px;
            font-family: Calibri;
            font-size: large;
        }

        .radio {
            font-family: Calibri;
            color: #afabab;
        }
    </style>

  <!-- <script src="Scripts/macroCalculator.js"></script>--> 
    <script src="Scripts/WebForms/test.js"></script>
    


     <div class="container text-center" >   
               
         <div class="info-header", "col-lg-4 col-lg-offset-4">

            <div class="info-line", "form-group", "col-centered">  
                <label for="txtWeightInput" style="color: #66ccff"> 
                    Bodyweight - lbs 
                    <br />
                    <br />
                    <input type="number" class="form-control" Value="0" id="txtWeightInput" aria-describedby="BW" style="width: 200px"/>
                    <br />
                    <small id="calcHelp" class="form-text text-muted">Macros are calculated using pounds!</small>
                </label> 
            </div>


             <div class="radio" role="group" aria-label="radioButtons">
                 <label style="font-size:larger"><input type="radio" id="rdBulk" name="radio"/> Bulk </label>
                 &nbsp;&nbsp;&nbsp;
                 <label style="font-size:larger"><input type="radio" id="rdCut" name="radio"/> Cut </label>
                 <br />
                 <br />
                 <label style="font-size:larger"><input type="radio" id="rdNeither" name="radio"/> Neither! </label>
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
                 <input type="button" id="btnDoCalc" Value="GO!" class="btn btn-info" style="background-color: #66CCFF"  onclick="calcMacros()" />
             </div>


             <div class="info-line", "align-content-center" style="padding-top: 50px">
                 <Label ID="lblmaintenanceCalories" style="color: #afabab"> Maintenance Calories: </Label>
                 <br />
                 <Label ID="lblMaintReturn" style="color: #afabab">0</Label>
             </div>
         </div>

     </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <Label ID="lblProtein"style="color: #afabab"> Protein: </Label>
                <br />
                <Label ID="lblProteinReturn"style="color: #afabab">0</Label>
            </div>
        
            <div class="col">
                <Label ID="lblCarbs"style="color: #afabab">Carbs: </Label>
                <br />
                <Label ID="lblCarbReturn"style="color: #afabab">0</Label>
            </div>
        
            <div class="col">
                <Label ID="lblFat" style="color: #afabab" >Fat: </Label>
                <br />
                <Label ID="lblFatReturn" style="color: #afabab">0</Label>
            </div>
        </div>
    </div>
    
    <div class="container text-center">
             <div class="info-line", "align-content-center" style="padding-top: 50px">
                 <input type="button" id="btnSave" value="Save!" class="btn btn-info" Style="background-color: #66ccff" OnClick="test()" />
             </div>
        </div>
    
      
       
</asp:Content>
