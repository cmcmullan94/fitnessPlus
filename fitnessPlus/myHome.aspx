<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="myHome.aspx.cs" Inherits="fitnessPlus.myHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Styles -->
    <style>
        /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
        #map {
            height: 700px;
        }
    </style>

    <script src="https://www.gstatic.com/firebasejs/5.9.2/firebase.js"></script>
    <script src="Scripts/myScripts/firebase.js"></script>
    <script src="Scripts/myScripts/myHome.js"></script>


    <!-- Places API scripts -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDmBq38iYv1efT4zSSD6ekgP9tO0920AaA&libraries=places"></script>




    <div class="container text-center">
        <!-- Row 1 -->
        <div class="row">
            <div class="col-sm-4">
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
                        <input type="button" id="btnUpdateMacros" value="View" class="btn btn-info" style="background-color: #66CCFF" />
                    </label>
                </div>
            </div>
            <div class="col-sm-4">
                <div style="border-style: solid; border-width: medium; border-color: inherit; color: #66ccff">
                    <label>Days to next check in...</label>
                    <br />
                    <label for="btnCheckIn" style="color: #afabab">
                        <!--Pull information from myCheckIn.aspx
                            count down timer from check in -->
                        Check in count down timer here

                        <input type="button" id="btnCheckIn" value="View" class="btn btn-info" style="background-color: #66CCFF" onclick="test()" />
                    </label>
                </div>

            </div>
            <div class="col-sm-4">
                <div style="border-style: solid; border-width: medium; border-color: inherit; color: #66ccff">
                    <label>Rewards Earned</label>
                    <br />
                    <label for="btn" style="color: #afabab">
                        Rewards earned through your current plan
                    </label>
                </div>
            </div>
        </div>

        <!-- Row 2 - Google Places API here -->

        <div class="row" style="padding-bottom: 25px;">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
            </div>
            <div class="col-sm-4"></div>

        </div>
        <label for="btn" style="color: #afabab; font-size: x-large;">
            Your local gyms!
        </label>
        <div id="map"></div>
        <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBdKuNXNw_UgAqyxmdWFWslOIEL5pkv55E&callback=initMap">
        </script>


    </div>
    <!-- Container close -->


    <!--<button onclick="logOut()">Log Out</button> -->



</asp:Content>
