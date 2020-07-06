<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="HotelBooking.View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url('images/nivati.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-end">
            <div class="col-md-10 col-sm-12 ftco-animate mb-4">
              <p class="breadcrumbs"><span class="mr-2"><a href="Home.aspx">Home</a></span> <span>Rooms</span></p>
              <h1 class="mb-3">Choose Our Rooms</h1>
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
                    
            <asp:DataList ID="dl2" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="1" RepeatDirection="Horizontal">
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
                    <asp:Button ID="btnReserve" CssClass="btn btn-primary" runat="server" Text="Reserve a room" PostBackUrl="~/Booking.aspx"  ></asp:Button>
                </p>
              </div>
            </div>
          </div>
                    </ItemTemplate>
            </asp:DataList>
        

             
        </div>
        
                   <div>
           
                   
               
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Room] where RoomId=@roomid">
                           <SelectParameters>
                               <asp:QueryStringParameter Name="roomid" QueryStringField="roomid" />
                           </SelectParameters>
                       </asp:SqlDataSource>
        </div>
      </div>
    </section>
    <section class="instagram">
      <div class="container-fluid">
        <div class="row no-gutters justify-content-center pb-5">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2><span class="icon-instagram"></span> Instagram</h2>
          </div>
        </div>
        <div class="row no-gutters">
          <div class="col-sm-12 col-md ftco-animate">
            <a href="images/insta-1.jpg" class="insta-img image-popup" style="background-image: url(images/insta-1.jpg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>
          <div class="col-sm-12 col-md ftco-animate">
            <a href="images/insta-2.jpg" class="insta-img image-popup" style="background-image: url(images/insta-2.jpg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>
          <div class="col-sm-12 col-md ftco-animate">
            <a href="images/insta-3.jpg" class="insta-img image-popup" style="background-image: url(images/insta-3.jpg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>
          <div class="col-sm-12 col-md ftco-animate">
            <a href="images/insta-4.jpg" class="insta-img image-popup" style="background-image: url(images/insta-4.jpg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>
          <div class="col-sm-12 col-md ftco-animate">
            <a href="images/insta-5.jpg" class="insta-img image-popup" style="background-image: url(images/insta-5.jpg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>
        </div>
      </div>
    </section>
    
</asp:Content>
