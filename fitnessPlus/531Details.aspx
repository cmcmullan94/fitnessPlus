<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="531Details.aspx.cs" Inherits="fitnessPlus._5__3__1Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--Css here -->
    <style>
        #531Table td, th {
            text-align: center;
            vertical-align: middle;
        }

        .auto-style1 {
            height: 37px;
        }

        .auto-style2 {
            color: #fff;
            background-color: #337ab7;
            height: 37px;
        }

        .auto-style3 {
            background-color: #dff0d8;
            height: 37px;
        }
    </style>



    <!--Scripts -->

    <script src="https://www.gstatic.com/firebasejs/5.9.2/firebase.js"></script>
    <script src="Scripts/myScripts/firebase.js"></script>
    <script src="Scripts/myScripts/531Details.js"></script>

    <!--HTML-->


    <div class="container text-center">

        <div class="row" style="padding-bottom: 35px">
            <!-- Row 1 -->
            <div class="col-sm-4">
            </div>
            <div class="col-sm-4">
                <label for="txtInfo" style="color: #66ccff; font-size: larger;">
                    Enter your one rep max for each of the lifts outlined below!
                </label>
            </div>
            <div class="col-sm-4">
            </div>
        </div>
        <!-- Row 1 ending -->

        <div class="row" style="padding-bottom: 20px;">
            <!-- Row 2 -->
            <div class="col-sm-4">
                <label for="txtSquatInput" style="color: #66ccff">
                    Squat
                        <br />
                    <input type="text" class="form-control" placeholder="100" id="txtSquatInput" />
                </label>
            </div>

            <div class="col-sm-4">
                <label for="txtDeadliftInput" style="color: #66ccff">
                    Deadlift
                        <br />
                    <input type="text" class="form-control" placeholder="100" id="txtDeadliftInput" />
                </label>
            </div>

            <div class="col-sm-4">
                <label for="btnSave" style="color: #66ccff">
                    <input type="button" id="btnSubmitAllMax" value="GO!" class="btn btn-info" style="background-color: #66CCFF" onclick="calcAll()" />
                </label>
            </div>

        </div>
        <!-- end row 2 -->


        <div class="row" style="padding-bottom: 50px;">
            <!-- Row 3 -->
            <div class="col-sm-4">
                <label for="txtBenchInput" style="color: #66ccff">
                    Bench
                        <br />
                    <input type="text" class="form-control" placeholder="100" id="txtBenchInput" />
                </label>
            </div>
            <div class="col-sm-4">
                <label for="txtOHPInput" style="color: #66ccff">
                    OHP
                        <br />
                    <input type="text" class="form-control" placeholder="100" id="txtOHPInput" />
                </label>
            </div>
            <div class="col-sm-4">
                <label for="btnSave" style="color: #66ccff">
                    <input type="button" id="btnSave" value="Save!" class="btn btn-info" style="background-color: #66CCFF" onclick="select" />
                    <br />
                    <small id="saveHelp" class="form-text text-muted">Happy with these numbers? Save them here!</small>
                </label>
            </div>
        </div>
        <!-- Row 3 -->

    </div>
    <!-- Container close -->

    <table class="table table-hover" id="531Table">
        <thead>
            <tr>
                <th scope="col"></th>
                <th scope="col"></th>
                <th scope="col">Squat</th>
                <th scope="col"></th>
                <th scope="col"></th>
                <th scope="col"></th>
                <th scope="col">Deadlift</th>
                <th scope="col"></th>
                <th scope="col"></th>
                <th scope="col"></th>
                <th scope="col">Bench</th>
                <th scope="col"></th>
                <th scope="col"></th>
                <th scope="col"></th>
                <th scope="col">Row</th>
                <th scope="col"></th>
            </tr>
            <tr>
                <!-- Squat Values -->
                <th scope="col"></th>
                <th scope="col">Sets</th>
                <th scope="col">Reps</th>
                <th scope="col">Base Number</th>
                <th scope="col"></th>
                <th scope="col">Sets</th>
                <th scope="col">Reps</th>
                <th scope="col">Base Number</th>
                <th scope="col"></th>
                <th scope="col">Sets</th>
                <th scope="col">Reps</th>
                <th scope="col">Base Number</th>
                <th scope="col"></th>
                <th scope="col">Sets</th>
                <th scope="col">Reps</th>
                <th scope="col">Base Number</th>
            </tr>
        </thead>
        <tbody>
            <tr id="row1">
                <!-- Week 1 -->
                <!--Squat -->
                <th scope="row"></th>
                <td>1 - 65%</td>
                <td>5</td>
                <td id="tdW1S1"></td>
                <td></td>
                <!--Deadlift -->
                <td>1 - 65%</td>
                <td>5</td>
                <td id="tdW1D1"></td>
                <td></td>
                <!-- Bench -->
                <td>1 - 65%</td>
                <td>5</td>
                <td id="tdW1B1"></td>
                <td></td>
                <!-- OHP -->
                <td>1 - 65%</td>
                <td>5</td>
                <td id="tdW1O1"></td>
            </tr>
            <tr id="row2">
                <!--Squat -->
                <th scope="row" class="auto-style2">Week 1</th>
                <td class="auto-style1">2 - 75%</td>
                <td class="auto-style1">5</td>
                <td id="tdW1S2" class="auto-style1"></td>
                <td class="auto-style1"></td>
                <!--Deadlift -->
                <td class="auto-style1">2 - 75%</td>
                <td class="auto-style1">5</td>
                <td class="auto-style1" id="tdW1D2"></td>
                <td class="auto-style1"></td>
                <!-- Bench -->
                <td class="auto-style1">2 - 75%</td>
                <td class="auto-style1">5</td>
                <td class="auto-style1" id="tdW1B2"></td>
                <td class="auto-style1"></td>
                <!-- OHP -->
                <td class="auto-style1">2 - 75%</td>
                <td class="auto-style1">5</td>
                <td class="auto-style1" id="tdW1O2"></td>
            </tr>
            <tr id="row3" style="border-bottom: solid">
                <!--Squat -->
                <th scope="row"></th>
                <td>3 - 80%</td>
                <td>5</td>
                <td id="tdW1S3"></td>
                <td></td>
                <!--Deadlift -->
                <td>3 - 80%</td>
                <td>5</td>
                <td id="tdW1D3"></td>
                <td></td>
                <!-- Bench -->
                <td>3 - 80%</td>
                <td>5</td>
                <td id="tdW1B3"></td>
                <td></td>
                <!-- OHP -->
                <td>3 - 80%</td>
                <td>5</td>
                <td id="tdW1O3"></td>
            </tr>
            <!-- -------------------------------------------------------------------------------- -->
            <!-- Week 2 -->

            <tr id="row4">
                <!--Squat -->
                <th scope="row"></th>
                <td>1 - 70%</td>
                <td>3</td>
                <td id="tdW2S1"></td>
                <td></td>
                <!--Deadlift -->
                <td>1 - 70%</td>
                <td>3</td>
                <td id="tdW2D1"></td>
                <td></td>
                <!-- Bench -->
                <td>1 - 70%</td>
                <td>3</td>
                <td id="tdW2B1"></td>
                <td></td>
                <!-- OHP -->
                <td>1 - 70%</td>
                <td>3</td>
                <td id="tdW2O1"></td>
            </tr>
            <tr id="row5">
                <!-- Squat -->
                <th scope="row" class="auto-style3">Week 2</th>
                <td class="auto-style1">2 - 80%</td>
                <td class="auto-style1">3</td>
                <td id="tdW2S2" class="auto-style1"></td>
                <td class="auto-style1"></td>
                <!--Deadlift -->
                <td class="auto-style1">2 - 80%</td>
                <td class="auto-style1">3</td>
                <td id="tdW2D2" class="auto-style1"></td>
                <td class="auto-style1"></td>
                <!-- Bench -->
                <td class="auto-style1">2 - 80%</td>
                <td class="auto-style1">3</td>
                <td class="auto-style1" id="tdW2B2"></td>
                <td class="auto-style1"></td>
                <!-- OHP -->
                <td class="auto-style1">2 - 80%</td>
                <td class="auto-style1">3</td>
                <td class="auto-style1" id="tdW2O2"></td>
            </tr>
            <tr id="row6" style="border-bottom: solid">
                <!--Squat -->
                <th scope="row"></th>
                <td>3 - 85%</td>
                <td>3</td>
                <td id="tdW2S3">&nbsp;</td>
                <td></td>
                <!--Deadlift -->
                <td>3 - 85%</td>
                <td>3</td>
                <td id="tdW2D3"></td>
                <td></td>
                <!-- Bench -->
                <td>3 - 85%</td>
                <td>3</td>
                <td id="tdW2B3"></td>
                <td></td>
                <!-- OHP -->
                <td>3 - 85%</td>
                <td>3</td>
                <td id="tdW2O3"></td>
            </tr>

            <!------------------------------------------------------------------------------->

            <!-- Week 3 -->

            <tr id="row7">
                <!--Squat -->
                <th scope="row" class="auto-style1"></th>
                <td class="auto-style1">1 - 75%</td>
                <td class="auto-style1">5</td>
                <td class="auto-style1" id="tdW3S1">&nbsp;</td>
                <td class="auto-style1"></td>
                <!--Deadlift -->
                <td class="auto-style1">1 - 75%</td>
                <td class="auto-style1">5</td>
                <td class="auto-style1" id="tdW3D1"></td>
                <td class="auto-style1"></td>
                <!-- Bench -->
                <td class="auto-style1">1 - 75%</td>
                <td class="auto-style1">5</td>
                <td class="auto-style1" id="tdW3B1"></td>
                <td class="auto-style1"></td>
                <!-- OHP -->
                <td class="auto-style1">1 - 75%</td>
                <td class="auto-style1">5</td>
                <td class="auto-style1" id="tdW3O1"></td>
            </tr>
            <tr id="row8">
                <!-- Squat -->
                <th scope="row" class="bg-danger">Week 3</th>
                <td>2 - 85%</td>
                <td>3</td>
                <td id="tdW3S2"></td>
                <td></td>
                <!--Deadlift -->
                <td>2 - 85%</td>
                <td>3</td>
                <td id="tdW3D2"></td>
                <td></td>
                <!-- Bench -->
                <td>2 - 85%</td>
                <td>3</td>
                <td id="tdW3B2"></td>
                <td></td>
                <!-- OHP -->
                <td>2 - 85%</td>
                <td>3</td>
                <td id="tdW3O2"></td>
            </tr>
            <tr id="row9" style="border-bottom: solid">
                <!--Squat -->
                <th scope="row"></th>
                <td>3 - 90%</td>
                <td>1</td>
                <td id="tdW3S3"></td>
                <td></td>
                <!--Deadlift -->
                <td>3 - 90%</td>
                <td>1</td>
                <td id="tdW3D3"></td>
                <td></td>
                <!-- Bench -->
                <td>3 - 90%</td>
                <td>1</td>
                <td id="tdW3B3"></td>
                <td></td>
                <!-- OHP -->
                <td>3 - 90%</td>
                <td>1</td>
                <td id="tdW3O3"></td>
            </tr>
            <!-- -------------------------------------------------------------->

            <!-- Week 4 -->
            <tr id="row10">
                <!-- Squat -->
                <th scope="row"></th>
                <td>1 - 40%</td>
                <td>8</td>
                <td id="tdW4S1"></td>
                <td></td>
                <!--Deadlift -->
                <td>1 - 40%</td>
                <td>8</td>
                <td id="tdW4D1"></td>
                <td></td>
                <!-- Bench -->
                <td>1 - 40%</td>
                <td>8</td>
                <td id="tdW4B1"></td>
                <td></td>
                <!-- OHP -->
                <td>1 - 40%</td>
                <td>8</td>
                <td id="tdW4O1"></td>
            </tr>
            <tr id="row11">
                <!--Squat -->
                <th scope="row" class="bg-info">Week 4</th>
                <td>2 - 50%</td>
                <td>8</td>
                <td id="tdW4S2"></td>
                <td></td>
                <!--Deadlift -->
                <td>2 - 50%</td>
                <td>8</td>
                <td id="tdW4D2"></td>
                <td></td>
                <!-- Bench -->
                <td>2 - 50%</td>
                <td>8</td>
                <td id="tdW4B2"></td>
                <td></td>
                <!-- OHP -->
                <td>2 - 50%</td>
                <td>8</td>
                <td id="tdW4O2"></td>
            </tr>
            <tr id="row12">
                <!--Squat -->
                <th scope="row"></th>
                <td>3 - 60%</td>
                <td>8</td>
                <td id="tdW4S3"></td>
                <td></td>
                <!--Deadlift -->
                <td>3 - 60%</td>
                <td>8</td>
                <td id="tdW4D3"></td>
                <td></td>
                <!-- Bench -->
                <td>3 - 60%</td>
                <td>8</td>
                <td id="tdW4B3"></td>
                <td></td>
                <!-- OHP -->
                <td>3 - 60%</td>
                <td>8</td>
                <td id="tdW4O3"></td>
            </tr>
        </tbody>
    </table>









</asp:Content>
