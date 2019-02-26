<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MacroCalculator.aspx.cs" Inherits="fitnessPlus.MacroCalculator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="container text-center">
               
         <div class="info-header", "col-lg-4 col-lg-offset-4" style="padding-top: 100px">
            <div class="info-line", "form-group">
                <label for="bodyweight" style="color: #66ccff">Bodyweight - lbs </label>
                <input type="number" class="form-control" id="txtWeightInput" aria-describedby="BW" " style="width: 200px" runat="server"/> 
                <small id="calcHelp" class="form-text text-muted">Macros are calculated using pounds!</small>
            </div>
             <div class="info-line", "form-group">
                <label for="Goal" style="color: #66ccff">Goal </label>
                 <select class="form-control" id="drpGoal" style="width: 200px">
                    <option> Gain Weight </option>
                    <option> Loose Weight </option>
                 </select>
            </div>
             <div class="info-line", "form-group">
                <label for="specific" style="color: #66ccff">By how much? </label>
                <input type="number" class="form-control" id="numSpecific" aria-describedby="specific" style="width: 200px" />
                <small id="help" class="form-text text-muted">This is how much you want your maintenance calories to change by!</small>
            </div>
             <div class="info-line", "align-content-center" style="padding-top: 50px">
                 <asp:Button ID="btnDoCalc" runat="server" Text="GO!" OnClick="btnDoCalc_Click" class="btn btn-info" Style="background-color: #66ccff" Width="100px" font="Calibri" Font-Size="Large" />
             </div>
             <div class="info-line", "align-content-center" style="padding-top: 50px">
                 <asp:Label ID="lblmaintenanceCalories" runat="server" Text="Maintenance Calories: " style="color: #afabab"></asp:Label>
                 <asp:Label ID="lblMaintReturn" runat="server" Text=" " style="color: #afabab"></asp:Label>
             </div>
             <div class="info-line", "align-content-center" >
                 <asp:Label ID="lblProtein" runat="server" Text="Protein: "></asp:Label>
                 <asp:Label ID="lblProteinReturn" runat="server" Text=" "></asp:Label>
             </div>
             <div class="info-line", "align-content-center" >
                 <asp:Label ID="lblCarbs" runat="server" Text="Carbs: "></asp:Label>
                 <asp:Label ID="lblCarbReturn" runat="server" Text=" "></asp:Label>
             </div>
             <div class="info-line", "align-content-center" >
                 <asp:Label ID="lblFat" runat="server" Text="Fat: "></asp:Label>
                 <asp:Label ID="lblFatReturn" runat="server" Text=" "></asp:Label>
             </div>
        </div>
        
    </div>
</asp:Content>
