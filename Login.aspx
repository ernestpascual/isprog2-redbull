<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>RedBull Philippines</title>

    <!-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/freelancer.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
    body {
        background-image: url("img/campfire.gif");
        background-repeat: no-repeat;
        background-size: 1920px 1024px;
    }
    .row-bottom-margin { 
    margin-bottom: -200px;

    }
    .row-top-margin{
        margin-top: -200px;
    }
    .navbar-default {
  background-color: #e74c3c;
  border-color: transparent;
}
</style>



</head>
<body>

    <a href="Register.aspx">Register.aspx</a>
    
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#page-top"></a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="hidden">
                            <a href="Default.aspx#page-top"></a>
                        </li>
                        <li class="page-scroll">
                            <a href="Default.aspx#page-top">HOME</a>
                        </li>
                        <li class="page-scroll">
                            <a href="Default.aspx#about">ABOUT</a>
                        </li>
                        <li class="page-scroll">
                            <a href="Default.aspx#program">PRODUCTS</a>
                        </li>
                        <li class="page-scroll">
                            <a href="Default.aspx#" >REGISTER</a>
                        </li>
                        <li class="page-scroll">
                            <a href="Login.aspx">LOGIN</a>
                        </li>
                        <li class="page-scroll">
                            <a href="Default.aspx#contact">CONTACT US</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>

      <!--- Sign in start  -->
    <br /> <br /> <br /> <br /> <br />
         
       <form class="form-horizontal" runat="server">
        <asp:ScriptManager runat="server" />
           <font color ="#ecf0f1">
        <div class="container">    
            <div class="row row-bottom-margin">  
            <div class="form-horizontal">
                <div class="form-group">
                 <asp:Label ID="Validator" runat="server" CssClass="col-md-2 control-label" Text=""></asp:Label>
                    </div>
                     <div class="form-group">
                        <div class="col-md-12">
                        <img class="img-responsive center-block" src="img/redbulllog.png" height="300" width="300" />
                        </div>  
                            </div>
            </div>
                <br /> <br /> <br />
        </div>
            <div class="row row-top-margin">
             <div style="text-align:right">
                <div class="form-group">
                    <div class = "row">
                 <div class=" col-md-offset-3">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Username:" ></asp:Label>          
                    <div class="col-md-4">
                        <asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="The Username field is Required !" ControlToValidate="UserName"></asp:RequiredFieldValidator>
                    </div>
                         </div>
                    </div>
                    </div>
                 </div>

                </div>
                <div class="form-group">
                       <div class=" col-md-offset-3">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Password:"></asp:Label>
                    <div class="col-md-4">
                        <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass="text-danger" runat="server" ErrorMessage="The Password field is Required !" ControlToValidate="Password"></asp:RequiredFieldValidator>
                    </div>
                          </div>  </div>
                    
                 
                 <div class="form-group">
                     <div class=" col-md-offset-3">
                        <div class="col-md-3"></div>                    
                    <div class="col-md-6">
                        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-default" OnClick="Button1_Click" />
                    </div>

                         </div>
                </div>
            </div>
                
           </font>
             
          

           <br /><br /><br /><br /><br /><br />
           <!---
           <div class ="container">
               <div class="row">

                     <div class="col-md-6">
          
                  <img src="img/surgfer.gif" alt="test" class="img-responsive" />
               </div>
           </div>
   
      </div>
               --->
      
 

           
       
                   
         
    

           </form>

</body>
</html>
