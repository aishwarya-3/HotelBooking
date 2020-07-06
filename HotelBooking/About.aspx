<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="HotelBooking.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url('images/nivati.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-end">
            <div class="col-md-10 col-sm-12 ftco-animate mb-4">
              <p class="breadcrumbs"><span class="mr-2"><a href="Home.aspx">Home</a></span> <span>About</span></p>
              <h1 class="mb-3">About Us</h1>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="ftco-section-2">
      <div class="container d-flex">
        <div class="section-2-blocks-wrapper row d-flex">
          <div class="img col-sm-12 col-lg-6 order-last" style="background-image: url('images/hotel3.jpg');">
          </div>
          <div class="text col-lg-6 order-first ftco-animate">
            <div class="text-inner align-self-start">
              <span class="subheading">About Jaltarang</span>
              <h3 class="heading">Welcome to our Hotel</h3>
              <p>This hotl is at Kankavali ity on Mumbai-Goa national highway. If you wany to stay and enjoy the konkan's beauty then this is the dream gateway for your family. Kankavali is the heart of Sindhudurg district and tourism.</p>

              <p>Hotel Jaltarang offers a reasonable staying option and a variety of services which ensure the satisfaction. It is 2 km from Kankavli Railway Station and 133 km away from Goa International Airport. The hotel offers ample of services which ensures that the guests are well attended and their demands are met promptly. The rooms at hotel are perfectly designed and crafted as per the taste of guests to make their stay relaxed and comfortable. The clean and ventilated rooms in the hotel are well-maintained and comes with various amenities. Have a wonderful stay at Hotel Jaltarang!</p>
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
