﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="531Details.aspx.cs" Inherits="fitnessPlus._5__3__1Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--Css here -->
    <style>
        #cssTable td {
            text-align: center;
            vertical-align: middle;
        }
    </style>



    <!--Scripts -->


    <!-- <script type="text/javascript" > 
        $('.myIframe').css('height', $(window).height() + 'px');
    </script> -->

    <script src="https://www.gstatic.com/firebasejs/5.9.2/firebase.js"></script>
    <script src="Scripts/myScripts/firebase.js"></script>
    <script src="Scripts/myScripts/531Details.js"></script>

    <script type="text/javascript" src="http://r.office.microsoft.com/r/rlidExcelButton?v=1&kip=1"></script>



    <!--HTML-->


    <!-- <iframe width="100%" height="100%"  frameborder="0" scrolling="no" src="https://ulster-my.sharepoint.com/personal/mcmullan-c23_ulster_ac_uk/_layouts/15/Doc.aspx?sourcedoc={2dcf7620-bae5-42a4-83a2-2d7dcb10ae52}&action=embedview&wdAllowInteractivity=False&wdHideGridlines=True&wdHideHeaders=True&wdDownloadButton=True&wdInConfigurator=True"></iframe> -->

    <table class="table table-sm" id="cssTable">
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
            <tr> <!-- Week 1 -->
                <!--Squat -->
                <th scope="row"></th>
                <td>1 - 65%</td>
                <td>5</td>
                <td>#</td>
                <td></td>
                <!--Deadlift -->
                <td>1 - 65%</td>
                <td>5</td>
                <td>#</td>
                <td></td>
                <!-- Bench -->
                <td>1 - 65%</td>
                <td>5</td>
                <td>#</td>
                <td></td>
                <!-- OHP -->
                <td>1 - 65%</td>
                <td>5</td>
                <td>#</td>
            </tr>
            <tr>
                <!--Squat -->
                <th scope="row">Week 1</th>
                <td>2 - 75%</td>
                <td>5</td>
                <td>#</td>
                <td></td>
                <!--Deadlift -->
                <td>2 - 75%</td>
                <td>5</td>
                <td>#</td>
                <td></td>
                <!-- Bench -->
                <td>2 - 75%</td>
                <td>5</td>
                <td>#</td>
                <td></td>
                <!-- OHP -->
                <td>2 - 75%</td>
                <td>5</td>
                <td>#</td>
            </tr>
            <tr> 
                <!--Squat -->
                <th scope="row"></th>
                <td>3 - 80%</td>
                <td>5</td>
                <td>#</td>
                <td></td>
                <!--Deadlift -->
                <td>3 - 80%</td>
                <td>5</td>
                <td>#</td>
                <td></td>
                <!-- Bench -->
                <td>3 - 80%</td>
                <td>5</td>
                <td>#</td>
                <td></td>
                <!-- OHP -->
                <td>3 - 80%</td>
                <td>5</td>
                <td>#</td>
            </tr>
<!-- -------------------------------------------------------------------------------- -->
            <!-- Week 2 -->

            <tr> 
                <!--Squat -->
                <th scope="row"></th>
                <td>1 - 70%</td>
                <td>3</td>
                <td>#</td>
                <td></td>
                <!--Deadlift -->
                <td>1 - 70%</td>
                <td>3</td>
                <td>#</td>
                <td></td>
                <!-- Bench -->
                <td>1 - 70%</td>
                <td>3</td>
                <td>#</td>
                <td></td>
                <!-- OHP -->
                <td>1 - 70%</td>
                <td>3</td>
                <td>#</td>
            </tr>
            <tr>
                <!-- Squat -->
                <th scope="row">Week 2</th>
                <td>2 - 80%</td>
                <td>3</td>
                <td>#</td>
                <td></td>
                <!--Deadlift -->
                <td>2 - 80%</td>
                <td>3</td>
                <td>#</td>
                <td></td>
                <!-- Bench -->
                <td>2 - 80%</td>
                <td>3</td>
                <td>#</td>
                <td></td>
                <!-- OHP -->
                <td>2 - 80%</td>
                <td>3</td>
                <td>#</td>
            </tr>
            <tr> 
                <!--Squat -->
                <th scope="row"></th>
                <td>3 - 90%</td>
                <td>3</td>
                <td>#</td>
                <td></td>
                <!--Deadlift -->
                <td>3 - 90%</td>
                <td>3</td>
                <td>#</td>
                <td></td>
                <!-- Bench -->
                <td>3 - 90%</td>
                <td>3</td>
                <td>#</td>
                <td></td>
                <!-- OHP -->
                <td>3 - 90%</td>
                <td>3</td>
                <td>#</td>
            </tr>

<!------------------------------------------------------------------------------->

            <!-- Week 3 -->

            <tr> 
                <!--Squat -->
                <th scope="row"></th>
                <td>1 - 75%</td>
                <td>5</td>
                <td>#</td>
                <td></td>
                <!--Deadlift -->
                <td>1 - 75%</td>
                <td>5</td>
                <td>#</td>
                <td></td>
                <!-- Bench -->
                <td>1 - 75%</td>
                <td>5</td>
                <td>#</td>
                <td></td>
                <!-- OHP -->
                <td>1 - 75%</td>
                <td>5</td>
                <td>#</td>
            </tr>
            <tr>
                <!-- Squat -->
                <th scope="row">Week 3</th>
                <td>2 - 85%</td>
                <td>3</td>
                <td>#</td>
                <td></td>
                <!--Deadlift -->
                <td>2 - 85%</td>
                <td>3</td>
                <td>#</td>
                <td></td>
                <!-- Bench -->
                <td>2 - 85%</td>
                <td>3</td>
                <td>#</td>
                <td></td>
                <!-- OHP -->
                <td>2 - 85%</td>
                <td>3</td>
                <td>#</td>
            </tr>
            <tr> 
                <!--Squat -->
                <th scope="row"></th>
                <td>3 - 90%</td>
                <td>1</td>
                <td>#</td>
                <td></td>
                <!--Deadlift -->
                <td>3 - 90%</td>
                <td>1</td>
                <td>#</td>
                <td></td>
                <!-- Bench -->
                <td>3 - 90%</td>
                <td>1</td>
                <td>#</td>
                <td></td>
                <!-- OHP -->
                <td>3 - 90%</td>
                <td>1</td>
                <td>#</td>
            </tr>
<!-- -------------------------------------------------------------->

            <!-- Week 4 -->
            <tr>
                <!-- Squat -->
                <th scope="row"></th>
                <td>1 - 40%</td>
                <td>8</td>
                <td>#</td>
                <td></td>
                <!--Deadlift -->
                <td>1 - 40%</td>
                <td>8</td>
                <td>#</td>
                <td></td>
                <!-- Bench -->
                <td>1 - 40%</td>
                <td>8</td>
                <td>#</td>
                <td></td>
                <!-- OHP -->
                <td>1 - 40%</td>
                <td>8</td>
                <td>#</td>
            </tr>
            <tr> 
                <!--Squat -->
                <th scope="row">Week 4</th>
                <td>2 - 50%</td>
                <td>8</td>
                <td>#</td>
                <td></td>
                <!--Deadlift -->
                <td>2 - 50%</td>
                <td>8</td>
                <td>#</td>
                <td></td>
                <!-- Bench -->
                <td>2 - 50%</td>
                <td>8</td>
                <td>#</td>
                <td></td>
                <!-- OHP -->
                <td>2 - 50%</td>
                <td>8</td>
                <td>#</td>
            </tr>
            <tr> 
                <!--Squat -->
                <th scope="row"></th>
                <td>3 - 60%</td>
                <td>8</td>
                <td>#</td>
                <td></td>
                <!--Deadlift -->
                <td>3 - 60%</td>
                <td>8</td>
                <td>#</td>
                <td></td>
                <!-- Bench -->
                <td>3 - 60%</td>
                <td>8</td>
                <td>#</td>
                <td></td>
                <!-- OHP -->
                <td>3 - 60%</td>
                <td>8</td>
                <td>#</td>
            </tr>
        </tbody>
    </table>









</asp:Content>