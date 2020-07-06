<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="YBooking.aspx.cs" Inherits="HotelBooking.Gallary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url('images/nivati.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-end">
            <div class="col-md-10 col-sm-12 ftco-animate mb-4">
              <p class="breadcrumbs"><span class="mr-2"><a href="Home.aspx">Home</a></span> <span>Your Booking</span></p>
              <h1 class="mb-3">Your Booking</h1>
            </div>
          </div>
        </div>
       
      </div>
    </section><br/><br/>

     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookingId" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
         <Columns>
             <asp:BoundField DataField="BookingId" HeaderText="BookingId" InsertVisible="False" ReadOnly="True" SortExpression="BookingId" />
             <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" SortExpression="CustomerId" />
             <asp:BoundField DataField="CheckInDate" HeaderText="CheckInDate" SortExpression="CheckInDate" />
             <asp:BoundField DataField="CheckOutDate" HeaderText="CheckOutDate" SortExpression="CheckOutDate" />
             <asp:BoundField DataField="Guest" HeaderText="Guest" SortExpression="Guest" />
             <asp:BoundField DataField="RoomId " HeaderText="RoomId " SortExpression="RoomId " Visible="False" />
             <asp:BoundField DataField="RoomNo" HeaderText="RoomNo" SortExpression="RoomNo" />
             <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
             <asp:BoundField DataField="RoomRate " HeaderText="RoomRate " SortExpression="RoomRate " />
             <asp:BoundField DataField="FirstNm " HeaderText="FirstNm " SortExpression="FirstNm " />
             <asp:BoundField DataField="LastNm" HeaderText="LastNm" SortExpression="LastNm" />
             <asp:BoundField DataField="Email " HeaderText="Email " SortExpression="Email " />
             <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
             <asp:BoundField DataField="IdName" HeaderText="IdName" SortExpression="IdName" Visible="False" />
             <asp:BoundField DataField="IdNo" HeaderText="IdNo" SortExpression="IdNo" Visible="False" />
             <asp:BoundField DataField="CardTyp" HeaderText="CardTyp" SortExpression="CardTyp" Visible="False" />
             <asp:BoundField DataField="CardNo" HeaderText="CardNo" SortExpression="CardNo" Visible="False" />
             <asp:BoundField DataField="NmOnCard" HeaderText="NmOnCard" SortExpression="NmOnCard" Visible="False" />
             <asp:BoundField DataField="BookingStatus" HeaderText="BookingStatus" SortExpression="BookingStatus" />
             <asp:ButtonField CommandName="Cancel" Text="Cancel Booking" />
         </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Booking] WHERE [BookingId] = @BookingId" InsertCommand="INSERT INTO [Booking] ([CustomerId], [CheckInDate], [CheckOutDate], [Guest], [RoomId ], [RoomNo], [RoomType], [RoomRate ], [FirstNm ], [LastNm], [Email ], [Phone], [IdName], [IdNo], [CardTyp], [CardNo], [NmOnCard], [BookingStatus]) VALUES (@CustomerId, @CheckInDate, @CheckOutDate, @Guest, @RoomId_, @RoomNo, @RoomType, @RoomRate_, @FirstNm_, @LastNm, @Email_, @Phone, @IdName, @IdNo, @CardTyp, @CardNo, @NmOnCard, @BookingStatus)" SelectCommand="SELECT * FROM [Booking] where CustomerId=@userid" UpdateCommand="UPDATE [Booking] SET [BookingStatus] = @BookingStatus WHERE [BookingId] = @BookingId">
        <DeleteParameters>
            <asp:Parameter Name="BookingId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:SessionParameter Name="CustomerId" SessionField="userid" Type="Int32" />
            <asp:Parameter DbType="Date" Name="CheckInDate" />
            <asp:Parameter DbType="Date" Name="CheckOutDate" />
            <asp:Parameter Name="Guest" Type="Int32" />
            <asp:Parameter Name="RoomId_" Type="Int32" />
            <asp:Parameter Name="RoomNo" Type="String" />
            <asp:Parameter Name="RoomType" Type="String" />
            <asp:Parameter Name="RoomRate_" Type="String" />
            <asp:Parameter Name="FirstNm_" Type="String" />
            <asp:Parameter Name="LastNm" Type="String" />
            <asp:Parameter Name="Email_" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="IdName" Type="String" />
            <asp:Parameter Name="IdNo" Type="String" />
            <asp:Parameter Name="CardTyp" Type="String" />
            <asp:Parameter Name="CardNo" Type="String" />
            <asp:Parameter Name="NmOnCard" Type="String" />
            <asp:Parameter Name="BookingStatus" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="userid" SessionField="userid" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="BookingStatus" DefaultValue="cancel" Type="String" />
            <asp:Parameter Name="BookingId" Type="Int32" DefaultValue="" />
        </UpdateParameters>
    </asp:SqlDataSource>


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
