<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="myCheckIn.aspx.cs" Inherits="fitnessPlus._531CheckIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .star {
            color: goldenrod;
            font-size: 4.0rem;
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
        <label style="color: #66ccff; padding-bottom: 15px; font-size: xx-large">myCheck-In</label>
        
        <!-- Row 1 -->
        <div class="row">
            <div class="col" style="padding-bottom: 10px">
                <label style="color: #66ccff">
                    Weekly weight update! (lbs)
                <input type="text" class="form-control" placeholder="100" id="txtWeightInput" style="padding-top:10px;"/>
                </label>
            </div>


            <div class="col" style="padding-bottom: 10px">
                <label style="color: #66ccff">
                    Weekly measurements update! <br />
                    <label style="color: #afabab">Waist(in)
                        <input type="text" class="form-control" placeholder="100" id="txtWaist" />
                    </label>
                    <label style="color: #afabab">Hips(in)
                        <input type="text" class="form-control" placeholder="100" id="txtHips" />
                    </label>
                    <label style="color: #afabab">Neck(in)
                        <input type="text" class="form-control" placeholder="100" id="txtNeck" />
                    </label>
                </label>
            </div>
        </div>

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
                <p style="color: #afabab; font-family: Calibri; font-size: larger;">Please rate yourself out of 5 for your work effort across the last week!</p>
                <br />
                <label for="btnSaveCheckIn" style="color: #afabab">
                    <input type="button" id="btnSaveCheckIn" value="Submit!" class="btn btn-info" style="background-color: #66CCFF" onclick="save()"/>
                </label>
            </div>
            <div class="col-sm-4">
                <!-- Col 3 -->
            </div>
        </div>
    </div>


</asp:Content>

