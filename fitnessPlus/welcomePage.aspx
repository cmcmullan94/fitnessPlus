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

        <!-- Main body content here 
            "info-line = allows for vertical stacking "-->

        <div class="container-fluid">
            <div class="info-header", "row">
                <div class="col">
                    
                </div>
                <div class="info-line", "col">
                    <img src="Images/welcomePageLogo.png" class="rounded", "img-fluid" alt="..."/>
                </div>
                <div class="col">

                </div>
                <div class="info-line">
                    <asp:Button ID="btnLogIn" runat="server" Text="Log In" class="btn btn-info" href=""/>
                </div>
                &nbsp;
                &nbsp;
                &nbsp;
                <div class="info-line">
                    <asp:Button ID="btnPreview" runat="server" Text="Preview!" class="btn btn-info" href=""/>
                </div> 
            </div>
        </div>

    </form>
</body>
</html>
