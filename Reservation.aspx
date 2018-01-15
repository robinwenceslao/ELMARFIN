<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reservation.aspx.cs" Inherits="Reservation" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    
    <!-- Css Files -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/plugins.css" rel="stylesheet" type="text/css">
    <link href="css/homePopup.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/responsive.css" rel="stylesheet" type="text/css">
    <link href="css/pe-icon-7-stroke.css" rel="stylesheet" type="text/css">
    <link href="css/animate.css" rel="stylesheet" type="text/css">
    <!-- Font Awesome -->
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet'
        type='text/css'>
    <script type="text/javascript" src="js/jquery.min.js"></script>


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come  in the head; any other head content must come *after* these tags -->
    <title>Reservation</title>
   
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/Custom-Cs.css" rel="stylesheet" type="text/css" />
    <link href="css/jquery.datetimepicker.css" rel="stylesheet">
    <link href="css/jquery.datetimepicker2.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
      
     
<div class="containerwow" >
<form id="form1" runat="server">
                    <div id="logo">
                        <a href="#topping">El Marfin Hotel and Pavilion</a>
                        <h4>Reservation</h4>
         			</div>            
    <div class="form-group row">
      <!--check in-->
       <div class="col-sm-3 col-lg-3 col-md-2 col-xs-11">
            <label id="Label1" class="control-label" for="datetimepicker">Check In</label>
            <asp:TextBox class="datetimepicker form-control" ID="txt_checkinv" 
                placeholder="YY/MM/DD/T" runat="server" >
            </asp:TextBox>  
           <br />
             <asp:Button ID="btn_check_validity" class="shortcode_button" runat="server" Text=" Check Availability"  OnClick="btn_check_validity_Click"
            />     
       </div>
        <!--check in-->
       <div class="col-sm-3 col-lg-3 col-md-2 col-xs-11">
            <label id="Label2" class="control-label" for="datetimepicker">Check Out</label>
            <asp:TextBox class="datetimepicker form-control" ID="txt_checkoutv" AutoPostBack="true" OnTextChanged="txt_checkoutv_TextChanged1" placeholder="YY/MM/DD/T" runat="server"></asp:TextBox>      
       
       </div>
       
   </div> 
   <!--first row-->
    <div class="form-group row">
    <div class="col-sm-3 col-lg-3 col-md-2 col-xs-11">
    <label for="restype">Reservation Type</label>
        <asp:DropDownList class="form-control" ID="cbo_reservationtype" runat="server">
         <asp:ListItem Text="Room" Value="1"></asp:ListItem>
         <asp:ListItem Text="Pavilion" Value="2"></asp:ListItem>
         <asp:ListItem Text="Pool" Value="3"></asp:ListItem>
         <asp:ListItem Text="Pavilion & Pool" Value="4"></asp:ListItem>
        </asp:DropDownList>
  </div >
        <!--check in-->
       <div class="col-sm-3 col-lg-3 col-md-2 col-xs-11">
            <label id="help-text" class="control-label">Check In</label>
            <asp:TextBox class="form-control" ID="txt_checkin" 
                placeholder="YY/MM/DD/T" runat="server" ReadOnly="True"></asp:TextBox>      
       </div>

      
       <!--check out-->
       <div class="col-sm-3 col-lg-3 col-md-2 col-xs-11">
             <label id="example-text" class="control-label">Check Out</label>      
             <asp:TextBox class="form-control" ID="txt_checkout" 
                 placeholder="YY/MM/DD/T" runat="server" ReadOnly="True"></asp:TextBox>
       </div>
     
       

    </div>
    <div class="form-group row">
    
        <!-- first name -->
       <div class="col-sm-3 col-lg-3 col-md-2 col-xs-11">
        <label for="ex1">First Name</label>
        <asp:TextBox class="form-control" ID="txt_first_name" runat="server"></asp:TextBox>
      </div>

        <!--middle name-->
      <div class="col-sm-3 col-lg-3 col-md-2 col-xs-11">
          <label for="ex2">Middle Name</label>
          <asp:TextBox class="form-control" ID="txt_middlename" runat="server"></asp:TextBox>
      </div>

          <!--Last name-->
    <div class="col-sm-3 col-lg-3 col-md-2 col-xs-11">
        <label for="ex3">Last Name</label>        
        <asp:TextBox class="form-control" ID="txt_last_name" runat="server"></asp:TextBox>
      </div>

    </div>
     <div class="form-group row">
      
     <div class="col-sm-3 col-lg-3 col-md-2 col-xs-11">
        <label for="ex3">Address</label>
        <asp:TextBox class="form-control" ID="txt_address" runat="server" TextMode="multiline" ></asp:TextBox>
      </div>
        
      <div class="col-sm-3 col-lg-3 col-md-2 col-xs-11">
      <label for="ex2">Email</label>

          <asp:TextBox class="form-control" ID="text_email" runat="server" AutoPostBack="True"  OnTextChanged="text_email_TextChanged"  TextMode="MultiLine"></asp:TextBox>
          <asp:Label runat="server" ID="lbl_error" Visible="true" ForeColor="Red" Text="error"></asp:Label>
      </div>
      
      
     <!--contact-->
      <div class="col-sm-3 col-lg-3 col-md-2 col-xs-11">
            <label for="ex1">Contact No.</label>
            <asp:TextBox class="form-control" ID="text_contact_number" runat="server"></asp:TextBox>
      </div>

       </div> 
      
      <div class="form-group row">
      <div class="offset-sm-2 col-sm-10">
          <asp:Button class="shortcode_button" ID="btn_reserve" runat="server" 
             Text="Reserve" OnClick="Button1_Click" />
      </div>
      </div>
        
    </form> 
    </div>
            
   <!--footer-->
        <div class="footer">
            <!-- footer_bottom -->
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="footer_block">
                            <div class="title">
                                <h3>
                                    Recent Posts</h3>
                            </div>
                            <ul class="list-posts">
                                <li>
                                    <p>
                                        Enjoy a classic manicure or pedicure with a chocolate sugar exfoliation, chocolate
                                        mask for the feet.</p>
                                    <tourtraveln class="date">13, Nov. 2015</tourtraveln>
                                    <a href="#">By Admin</a> </li>
                                <li>
                                    <p>
                                        We value your opinion regarding our service and facilities.</p>
                                    <tourtraveln class="date">14, Nov. 2015</tourtraveln>
                                    <a href="#">By Admin</a> </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="footer_block">
                            <div class="title">
                                <h3>
                                    Opening Hours</h3>
                            </div>
                            <div class="working_hours">
                                <ul>
                                    <li>
                                        <tourtraveln><i class="fa fa-clock-o"></i>Monday - Tuesday</tourtraveln>
                                        <tourtraveln>
                                        06.00 - 22.00</Tour Traveln> </li>
                                    <li>
                                        <tourtraveln><i class="fa fa-clock-o"></i>Friday</tourtraveln>
                                        <tourtraveln>06.00 - 23.00</tourtraveln>
                                    </li>
                                    <li>
                                        <tourtraveln><i class="fa fa-clock-o"></i>Saturday</tourtraveln>
                                        <tourtraveln>06.00 - 23.30</tourtraveln>
                                    </li>
                                    <li>
                                        <tourtraveln><i class="fa fa-clock-o"></i>Sunday</tourtraveln>
                                        <tourtraveln>06.00 - 21.00</tourtraveln>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="footer_block">
                            <div class="title">
                                <h3>
                                    Newsletter Signup</h3>
                            </div>
                            <p>
                                Signup to our weekly newsletter and receive our great promotions. We'll keep you
                                updated.</p>
                            <div class="ns_block">
                                <input type="text" class="ns_input" placeholder="Email address" title="Email address">
                                <input type="submit" class="shortcode_button" value="Sign Up">
                            </div>
                            <div class="social">
                                <a href="#" class="soc-f">El</a> <a href="#" class="soc-t">M</a> <a href="#" class="soc-g">
                                    ar</a> <a href="#" class="soc-n">fin</a> <a href="#" class="soc-v">hotel</a> <a href="#"
                                        class="soc-r">and</a> <a href="#" class="soc-i">Pavilion</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="copyright">
                    &copy; Copyright 2017. El Marfin Hotel and Pavilion All Rights Reserved.
                </div>
            </div>
            <!-- //footer_bottom -->
        </div>
        <!--//footer-->
    <header class="fixed-menu"></header>
    <!-- javascript files-->
    <script type="text/javascript" src="js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="js/sorting.js"></script>
    <script src="js/homePopupLoad.js" type="text/javascript"></script>
    <script src="js/homePopup.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/plugins.js"></script>
    <script type="text/javascript" src="js/current.js"></script>
    <script type="text/javascript" src="js/wow.min.js"></script>
    <!-- animation on scrolling-->
    <script>
        new WOW().init();
    </script>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script src="js/jquery.datetimepicker.full.js" type="text/javascript"></script>
    <script src="js/jquery.datetimepicker.full.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(".datetimepicker").datetimepicker({
            dayOfWeekStart: 1,
            lang: 'en',
            formatTime: 'g:i a',
            step: 05
        });
        $("#method").change(function () {
            $('#help-text').text($('option:selected').attr('data-content'));
            $('#example-text').text($('option:selected').attr('data-example'));
        }).change();
    </script>
</body>
</html>
