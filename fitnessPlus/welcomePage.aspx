<%@ Page Title="Welcome Page" Language="C#" AutoEventWireup="true" CodeBehind="welcomePage.aspx.cs" Inherits="fitnessPlus.welcomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header content, separate from site.master -->
        <div class="navbar navbar-inverse navbar-fixed-top" style="background-color: #afabab">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                    </ul>
                </div>
            </div>
        </div>

        <!-- Main body content here -->
        <div class="container-fluid">
            <div class="text-center", "row justify-content-center align-self-center">
                <img src="Images/singleLogo.png" class="rounded", "img-fluid" alt="..." />
                <img src="Images/logo.png" class="rounded", "img-fluid" alt="..." />
                <asp:Button ID="btnLogIn" runat="server" Text="Log In" class="btn btn-info" href=""/>
                <asp:Button ID="btnPreview" runat="server" Text="Preview!" class="btn btn-info" href=""/>
            </div>
        </div>

    </form>
</body>
</html>
