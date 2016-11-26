<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modifyproducts.aspx.cs" Inherits="modifyproducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Redbull - Products</title>
    <!-- Bootstrap core CSS -->
    <link href="Theme/assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="Theme/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="Theme/assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="Theme/assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="Theme/assets/lineicons/style.css">

    <!-- Custom styles for this template -->
    <link href="Theme/assets/css/style.css" rel="stylesheet">
    <link href="Theme/assets/css/style-responsive.css" rel="stylesheet">
</head>
<body>

    <!--sidebar start-->
    <aside>
        <div id="sidebar" class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu" id="nav-accordion">

                <p class="centered">
                    <a href="profile.html">
                        <img src="img/redbullLogoIcon.png" class="img-circle" width="150" /></a>
                </p>


                <li class="mt">
                    <a href="dashboard.aspx">
                        <i class="fa fa-dashboard"></i>
                        <span>Dashboard</span>
                    </a>
                </li>

                <li class="mt">
                    <a class="active" href="modifyproducts.aspx">
                        <i class="fa fa-tasks"></i>
                        <span>Modify Products</span>
                    </a>
                </li>

                <li class="mt">
                    <a href="EditInformation.aspx">
                        <i class="fa fa-book"></i>
                        <span>Generate Reports</span>
                    </a>
                </li>

                <li class="mt">
                    <a href="default.aspx">
                        <i class="fa fa-desktop"></i>
                        <span>Logout</span>
                    </a>
                </li>


                <!-- sidebar menu end-->
        </div>
    </aside>
    <!--sidebar end-->


    <!--- main -->
    <section id="main-content">
        <section class="wrapper">
            <form id="form1" runat="server">
                <asp:ScriptManager runat="server" />
                <img class="img-responsive center-block" src="img/redbulllog.png" height="300" width="300" />
                <div style="margin-left: auto; margin-right: auto; text-align: center;">

                    <div>
                    </div>

                    <h1>PRODUCTS</h1>
                </div>

                <div class="form-group">
                    <div class="row">
                        <div class=" col-md-3">
                            <h4>Select Products:</h4>
                            <!--
                            <asp:DropDownList class="gridstyle gridstyle text-center" ID="productList" runat="server" CssClass="form-control" required="">
                                <asp:ListItem Text="Select product.." Value=""></asp:ListItem>
                                <asp:ListItem>Redbull Regular 10s</asp:ListItem>
                                <asp:ListItem>Redbull Zero 10s </asp:ListItem>
                                <asp:ListItem>Redbull Sugarfree 10s</asp:ListItem>
                                <asp:ListItem>Redbull Regular Box </asp:ListItem>
                                <asp:ListItem>Redbull Sugarfree Box</asp:ListItem>
                            </asp:DropDownList>
                            -->
                            <div>
                            <asp:TextBox ID="productListSearch" runat="server"></asp:TextBox>
                                </div>
                            <br />
                            <div>
                                <asp:Button ID="btnSearch" class="btn btn-info" runat="server" Text="Display Product" OnClick="btnSearch_Click" />
                            </div>
                        </div>

                    </div>

                </div>



                <div class="form-group">
                    <div class="row">
                        <div class=" col-md-3">
                            <h4>Product Name: </h4>
                            <asp:TextBox ID="productName" runat="server"></asp:TextBox>


                            <h4>Price: </h4>
                            <asp:TextBox ID="productPrice" runat="server"></asp:TextBox>


                            <h4>Quantity: </h4>
                            <asp:TextBox ID="productQuantity" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>


             
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-3">
                            <asp:Button ID="updateProduct" class="btn btn-info" runat="server" Text="Update" OnClick="updateProduct_Click" />
                            <asp:Button ID="deleteProduct" class="btn btn-info" runat="server" Text="Delete" OnClick="deleteProduct_Click" />
                            <asp:Button ID="insertProduct" class="btn btn-info" runat="server" Text="Insert" OnClick="insertProduct_Click" />
                            <asp:Button ID="clearText" class="btn btn-info" runat="server" Text="Clear" OnClick="clearText_Click" />
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Status" runat ="server" Text=""></asp:Label>
                </div>

            </form>
        </section>
    </section>

</body>

</html>

