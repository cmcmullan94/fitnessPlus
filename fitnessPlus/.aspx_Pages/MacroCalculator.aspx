<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MacroCalculator.aspx.cs" Inherits="fitnessPlus.MacroCalculator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        <div>Please enter your weight in pounds!</div>
        <br />
        <asp:TextBox ID="txtWeightInput" runat="server"></asp:TextBox> 
        <br />
        <br />
        <asp:Button ID="btnDoCalc" runat="server" Text="GO!" OnClick="btnDoCalc_Click" />
        <br />
        <br />
        <asp:Label ID="lblmaintenanceCalories" runat="server" Text="Maintenance Calories: "></asp:Label> <asp:Label ID="lblMaintReturn" runat="server" Text=" "></asp:Label>
        <br />
        <asp:Label ID="lblProtein" runat="server" Text="Protein: "></asp:Label> <asp:Label ID="lblProteinReturn" runat="server" Text=" "></asp:Label>
        <br />
        <asp:Label ID="lblCarbs" runat="server" Text="Carbs: "></asp:Label> <asp:Label ID="lblCarbReturn" runat="server" Text=" "></asp:Label>
        <br />
        <asp:Label ID="lblFat" runat="server" Text="Fat: "></asp:Label> <asp:Label ID="lblFatReturn" runat="server" Text=" "></asp:Label>
    </div>
</asp:Content>
