<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="myCheckIn.aspx.cs" Inherits="fitnessPlus._531CheckIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .star {
            color: goldenrod;
            font-size: 2.0rem;
            padding: 0 1rem; /* space out the stars */
        }

            .star::before {
                content: '\2606';
                cursor: pointer;
            }

            .star:hover::before {
                /* the :hover should come first */
                content: '\2605';
                color: #bada55;
            }

            .star.rated::before {
                /* the :hover should come first */
                content: '\2605';
            }
    </style>

    <script src="https://www.gstatic.com/firebasejs/5.9.2/firebase.js"></script>
    <script src="Scripts/myScripts/firebase.js"></script>
    <script src="Scripts/myScripts/CheckIn.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


    <div class="container text-center">
        <label style="color: #66ccff">myCheck-In</label>
        <div class="row">

            <div class="col-sm-4">
                <!-- Col 1 -->
            </div>
            <div class="col-sm-4">
                <!-- Col 2 -->
                <div class="stars" data-rating="3">
                    <span class="star">&nbsp;</span>
                    <span class="star">&nbsp;</span>
                    <span class="star">&nbsp;</span>
                    <span class="star">&nbsp;</span>
                    <span class="star">&nbsp;</span>
                </div>
                <br />
                <br />
                <p style="color:#afabab; font-family: Calibri; font-size: larger;">Please rate yourself out of 5 for your work effort across the last week!</p>
                <br />
                <label for="btnSaveCheckIn" style="color: #afabab">
                    <input type="button" id="btnSaveCheckIn" value="Submit!" class="btn btn-info" style="background-color: #66CCFF" />
                </label>
            </div>
            <div class="col-sm-4">
                <!-- Col 3 -->
            </div>
        </div>
    </div>


</asp:Content>

