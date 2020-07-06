<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HotelBooking.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url('images/nivati.jpg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center justify-content-start">
            <div class="col-md-6 col-sm-12 ftco-animate">
              <h1 class="mb-4">Nice People. Taking care of nice people.</h1>
              
            </div>
          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url('images/Beach.jpg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center justify-content-start">
            <div class="col-md-6 col-sm-12 ftco-animate">
              <h1 class="mb-4">Get Further Away...</h1>
              
            </div>
          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url('images/Devbhag-270.jpg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center justify-content-start">
            <div class="col-md-6 col-sm-12 ftco-animate">
              <h1 class="mb-4">Lets go to discovering</h1>
             
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- END slider -->

    <div class="ftco-section-reservation">
      <div class="container">
        <div class="row justify-content-end ftco-animate">
          
          </div>
        
      </div>
    </div>

    <section class="services bg-light">
      <div class="container">
        <div class="row no-gutters">
          <div class="col-md-4 ftco-animate py-5 nav-link-wrap aside-stretch">
            <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
              <a class="nav-link px-4 active" id="v-pills-master-tab" data-toggle="pill" href="#v-pills-master" role="tab" aria-controls="v-pills-master" aria-selected="true"><span class="mr-3 flaticon-bed"></span> Master Bedrooms</a>



              <a class="nav-link px-4" id="v-pills-fitness-tab" data-toggle="pill" href="#v-pills-fitness" role="tab" aria-controls="v-pills-fitness" aria-selected="false"><span class="mr-3 flaticon-woman"></span> Fitness Center</a>

              <a class="nav-link px-4" id="v-pills-reception-tab" data-toggle="pill" href="#v-pills-reception" role="tab" aria-controls="v-pills-reception" aria-selected="false"><span class="mr-3 flaticon-receptionist"></span> 24 Hour Reception</a>



              <a class="nav-link px-4" id="v-pills-spa-tab" data-toggle="pill" href="#v-pills-spa" role="tab" aria-controls="v-pills-spa" aria-selected="false"><span class="mr-3 flaticon-spa"></span> Pool &amp; Spa</a>

              <a class="nav-link px-4" id="v-pills-wifi-tab" data-toggle="pill" href="#v-pills-wifi" role="tab" aria-controls="v-pills-wifi" aria-selected="false"><span class="mr-3 flaticon-wifi-router"></span> Free wifi</a>


            </div>
          </div>
          <div class="col-md-8 ftco-animate p-4 p-md-5 d-flex align-items-center">
            
            <div class="tab-content pl-md-5" id="v-pills-tabContent">

              <div class="tab-pane fade show active" id="v-pills-master" role="tabpanel" aria-labelledby="v-pills-master-tab">
                <span class="icon mb-3 d-block flaticon-bed"></span>
                <h2 class="mb-4">Master Bedrooms</h2>
                <p class="lead">Each Master Bedroom at Jaltarang hotel, Kankavli welcomes you with a blend of elegance and functional excellence. Refesh yourself as you takes a step into our rain shower. </p>
                <p> </p>
                
              </div>

             

              <div class="tab-pane fade" id="v-pills-fitness" role="tabpanel" aria-labelledby="v-pills-fitness-tab">
                <span class="icon mb-3 d-block flaticon-woman"></span>
                <h2 class="mb-4">Fitness Center</h2>
                <p class="lead">Celebrate health and happiness.<br/>We provide Zumba, yoga, aerobics, Pilates.</p>
                <p></p>
                
              </div>

              <div class="tab-pane fade" id="v-pills-reception" role="tabpanel" aria-labelledby="v-pills-reception-tab">
                <span class="icon mb-3 d-block flaticon-receptionist"></span>
                <h2 class="mb-4">24 Hours Reception</h2>
                <p class="lead">We operate a 24 hour reception; threfore you will not need to worry about late check-in.</p>
                <p> </p>
                
              </div>

              

              <div class="tab-pane fade" id="v-pills-spa" role="tabpanel" aria-labelledby="v-pills-spa-tab">
                <span class="icon mb-3 d-block flaticon-spa"></span>
                <h2 class="mb-4">Pool &amp; Spa</h2>
                <p class="lead">After a long day of traveling or sightseeing, there's nothing like a refreshing dip in the pool.</p>
                <p></p>
                           </div>
              <div class="tab-pane fade" id="v-pills-wifi" role="tabpanel" aria-labelledby="v-pills-wifi-tab">
                <span class="icon mb-3 d-block flaticon-wifi-router"></span>
                <h2 class="mb-4">Free wifi coverage</h2>
                <p class="lead">High Speed <br/> Reliable <br/> Secure </p>
                <p></p>
                
              </div>
             
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="ftco-section room-section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-5">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <span class="subheading">Our Rooms</span>
            <h2>Explore our rooms</h2>
          </div>
        </div>
          <div class="row">
                    
            <asp:DataList ID="dl2" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
                <ItemTemplate>
          <div class="col-md-4 ftco-animate">
            <div class="room-wrap">
              <a href="#" class="room-img" style="background-image: url(roomimages/<%# Eval("RoomImage") %>);"></a>
              <div class="text p-4">
                <div class="d-flex mb-1">
                  <div class="one-third">
                    
                    <h3><a href="#"><%# Eval("RoomType") %></a></h3>
                      <h3><a href="#">Room No:<%# Eval("RoomNo") %></a></h3>
                      </div>
                     
                 <div class="one-forth text-center">
                    <p class="price"><%# Eval("RoomRate") %> <br><span>/night</span></p>
                  </div>
                                     </div>
                <p class="features">
                  <span class="d-block mb-2"><i class="icon-check mr-2"></i> <%# Eval("RoomFacilities") %></span>
                  
                </p>
                <p>
                    <asp:Button ID="btnReserve" CssClass="btn btn-primary" runat="server" Text="Reserve a room"  PostBackUrl="~/Booking.aspx"></asp:Button>
                </p>
              </div>
            </div>
          </div>
                    </ItemTemplate>
            </asp:DataList>
        

             
        </div>
        
                   <div>
           
                   
               
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Room]"></asp:SqlDataSource>
        </div>
      </div>
    </section>
    
    <section class="ftco-section-parallax">
      <div class="parallax-img d-flex align-items-md-center align-items-sm-end" style="background-image: url('images/CONFERENCE_HALL_2.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
          <div class="row desc d-flex justify-content-center">
            <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
              <span class="subheading">Our Conference</span>
              <h2 class="h1 font-weight-bold">Conference Centre</h2>
              
            </div>
          </div>
        </div>
      </div>
    </section>

    

    

    

    


    <section class="instagram">
      <div class="container-fluid">
        <div class="row no-gutters justify-content-center pb-5">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2> Gallery</h2>
          </div>
        </div>
        <div class="row no-gutters">
          <div class="col-sm-12 col-md ftco-animate">
            <a href="images/inside1.jpg" class="insta-img image-popup" style="background-image: url(images/inside1.jpg);">
              <div class="icon d-flex justify-content-center">
                
              </div>
            </a>
          </div>
          <div class="col-sm-12 col-md ftco-animate">
            <a href="images/inside3.jpg" class="insta-img image-popup" style="background-image: url(images/inside3.jpg);">
              <div class="icon d-flex justify-content-center">

              </div>
            </a>
          </div>
          <div class="col-sm-12 col-md ftco-animate">
            <a href="images/inside2.jpg" class="insta-img image-popup" style="background-image: url(images/inside2.jpg);">
              <div class="icon d-flex justify-content-center">
                
              </div>
            </a>
          </div>
          <div class="col-sm-12 col-md ftco-animate">
            <a href="images/inside4.jpg" class="insta-img image-popup" style="background-image: url(images/inside4.jpg);">
              <div class="icon d-flex justify-content-center">
                
              </div>
            </a>
          </div>
          <%--<div class="col-sm-12 col-md ftco-animate">
            <a href="images/insta-5.jpg" class="insta-img image-popup" style="background-image: url(images/insta-5.jpg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>--%>
        </div>
      </div>
    </section>
</asp:Content>
