<%@ Page Language="C#" Title="Log In" AutoEventWireup="true" CodeBehind="logIn.aspx.cs" Inherits="fitnessPlus.logIn" %>

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
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
                        <li><a href="logIn.aspx"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Main body content here 
            "info-line = allows for vertical stacking "-->

       <div class="container text-center">
           
           <!--Top Half -->

           <div class="row">
             <div class="col-sm-4">
             </div>

             <div class="col-sm-4">

                    <label for="frmEmail" style="color: #66ccff">
                        Email 
                        <br />
                        <br />
                    <input type="email" class="form-control" id="frmEmail" aria-describedby="emailHelp" placeholder="Enter email" style="width: 200px" />
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </label>
                
                    <label for="frmPass" style="color: #66ccff; padding-top: 50px;">
                        Password 
                        <br />
                        <br />
                    <input type="password" class="form-control" id="frmPass" aria-describedby="passwordHelp" placeholder="Password" style="width: 200px" />
                    </label>

             </div>

             <div class="col-sm-4">
             </div>
             
         </div>

         <!-- Bottom Half-->

           <div class="row">
             <div class="col-sm-4">
             </div>

             <div class="col-sm-4" style="padding-top: 50px">

                    <input type="button" id="btnLogIn" value="LogIn" name="button" class="btn btn-info" style="background-color: #66CCFF" onclick=" "/>

                    <p style="padding-top: 50px"> Not already with us? Join here!</p>

                    <input type="button" id="btnRegister" value="Register" name="button" class="btn btn-info" style="background-color: #66CCFF" onclick=" "/>

             </div>

             <div class="col-sm-4">
             </div>
             
         </div>

        </div> <!-- Container close -->
               
    </form>
</body>
</html>
