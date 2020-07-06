<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Amenities.aspx.cs" Inherits="HotelBooking.Amenities" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url('images/nivati.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-end">
            <div class="col-md-10 col-sm-12 ftco-animate mb-4">
              <p class="breadcrumbs"><span class="mr-2"><a href="Home.aspx">Home</a></span> <span>Amenities</span></p>
              <h1 class="mb-3">Accomodation &amp; Amenities</h1>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="ftco-section bg-light">
      <div class="container">
          <div class="row no-gutters">
          
          <asp:DataList ID="dlAmenities" runat="server" DataSourceID="sdsAmenities">
              <ItemTemplate>
                  
          <div class="amenities d-md-flex ftco-animate">
            <a href="#" class="room-img" style="background-image: url(Amenities/<%# Eval("Fimage") %>);height:300px;width:400px;"></a>
            <div class="one-half order-last text">
                    
              <h4><%# Eval("Fname") %></h4>
                <h4><%# Eval("Fcharges") %></h4>
              <p><h4><%# Eval("Fdescription") %></h4></p>
            </div>
         
                      </div>
                  </ItemTemplate>
          </asp:DataList>
               </div>
          <asp:SqlDataSource ID="sdsAmenities" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Facilities]"></asp:SqlDataSource>

        
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
