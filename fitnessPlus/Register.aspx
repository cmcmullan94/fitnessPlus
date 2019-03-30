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


    <script type="text/javascript">
        $(function () {
            $(function () {
                $('#datetimepicker1').datetimepicker();

            });
        });

    </script>

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

        <!-- Main body content here 
            "info-line = allows for vertical stacking "-->

        <div class="container text-center">

            <!--Row 1 -->

            <div class="row" style="padding-bottom: 20px;">
                <div class="col-sm-4">
                </div>

                <div class="col-sm-4">

                    <label for="txtUsernameInput" style="color: #66ccff">
                        Username
                        <br />
                        <input type="text" class="form-control" placeholder="Username" id="txtUsernameInput" aria-describedby="Username" style="width: 200px" />
                    </label>


                </div>

                <div class="col-sm-4">
                </div>

            </div>
            <!--Row 2 -->
            <div class="row" style="padding-bottom: 20px;">
                <div class="col-sm-4">
                </div>
                <div class="col-sm-4">
                    <label for="txtEmailInput" style="color: #66ccff">
                        Email
                        <br />
                        <input type="email" class="form-control" placeholder="example@hotmail.co.uk" id="txtEmailInput" aria-describedby="Email" style="width: 200px" />
                    </label>

                </div>
                <div class="col-sm-4">
                </div>
            </div>

            <!--Row 3 -->
            <div class="row">
                <div class="col-sm-4">
                </div>

                <div class="col-sm-4">

                    <label for="txtForenameInput" style="color: #66ccff">
                        Forename
                        <br />
                        <input type="text" class="form-control" placeholder="Joe" id="txtForenameInput" aria-describedby="forname" style="width: 150px" />
                    </label>
                    <label for="txtSurnameInput" style="color: #66ccff">
                        Surname
                        <br />
                        <input type="text" class="form-control" placeholder="Bloggs" id="txtSurnameInput" aria-describedby="surname" style="width: 150px" />
                    </label>

                </div>

                <div class="col-sm-4">
                </div>

            </div>
            <!--Row 4 -->
            <div class="row">
                <div class="col-sm-4">
                </div>

                <div class="col-sm-4" style="padding-top: 50px">

                    <label for="txtDOB" style="color: #66ccff">
                        D.O.B </label>
                    <div class="form-group">
                        <div class='input-group date' id='datetimepicker1'>
                            <input type='text' class="form-control" />
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                    

                    <label for="sex" style="color: #66ccff">
                        Sex
                    <select class="form-control" id="sex">
                        <option>Male</option>
                        <option>Female</option>
                    </select>
                    </label>
                </div>

                <div class="col-sm-4">
                </div>

            </div>
            <!--Row 5 -->
            <div class="row">
                <div class="col-sm-4">
                </div>

                <div class="col-sm-4">

                    <label for="txtPassword" style="color: #66ccff; padding-top: 50px;">
                        Password 
                        <br />
                        <input type="password" class="form-control" id="txtPassword" aria-describedby="password" placeholder="Password" style="width: 150px" />
                    </label>
                    <label for="txtPasswordConfirm" style="color: #66ccff; padding-top: 50px;">
                        Confirm Password 
                        <br />
                        <input type="password" class="form-control" id="txtPasswordConfirm" aria-describedby="password confirm" placeholder="Confirm" style="width: 150px" />
                    </label>

                </div>

                <div class="col-sm-4">
                </div>

            </div>
            <!--Row 6 -->
            <div class="row">
                <div class="col-sm-4">
                </div>

                <div class="col-sm-4" style="padding-top: 50px">
                    <input type="button" id="btnRegister" value="Register!" name="register" class="btn btn-info" style="background-color: #66CCFF" onclick=" " />
                </div>

                <div class="col-sm-4">
                </div>

            </div>

        </div>
        <!-- Container close -->

    </form>
</body>
</html>
