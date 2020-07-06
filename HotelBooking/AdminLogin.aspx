<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="HotelBooking.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
   <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
      <div class="container">
        <a class="navbar-brand" href="index.html">Hotel Jaltarang</a>
              


       
      </div>
    </nav>
    <!-- END nav -->
            <section class="ftco-section contact-section">
      
             
        <div class="row block-9" style="margin-left:400px">
            
          <div class="col-md-6 pr-md-5">
              <div style="margin-left:160px">
            <h1 class="mb-3">Admin Login</h1></div>
              <div class="form-group" >
                
                  <asp:TextBox Id="txtUNM" CssClass="form-control" runat="server" placeholder="User Name" ></asp:TextBox>
              </div>
              <div class="form-group">
               
                   <asp:TextBox Id="Txtpwd" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
              </div>
              <div class="form-group" style="text-align:center;" >
                
                 <asp:Button ID="btnLogin" CssClass="btn btn-primary" runat="server" Text="Login" OnClick="btnLogin_Click" ></asp:Button>
                  <asp:Button ID="btnCancel" CssClass="btn btn-primary" runat="server" Text="Cancel"  ></asp:Button>
              </div>
               
              
              
          
          </div>

          <div class="col-md-6" id="map"></div>
        </div>
              

    
      </div>
    </section>
        <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Cozy</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Opening Hours</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Monday: <span>08: - 22:00</span></a></li>
                <li><a href="#" class="py-2 d-block">Tuesday: <span>08: - 22:00</span></a></li>
                <li><a href="#" class="py-2 d-block">Wednesday: <span>08: - 22:00</span></a></li>
                <li><a href="#" class="py-2 d-block">Thursday: <span>08: - 22:00</span></a></li>
                <li><a href="#" class="py-2 d-block">Friday: <span>08: - 22:00</span></a></li>
                <li><a href="#" class="py-2 d-block">Saturday: <span>08: - 22:00</span></a></li>
                <li><a href="#" class="py-2 d-block">Sunday: <span>08: - 22:00</span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Contact Information</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">198 West 21th Street, Suite 721 New York NY 10016</a></li>
                <li><a href="#" class="py-2 d-block">+ 1235 2355 98</a></li>
                <li><a href="#" class="py-2 d-block">info@yoursite.com</a></li>
                <li><a href="#" class="py-2 d-block">email@email.com</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Newsletter</h2>
              <p>Far far away, behind the word mountains, far from the countries.</p>
                
               <p>
                    <div class="form-group">
                    <asp:Button ID="btnUser" CssClass="btn btn-primary py-3 px-5" runat="server"  Text="User"  PostBackURL="~/Home.aspx"  />
                    </div>
                </p>
                <p>&nbsp;</p>
            
                <div class="form-group">
                  <span class="icon icon-paper-plane"></span>
                  <input type="text" class="form-control" placeholder="Subscribe">
                </div>
              
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    </form>
</body>
</html>
