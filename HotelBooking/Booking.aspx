<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="HotelBooking.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url('images/nivati.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-end">
            <div class="col-md-10 col-sm-12 ftco-animate mb-4">
              <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Booking</span></p>
              <h1 class="mb-3">Booking</h1>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="ftco-section">
      <div class="container">
        <div class="row d-flex">
          <div class="col-md-12 ftco-animate makereservation p-5 bg-light">
           <div class="row mb-5">
                <div class="col-md-12">
                  <h2 class="mb-4">Check Availability</h2>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblCin" runat="server" Font-Bold="True" ForeColor="Black" Text="Check In"></asp:Label>
                   <asp:TextBox ID="txtCin" runat="server" CssClass="form-control" TextMode="Date" Placeholder="M/D/YYYY"></asp:TextBox>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                      <asp:Label ID="lblCout" runat="server" Font-Bold="True" ForeColor="Black"  Text="Check Out"></asp:Label>
                   <asp:TextBox ID="txtCout" runat="server" CssClass="form-control" TextMode="Date" Placeholder="M/D/YYYY"></asp:TextBox>
 
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblGuest" runat="server" Font-Bold="True" ForeColor="Black" Text="Guest"></asp:Label>
                    <div class="form-group" >
                      <asp:DropDownList Id="ddlGuest" CssClass="form-control" runat="server"  >
                      <asp:ListItem>1</asp:ListItem>
                      <asp:ListItem>2</asp:ListItem>
                      <asp:ListItem>3</asp:ListItem>
                      <asp:ListItem>4+</asp:ListItem>
                                </asp:DropDownList>
                    </div>
                  </div>
                </div>
        
                 
                </div>
                     <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                <Columns>
                    <asp:HyperLinkField HeaderText="View" Text="View" DataNavigateUrlFields="RoomId" DataNavigateUrlFormatString="~/View.aspx?roomid={0}" />
                    <asp:CommandField HeaderText="Select" ShowSelectButton="True" />
                </Columns>
            </asp:GridView><br/>
              <div class="row mb-5">
               <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblRNo" runat="server" Font-Bold="True" ForeColor="Black" Text="Room No"></asp:Label>
                   <asp:TextBox ID="txtRNo" runat="server" CssClass="form-control" Placeholder="Room No"></asp:TextBox>
                  </div>
                </div>
              
                       <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblRType" runat="server" Font-Bold="True" ForeColor="Black" Text="Room Type"></asp:Label>
                   <asp:TextBox ID="txtRTyp" runat="server" CssClass="form-control" Placeholder="Room Type"></asp:TextBox>
                  </div>
                </div>

                  <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblRRate" runat="server" Font-Bold="True" ForeColor="Black" Text="Room Rate"></asp:Label>
                   <asp:TextBox ID="txtRRate" runat="server" CssClass="form-control" Placeholder="Room Rate"></asp:TextBox>
                  </div>
                </div>
                  </div>
              
               
              <div class="col-md-6">
                  <div class="form-group mr-4">
                      <asp:Button ID="btnCA" CssClass="search-submit btn btn-primary" runat="server" Text="Check Availability" OnClick="btnCA_Click"   ></asp:Button>


                      </div>

                   </div>
                  
              


                
              <h2 class="mb-4">Contact Details</h2>
              <div class="row mb-5">
                <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblFN" runat="server" Font-Bold="True" ForeColor="Black" Text="First Name"></asp:Label>
                   <asp:TextBox ID="txtFN" runat="server" CssClass="form-control" Placeholder="First Name"></asp:TextBox>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblLN" runat="server" Font-Bold="True" ForeColor="Black" Text="Last Name"></asp:Label>
                   <asp:TextBox ID="txtLN" runat="server" CssClass="form-control" Placeholder="Last Name"></asp:TextBox>
                  </div>
                </div>
                
                <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblEmail" runat="server" Font-Bold="True" ForeColor="Black" Text="Email"></asp:Label>
                   <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Placeholder="Your Email"></asp:TextBox>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblAddr" runat="server" Font-Bold="True" ForeColor="Black" Text="Address"></asp:Label>
                   <asp:TextBox ID="txtAddr" runat="server" CssClass="form-control" Placeholder="Address"></asp:TextBox>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblPhn" runat="server" Font-Bold="True" ForeColor="Black" Text="Phone"></asp:Label>
                   <asp:TextBox ID="txtPhn" runat="server" CssClass="form-control" Placeholder="Phone"></asp:TextBox>
                  </div>
                </div>

                  <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblIdNm" runat="server" Font-Bold="True" ForeColor="Black" Text="Id Name"></asp:Label>
                   <asp:TextBox ID="txtIdNm" runat="server" CssClass="form-control" Placeholder="Id Name"></asp:TextBox>
                  </div>
                </div>

                  <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblIdNo" runat="server" Font-Bold="True" ForeColor="Black" Text="Id No"></asp:Label>
                   <asp:TextBox ID="txtIdNo" runat="server" CssClass="form-control" Placeholder="Id No"></asp:TextBox>
                  </div>
                </div>
              </div>
              
              
                
              
                 

              <div class="row mb-5">
                <div class="col-md-12">
                  <h2 class="mb-4">Payment Details</h2>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                     <asp:Label ID="lblCardTyp" runat="server" Font-Bold="True" ForeColor="Black" Text="Card Type"></asp:Label>
                    <div class="form-group" >
                      <asp:DropDownList Id="DropDownList1" CssClass="form-control" runat="server"  >
                      <asp:ListItem>Credit Card</asp:ListItem>
                      <asp:ListItem>Debit Card</asp:ListItem>
                      
                                </asp:DropDownList>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblCNo" runat="server" Font-Bold="True" ForeColor="Black" Text="Card No"></asp:Label>
                   <asp:TextBox ID="txtCNo" runat="server" CssClass="form-control" ></asp:TextBox>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblCNm" runat="server" Font-Bold="True" ForeColor="Black" Text="Name on Card"></asp:Label>
                   <asp:TextBox ID="txtCnm" runat="server" CssClass="form-control" ></asp:TextBox>
                  </div>
                </div>
                

                  
                   
                  </div>
                <div class="row mb-5">
                <div class="col-md-12">
                                  </div>
                    <div class="col-md-6">
                  <div class="form-group mr-4">
                      <asp:Button ID="btncnfrm" CssClass="search-submit btn btn-primary" runat="server" Text="Confirm" OnClick="btncnfrm_Click"  ></asp:Button>
                   
                  </div>
                </div>
              </div>
            </div>
                  </div>
              </div>
        
            
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Booking] WHERE [BookingId] = @BookingId" InsertCommand="INSERT INTO [Booking] ([CustomerId], [CheckInDate], [CheckOutDate], [Guest], [RoomId ], [RoomNo], [RoomType], [RoomRate ], [FirstNm ], [LastNm], [Email ], [Phone], [IdName], [IdNo], [CardTyp], [CardNo], [NmOnCard], [BookingStatus]) VALUES (@CustomerId, @CheckInDate, @CheckOutDate, @Guest, @RoomId_, @RoomNo, @RoomType, @RoomRate_, @FirstNm_, @LastNm, @Email_, @Phone, @IdName, @IdNo, @CardTyp, @CardNo, @NmOnCard, @BookingStatus)" SelectCommand="SELECT * FROM [Booking]" UpdateCommand="UPDATE [Booking] SET [CustomerId] = @CustomerId, [CheckInDate] = @CheckInDate, [CheckOutDate] = @CheckOutDate, [Guest] = @Guest, [RoomId ] = @RoomId_, [RoomNo] = @RoomNo, [RoomType] = @RoomType, [RoomRate ] = @RoomRate_, [FirstNm ] = @FirstNm_, [LastNm] = @LastNm, [Email ] = @Email_, [Phone] = @Phone, [IdName] = @IdName, [IdNo] = @IdNo, [CardTyp] = @CardTyp, [CardNo] = @CardNo, [NmOnCard] = @NmOnCard, [BookingStatus] = @BookingStatus WHERE [BookingId] = @BookingId">
            <DeleteParameters>
                <asp:Parameter Name="BookingId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:SessionParameter Name="CustomerId" SessionField="userid" Type="Int32" />
                <asp:ControlParameter ControlID="txtCin" DbType="Date" Name="CheckInDate" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCout" DbType="Date" Name="CheckOutDate" PropertyName="Text" />
                <asp:ControlParameter ControlID="ddlGuest" Name="Guest" PropertyName="SelectedValue" Type="Int32" />
                <asp:Parameter Name="RoomId_" Type="Int32" />
                <asp:ControlParameter ControlID="txtRNo" Name="RoomNo" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtRTyp" Name="RoomType" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtRRate" Name="RoomRate_" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtFN" Name="FirstNm_" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtLN" Name="LastNm" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtEmail" Name="Email_" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtPhn" Name="Phone" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtIdNm" Name="IdName" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtIdNo" Name="IdNo" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="DropDownList1" Name="CardTyp" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="txtCNo" Name="CardNo" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="lblCNm" Name="NmOnCard" PropertyName="Text" Type="String" />
                <asp:Parameter DefaultValue="Confirm" Name="BookingStatus" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CustomerId" Type="Int32" />
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
                <asp:Parameter Name="BookingId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
                
            
            

       
        
        
            
            
                   
                
            
            

       
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
