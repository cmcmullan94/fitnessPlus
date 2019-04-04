<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="myHome.aspx.cs" Inherits="fitnessPlus.myHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <script src="https://www.gstatic.com/firebasejs/5.9.2/firebase.js"></script>
    <script src="Scripts/myScripts/firebase.js"></script>
    <script src="Scripts/myScripts/myHome.js"></script>
    

    <div class="container text-center">
        <!-- Row 1 -->
        <div class="row">
            <div class="col">
                <div style="border-style: solid; border-width: medium; border-color: inherit; color: #66ccff">
                    <label>My Macros</label>
                    <br />
                    <label for="btnUpdateMacros" style="color: #afabab">
                        Maintenance
                        <br />
                        <!-- Maintenance cals from db -->
                        <br />
                        Protein:
                        <br />           
                        Fat:
                        <br />
                        Carbs:
                        <br />
                        <br />
                        <input type="button" id="btnUpdateMacros" value="View" class="btn btn-info" style="background-color: #66CCFF" onclick="#" />
                    </label>
                </div>
            </div>
            <div class="col-6">
                <div style="border-style: solid; border-width: medium; border-color: inherit; color: #66ccff">
                    <label>Days to next check in...</label>
                    <br />
                    <label for="btnCheckIn" style="color: #afabab">
                        <!--Pull information from myCheckIn.aspx
                            count down timer from check in -->
                        Check in count down timer here

                        <input type="button" id="btnCheckIn" value="View" class="btn btn-info" style="background-color: #66CCFF" onclick="#" />
                    </label>
                </div>

            </div>
            <div class="col">
                <div style="border-style: solid; border-width: medium; border-color: inherit; color: #66ccff">
                    <label>Rewards Earned</label>
                    <br />
                    <label for="btn" style="color: #afabab">
                        Rewards earned through your current plan
                    </label>
                </div>
            </div>
        </div>
    </div>



    
    <!--<button onclick="logOut()">Log Out</button> -->



</asp:Content>
