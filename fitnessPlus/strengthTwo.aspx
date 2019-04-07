<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="strengthTwo.aspx.cs" Inherits="fitnessPlus.strengthTwo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://www.gstatic.com/firebasejs/5.9.2/firebase.js"></script>
    <script src="Scripts/myScripts/firebase.js"></script>
    <script src="Scripts/myScripts/strengthTwo.js"></script>


    <div class="container text-center">
        <!-- Row 1 -->
        <div class="row" style="padding-bottom: 50px;">
            <div class="col-sm-4">

            </div>
            <div class="col-sm-4">
                <div style="border-style: solid; border-width: medium; border-color: inherit; color: #66ccff">
                    <label><u>5/3/1 - Intermediate</u></label>
                    <br />
                    <label for="btnSelect" style="color: #afabab">
                        5/3/1 is a strenght building program created to force users through barriers and push boundaries.
                        <br />
                        This program will take your 1 rep max for all compound lifts and output a 4 week pattern for you to follow. 
                        <br />
                        Jim Wendler is the creator and author of the 5/3/1 Training Program. 
                        This program has been used by millions of athletes and lifters of all ages and abilities. 
                        Jim played football and graduated from the University of Arizona where he was a three-time letter winner. 
                        He went on to squat 1000 pounds in competition and is an accomplished Elite Lifter with a 2,375 pound total. 
                        He has coached high school athletes, collegiate athletes, trained general populations and spoken globally on the topics of strength training, 
                        conditioning, fat-loss, performance and program design. However, his greatest success is his ability to simplify the complexities of strength 
                        training into program variations so that anyone can apply them and achieve their goals. 
                        <br />
                        <br />
                        <br />
                        <input type="button" id="btnSelect" value="Select!" class="btn btn-info" style="background-color: #66CCFF" onclick="window.location='531Details.aspx'" />
                    </label>
                </div>
            </div>
            <div class="col-sm-4">

            </div>
        </div>
    </div> <!-- Container close -->
</asp:Content>
