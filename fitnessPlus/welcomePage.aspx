<%@ Page Title="Welcome Page" Language="C#" AutoEventWireup="true" CodeBehind="welcomePage.aspx.cs" Inherits="fitnessPlus.welcomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="icon" href="Images/favicon.png" />
    <title></title>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

    <style type="text/css">
        
    </style>

</head>
<body>
    <form id="form1" runat="server">


        <!-- Header content, separate from site.master -->
        <nav class="navbar navbar-default" style="background-color: #afabab">
            <div class="container-fluid">
                <div class="navbar-header">
                    
                    <!-- <a href="#"><img src="Images/logo.png" /></a> -->
                    <a class="navbar-brand" href="#">fitnessPlus</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
                        <li><a href="logIn.aspx"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>
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
                    <asp:Button ID="btnLogIn" runat="server" Text="Log In" class="btn btn-info" style="background-color: #66ccff" Width="100px" font="Calibri" Font-Size="Large" OnClick="btnLogIn_Click" />
                </div>
                &nbsp;
                &nbsp;
                &nbsp;
                
            </div>
       </div>

    </form>
</body>
</html>
