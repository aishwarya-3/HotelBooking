<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="HotelBooking.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url('images/nivati.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-end">
            <div class="col-md-10 col-sm-12 ftco-animate mb-4">
              <p class="breadcrumbs"><span class="mr-2"><a href="Home.aspx">Home</a></span> <span>Contact</span></p>
              <h1 class="mb-3">Contact Us</h1>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="ftco-section contact-section">
      <div class="container bg-light">
        <div class="row d-flex mb-5 contact-info">
          <div class="col-md-12 mb-4">
            <h2 class="h4">Contact Information</h2>
          </div>
          <div class="w-100"></div>
          <div class="col-md-3">
            <p><span>Address:</span>2nd Floor,Manohar Shilp,Maharastra State Highway 116 near Janavli Bridge,A/P,Kalmath,Kankavli,Maharastra 416602 </p>
          </div>
          <div class="col-md-3">
            <p><span>Phone:</span> <a href="tel://">98221195554</a></p>
          </div>
          <div class="col-md-3">
            <p><span>Email:</span> <a href="mailto:info@yoursite.com">aishwaryabobhate3@gmail.com</a></p>
          </div>
          
        </div>
        <div class="row block-9">
          <div class="col-md-6 pr-md-5">
            
              <div class="form-group">
                    <asp:TextBox Id="txtYNm" CssClass="form-control" runat="server" placeholder="Your Name" ></asp:TextBox>
              </div>
              <div class="form-group">
                
                  <asp:TextBox Id="txtYEmail" CssClass="form-control" runat="server" placeholder="Your Email" ></asp:TextBox>
              </div>
              <div class="form-group">
                     <asp:TextBox Id="txtSub" CssClass="form-control" runat="server" placeholder="Subject" ></asp:TextBox>
              </div>
              <div class="form-group">
                  <asp:TextBox Id="txtMsg" CssClass="form-control" runat="server" placeholder="Message" MaxLength="50"></asp:TextBox>
              </div>
              <div class="form-group">
                   <asp:Button ID="btnSendMsg" CssClass="btn btn-primary" runat="server" Text="Send Message"  ></asp:Button>
              </div>
         
          
          </div>

          <div class="col-md-6" id="map"></div>
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
                >
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
