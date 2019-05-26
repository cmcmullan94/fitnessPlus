<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="strengthTwo.aspx.cs" Inherits="fitnessPlus.strengthTwo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        #content {
            padding-left: 50px;
            padding-right: 50px;
        }
    </style>

    <script src="https://www.gstatic.com/firebasejs/5.9.2/firebase.js"></script>
    <script src="Scripts/myScripts/firebase.js"></script>

    <div class="container text-center">
        <!-- Row 1 -->
        <div class="row" style="padding-bottom: 50px;">
            
            <div class="col-12 col-md-8">
                <div style="border-style: solid; border-width: medium; border-color: inherit; color: #66ccff">
                    <label><u>5/3/1 - Intermediate</u></label>
                    <br />
                    <br />
                    <label id="content" for="btnSelect" style="color: #afabab">
                        5/3/1 is a strenght building program created to force users through barriers and push boundaries.
                        <br />
                        <br />
                        This program will take your <b>1 rep max for all compound lifts </b> and output a 4 week pattern for you to follow. 
                        <br />
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
                        <input type="button" id="btnSelect" value="Select!" class="btn btn-info" style="background-color: #66CCFF" onclick="window.location = '531Details.aspx'" />
                    </label>
                </div>
            </div>
            <div class="col-6 col-md-4">
                <label><u><b> Follow Jim!</b></u></label>
                <br />
                <a class="twitter-timeline" data-height="700" href="https://twitter.com/JWendler?ref_src=twsrc%5Etfw"> Tweets by JWendler </a>
                <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

            </div>
        </div>
    </div> <!-- Container close -->
</asp:Content>
