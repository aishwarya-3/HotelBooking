<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sigthseeing.aspx.cs" Inherits="HotelBooking.Sigthseeing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url('images/nivati.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-end">
            <div class="col-md-10 col-sm-12 ftco-animate mb-4">
              <p class="breadcrumbs"><span class="mr-2"><a href="Home.aspx">Home</a></span> <span>Sightseeing</span></p>
              <h1 class="mb-3">Sightseeing</h1>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="ftco-section bg-light">
      <div class="container">
        <div class="row">
          <div class="col-md-4 ftco-animate">
            <div class="blog-entry">
              <a href="blog-single.html" class="block-20" style="background-image: url('images/SFort.jpg');">
              </a>
              <div class="text p-4 d-block">
                <h3 class="heading"><a href="#">Sindhudurg fort in Maharashtra - A floating giant!<br/>Have you ever seen a mighty fort floating in the blue buzzing sea? 
                    Sindhudurg fort in Maharashtra, one among the many forts built by the great Chhatrapati Shivaji Maharaj. 
                     </a></h3>
                
              </div>
            </div>
          </div>
          <div class="col-md-4 ftco-animate">
            <div class="blog-entry" data-aos-delay="100">
              <a href="blog-single.html" class="block-20" style="background-image: url('images/tarkarli-beach.jpg');">
              </a>
              <div class="text p-4">
                <h3 class="heading"><a href="#">Winter is the best season for visiting Tarkarli. The months from October to March is when Tarkarli becomes an ideal holiday destination. 
                    Monsoons can also be a favourable time for planning a trip, although the heavy rainfall might ruin your plans</a></h3>
                
              </div>
            </div>
          </div>
          <div class="col-md-4 ftco-animate">
            <div class="blog-entry" data-aos-delay="200">
              <a href="blog-single.html" class="block-20" style="background-image: url('images/scuba-diving-tarkarl-Malvan.jpg');">
              </a>
              <div class="text p-4">
                <h3 class="heading"><a href="#">Scuba diving at Tarkarli is a form of Modern scuba diving which is very safe and easy to learn.
                    All basic skills can be learned in a couple of hours while doing Scuba diving at Tarkarli.
                    There are several types of water sports and scuba diving at tarkarli.</a></h3>
                
              </div>
            </div>
          </div>
          <div class="col-md-4 ftco-animate">
            <div class="blog-entry" data-aos-delay="200">
              <a href="blog-single.html" class="block-20" style="background-image: url('images/devgad.jpeg');">
              </a>
              <div class="text p-4">
                <h3 class="heading"><a href="#">A Nice Clean and Beautiful beach to relax an evening with family. 
                    Its very peaceful and can enjoy playing in the sea water or playing with sand on the shores.</a></h3>
                
              </div>
            </div>
          </div>
          <div class="col-md-4 ftco-animate">
            <div class="blog-entry" data-aos-delay="200">
              <a href="blog-single.html" class="block-20" style="background-image: url('images/Dreamland.jpg');">
              </a>
              <div class="text p-4">
                <h3 class="heading"><a href="#">Dreamland Garden is situated amidst the beautiful greenery and the flowing water in Kudal.
                    Its a perfect place discovered for solace. If you are a nature lover then its a feast for you!</a></h3>
               
              </div>
            </div>
          </div>
          <div class="col-md-4 ftco-animate">
            <div class="blog-entry" data-aos-delay="200">
              <a href="blog-single.html" class="block-20" style="background-image: url('images/Waterfalls.jpg');">
              </a>
              <div class="text p-4">
                <h3 class="heading"><a href="#">Beautiful waterfall in nature's lap, best place for family outing. 
                    the falls are safe for bathing.
                                    </a></h3>
                
              </div>
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
