<%@ Page Language="C#" Title="Log In" AutoEventWireup="true" CodeBehind="logIn.aspx.cs" Inherits="fitnessPlus.logIn" %>

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
        <div class="navbar navbar-inverse navbar-fixed-top" style="background-color: #afabab">
            <div class="container-fluid">

                <div class="navbar-header" >
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>

                    <ul class="nav navbar-nav" >
                        <li class="nav-item"> 
                            <a class="nav-link" href='https://www.facebook.com/'> <img src="Images/facebook.png" /> </a>
                        </li>
                        <li class="nav-item"> 
                            <a class="nav-link" href='https://www.instagram.com/'> <img src="Images/instagram.png" /> </a>
                        </li>
                    </ul> 

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

                <div class="form-group">
                    <label for="inputEmail" style="color: #66ccff">Email </label>
                    <input type="email" class="form-control" id="frmEmail" aria-describedby="emailHelp" placeholder="Enter email" style="width: 200px" />
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
                <div class="form-group">
                    <label for="inputPassword" style="color: #66ccff">Password </label>
                    <input type="email" class="form-control" id="frmPass" aria-describedby="passwordHelp" placeholder="Password" style="width: 200px" />
                    <!-- ERROR HANDLING FOR PASSWORD LOGIN HERE-->
                </div>
                &nbsp;
                &nbsp;
                &nbsp;
                <div class="info-line", "align-content-center" style="padding-top: 50px">
                    <asp:Button ID="btnUserLogIn" runat="server" Text="Log In" class="btn btn-info" style="background-color: #66ccff" Width="100px" font="Calibri" Font-Size="Large" href=""/>
                </div>
                &nbsp;
                &nbsp;
                &nbsp;
                <div class="info-line", "align-content-center">
                    <p> Not already with us? Join here!</p>
                </div>
                &nbsp;
                &nbsp;
                &nbsp;
                <div class="info-line", "align-content-center">
                    <asp:Button ID="btnRegister" runat="server" Text="Register" class="btn btn-info" style="background-color: #66ccff" Width="100px" font="Calibri" Font-Size="Large" href=""/>
                </div>
            </div>
       </div>
    </form>
</body>
</html>
