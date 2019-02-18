﻿<%@ Page Title="Welcome Page" Language="C#" AutoEventWireup="true" CodeBehind="welcomePage.aspx.cs" Inherits="fitnessPlus.welcomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="icon" href="Images/favicon.png" />
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header content, separate from site.master -->
        <div class="navbar navbar-inverse navbar-fixed-top", "container text-center" style="background-color: #afabab">

            <div class="container", "col-lg-3 col-lg-offset-3">

                <div> Twitter </div>
                <div> Facebook </div>
                <div> Instagram </div>

                <div class="navbar-header" >
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>

                <div class="navbar-collapse collapse" >
                    <ul class="nav navbar-nav">
                    </ul>
                </div>

            </div>

        </div>

        <!-- Main body content here 
            "info-line = allows for vertical stacking "-->

       <div class="container text-center">
               
            <div class="info-header", "col-lg-4 col-lg-offset-4" style="padding-top: 100px">
                &nbsp;
                &nbsp;
                &nbsp;
                <div class="info-line">
                    <img src="Images/welcomePageLogo.png" class="rounded", "img-fluid" alt="..."/>
                </div>
                &nbsp;
                &nbsp;
                &nbsp;
                <div class="info-line", "align-content-center">
                    <asp:Button ID="btnLogIn" runat="server" Text="Log In" class="btn btn-info" style="background-color: #66ccff" Width="100px" font="Calibri" Font-Size="Large" href=""/>
                </div>
                &nbsp;
                &nbsp;
                &nbsp;
                <div class="info-line", "align-content-center">
                    <asp:Button ID="btnPreview" runat="server" Text="Preview!" class="btn btn-info" style="background-color: #66ccff" Width="100px" font="Calibri" Font-Size="Large" href=""/>
                </div>
                
            </div>
       </div>

    </form>
</body>
</html>
