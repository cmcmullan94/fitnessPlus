<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="myPlan.aspx.cs" Inherits="fitnessPlus.myPlan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--Css here -->
    <style></style>

    <!--Scripts -->

    <!--HTML-->

    <div class="container text-center">
        <div class="row">
            <div class="col-sm-4">
                <div style="border-style: solid; border-width: medium; border-color: inherit; color: #66ccff">
                    <label>Strength</label>
                    <br />
                    <label for="btnView" style="color: #afabab">
                        12 Week Training Plan
                        <br />
                        <br />
                        Compound Based Workouts
                        <br />
                        <br />
                        Beginner
                        <br />
                     <input type="button" id="btnView" value="View" class="btn btn-info" style="background-color: #66CCFF" onclick="#" />
                    </label>
                </div>



            </div>
            <div class="col-sm-4">
                Fitness
            </div>
            <div class="col-sm-4">
                Aesthetics
            </div>
        </div>
    </div>


</asp:Content>
