<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="fitnessPlus.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" href="Images/favicon.png" />
    <title></title>
    <!-- <link href="Content/bootstrap.css" rel="stylesheet" /> -->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

    <script src="https://www.gstatic.com/firebasejs/5.9.2/firebase.js"></script>
    <script src="Scripts/myScripts/firebase.js"></script>
    <script src="Scripts/myScripts/Register.js"></script>


    <style type="text/css">
        .button {
            width: 100px;
            font-family: Calibri;
            font-size: large;
        }
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
                        <li><a href="Register.aspx"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
                        <li><a href="logIn.aspx"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>


        <!-- Content Here -->
        <div class="container text-center">

            <!--Row 1 -->

            <div class="row" style="padding-bottom: 20px;">
                <div class="col-sm-4">
                </div>
                <div class="col-sm-4">
                    <label for="txtUsernameInput" style="color: #66ccff">
                        Username
                        <br />
                        <br />
                        <input type="text" class="form-control" placeholder="Username" id="txtUsernameInput" aria-describedby="Username" style="width: 200px" />
                    </label>
                </div>
                <div class="col-sm-4">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                </div>
                <div class="col-sm-4">
                    <input type="button" id="btnRegister" value="Register!" name="register" class="btn btn-info" style="background-color: #66CCFF" onclick="registerAccount()" />
                </div>
                <div class="col-sm-4">
                </div>

            </div>

        </div>
        <!-- Container close -->

    </form>
</body>
</html>
