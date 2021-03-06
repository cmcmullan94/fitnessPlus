﻿<%@ Page Title="Macro Nutrients" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MacroCalculator.aspx.cs" Inherits="fitnessPlus.MacroCalculator" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
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

    <script src="https://www.gstatic.com/firebasejs/5.9.2/firebase.js"></script>
    <script src="Scripts/myScripts/firebase.js"></script>
    <script src="Scripts/myScripts/macroCalculator.js"></script>

    <script src="Scripts/myScripts/masterLogOut.js"></script>

    <div class="container text-center" >   
    <!-- top half -->
     

         <!-- Row 1 -->
         <div class="row">
            <div class="col-sm-4">
            </div>
             <div class="col-sm-4">
                <label for="txtWeightInput" style="color: #66ccff" > 
                        Bodyweight - lbs 
                        <br />
                        <br />
                        <input type="number" class="form-control" Value="0" id="txtWeightInput" aria-describedby="BW" />
                        <br />    
                        <small id="calcHelp" class="form-text text-muted">Macros are calculated using pounds!</small>
                 </label>
                 <br />
            </div>
             <div class="col-sm-4">   
                 <div id="piechart"></div>
            </div>
        </div>

         <!-- Row 2 -->
         <div class="row">
            <div class="col-sm-4">              
            </div>
             <div class="col-sm-4">
                
                 <div class="radio" role="group" aria-label="radioButtons">
                     <label style="font-size:larger"><input type="radio" id="rdBulk" name="radio"/> Bulk </label>
                     &nbsp;&nbsp;&nbsp;
                     <label style="font-size:larger"><input type="radio" id="rdCut" name="radio"/> Cut </label>
                     <br />
                     <br />
                     <label style="font-size:larger"><input type="radio" id="rdNeither" name="radio"/> Neither! </label>
                 </div>

            </div>
             <div class="col-sm-4">          
            </div>
        </div>

         <!-- Row 3 -->
         <div class="row">
            <div class="col-sm-4">               
            </div>
             <div class="col-sm-4">
                
                 <label for="txtNumSpecific" style="color: #66ccff" margin-left:"15px">
                     By how much?
                     <br />
                     <br />
                     <input type="number" class="form-control" Value="0" id="txtNumSpecific" aria-describedby="specific" />
                     <br />
                     <small id="help" class="form-text text-muted">This is how much you want to deviate <br /> from your maintenance calories!</small>
                 </label>

            </div>
             <div class="col-sm-4">               
            </div>
        </div>

         <!-- Row 4 -->
         <div class="row" style="padding-top: 50px">
            <div class="col-sm-4">              
            </div>
             <div class="col-sm-4">
               
                 <input type="button" id="btnDoCalc" Value="GO!" class="btn btn-info" style="background-color: #66CCFF" onclick="calcMacros()"/>

            </div>
             <div class="col-sm-4">              
            </div>
        </div>

         <!-- Row 5 -->
         <div class="row" style="padding-top: 50px">
            <div class="col-sm-4">                
            </div>
             <div class="col-sm-4">
                
                 <Label ID="lblmaintenanceCalories" style="color: #afabab"> Maintenance Calories: </Label>
                 <br />
                 <Label ID="lblMaintReturn" style="color: #afabab; font-size: xx-large;">0</Label>

            </div>
             <div class="col-sm-4">              
            </div>
        </div>       

    <!-- bottom half -->
         <!--Row 1 -->
        <div class="row" style="padding-top: 50px">
            <div class="col-sm-4">
                <Label ID="lblProtein"style="color: #afabab"> Protein: </Label>
                <br />
                <Label ID="lblProteinReturn"style="color: #afabab; font-size: xx-large;">0</Label>
            </div>
        
            <div class="col-sm-4">
                <Label ID="lblCarbs"style="color: #afabab">Carbs: </Label>
                <br />
                <Label ID="lblCarbReturn"style="color: #afabab; font-size: xx-large;">0</Label>
            </div>
        
            <div class="col-sm-4">
                <Label ID="lblFat" style="color: #afabab" >Fat: </Label>
                <br />
                <Label ID="lblFatReturn" style="color: #afabab; font-size: xx-large;">0</Label>
            </div>
        </div>
         <!-- Row 2 -->
         <div class="row">
             <div class="col-sm-4">
             </div>

             <div class="col-sm-4">
                 <div class="info-line", "align-content-center" style="padding-top: 50px">
                    <input type="button" id="btnSave" value="Save!" class="btn btn-info" Style="background-color: #66ccff" onclick="save()" />                      
                 </div>
             </div>

             
             <div class="col-sm-4">
             </div>
             
        </div>

    </div> <!-- Container close -->
    

    
      
       
</asp:Content>
