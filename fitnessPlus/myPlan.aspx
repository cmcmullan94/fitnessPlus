<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="myPlan.aspx.cs" Inherits="fitnessPlus.myPlan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--Css here -->
    <style></style>

    <!--Scripts -->

    <!--HTML-->

    <div class="container text-center">
        <!-- Row 1 -->
        <div class="row" style="padding-bottom: 50px;">
            <div class="col-sm-4">
                <div style="border-style: solid; border-width: medium; border-color: inherit; color: #66ccff">
                    <label>Strength</label>
                    <br />
                    <label for="btnViewStrength1" style="color: #afabab">
                        12 Week Training Plan
                        <br />
                        <br />
                        Compound Based Workouts
                        <br />
                        <br />
                        Beginner
                        <br />
                        <br />
                        <img src="Images/beginnerIcon2.png" />
                        <br />
                        <br />
                        <input type="button" id="btnViewStrength1" value="View" class="btn btn-info" style="background-color: #66CCFF" onclick="#" />
                    </label>
                </div>
            </div>
            <div class="col-sm-4">
                <div style="border-style: solid; border-width: medium; border-color: inherit; color: #66ccff">
                    <label>Fitness</label>
                    <br />
                    <label for="btnViewFitness1" style="color: #afabab">
                        12 Week Training Plan
                        <br />
                        <br />
                        High Intensity Interval Training
                        <br />
                        <br />
                        Beginner
                        <br />
                        <br />
                        <img src="Images/beginnerIcon2.png" />
                        <br />
                        <br />
                        <input type="button" id="btnViewFitness1" value="View" class="btn btn-info" style="background-color: #66CCFF" onclick="#" />
                    </label>
                </div>
            </div>
            <div class="col-sm-4">
                <div style="border-style: solid; border-width: medium; border-color: inherit; color: #66ccff">
                    <label>Aesthetics</label>
                    <br />
                    <label for="btnViewAesthetics1" style="color: #afabab">
                        12 Week Training Plan
                        <br />
                        <br />
                        Full Body Training 
                        <br />
                        <br />
                        Beginner
                        <br />
                        <br />
                        <img src="Images/beginnerIcon2.png" />
                        <br />
                        <br />
                        <input type="button" id="btnViewAesthetics1" value="View" class="btn btn-info" style="background-color: #66CCFF" onclick="#" />
                    </label>
                </div>
            </div>
        </div>
        <!--Row 2 -->
        <div class="row" style="padding-bottom: 50px;">
            <div class="col-sm-4">
                <div style="border-style: solid; border-width: medium; border-color: inherit; color: #66ccff">
                    <label>Strength</label>
                    <br />
                    <label for="btnViewStrength2" style="color: #afabab">
                        16 Week Training Plan
                        <br />
                        <br />
                        5/3/1 
                        <br />
                        <br />
                        Intermediate
                        <br />
                        <br />
                        <img src="Images/intermediateIcon2.png" />
                        <br />
                        <br />
                        <input type="button" id="btnViewStrength2" value="View" class="btn btn-info" style="background-color: #66CCFF" onclick="#" />
                    </label>
                </div>
            </div>
            <div class="col-sm-4">
                <div style="border-style: solid; border-width: medium; border-color: inherit; color: #66ccff">
                    <label>Fitness</label>
                    <br />
                    <label for="btnViewFitness2" style="color: #afabab">
                        16 Week Training Plan
                        <br />
                        <br />
                        Compound Based Workouts 
                        <br />
                        <br />
                        Intermediate
                        <br />
                        <br />
                        <img src="Images/intermediateIcon2.png" />
                        <br />
                        <br />
                        <input type="button" id="btnViewFitness2" value="View" class="btn btn-info" style="background-color: #66CCFF" onclick="#" />
                    </label>
                </div>
            </div>
            <div class="col-sm-4">
                <div style="border-style: solid; border-width: medium; border-color: inherit; color: #66ccff">
                    <label>Aesthetics</label>
                    <br />
                    <label for="btnViewAesthetics2" style="color: #afabab">
                        16 Week Training Plan
                        <br />
                        <br />
                        Push/Pull/Legs 
                        <br />
                        <br />
                        Beginner
                        <br />
                        <br />
                        <img src="Images/intermediateIcon2.png" />
                        <br />
                        <br />
                        <input type="button" id="btnViewAesthetics2" value="View" class="btn btn-info" style="background-color: #66CCFF" onclick="#" />
                    </label>
                </div>
            </div>
        </div>

        <!-- Row 3 -->
        <div class="row">
            <div class="col-sm-4">
                <div style="border-style: solid; border-width: medium; border-color: inherit; color: #66ccff">
                    <label>Strength</label>
                    <br />
                    <label for="btnViewStrength3" style="color: #afabab">
                        Competition Prep
                        <br />
                        <br />
                        5/3/1 +
                        <br />
                        <br />
                        Expert
                        <br />
                        <br />
                        <img src="Images/expertIcon2.png" />
                        <br />
                        <br />
                        <input type="button" id="btnViewStrength3" value="View" class="btn btn-info" style="background-color: #66CCFF" onclick="#" />
                    </label>
                </div>
            </div>

            <div class="col-sm-4">
                <div style="border-style: solid; border-width: medium; border-color: inherit; color: #66ccff">
                    <label>Fitness</label>
                    <br />
                    <label for="btnViewFitness3" style="color: #afabab">
                        Iron Man
                        <br />
                        <br />
                        Reposiratory Based Training 
                        <br />
                        <br />
                        Expert
                        <br />
                        <br />
                        <img src="Images/expertIcon2.png" />
                        <br />
                        <br />
                        <input type="button" id="btnViewFitness3" value="View" class="btn btn-info" style="background-color: #66CCFF" onclick="#" />
                    </label>
                </div>
            </div>

            <div class="col-sm-4">
                <div style="border-style: solid; border-width: medium; border-color: inherit; color: #66ccff">
                    <label>Aesthetics</label>
                    <br />
                    <label for="btnViewAesthetics3" style="color: #afabab">
                        Competition Prep
                        <br />
                        <br />
                        5 Day Split
                        <br />
                        <br />
                        Expert
                        <br />
                        <br />
                        <img src="Images/expertIcon2.png" />
                        <br />
                        <br />
                        <input type="button" id="btnViewAesthetics3" value="View" class="btn btn-info" style="background-color: #66CCFF" onclick="#" />
                    </label>
                </div>
            </div>

        </div>
    </div> <!-- Container close -->
</asp:Content>
