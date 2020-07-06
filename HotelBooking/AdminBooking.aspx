<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminBooking.aspx.cs" Inherits="HotelBooking.AdminBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
   <section class="ftco-section contact-section">
      
             
        <div class="row block-9" style="margin-left:400px">
            
          <div class="col-md-6 pr-md-5">
              <div class="form-group" >
                
               <center><h2> Booking</h2></center> 
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Booking] WHERE [BookingId] = @BookingId" InsertCommand="INSERT INTO [Booking] ([CustomerId], [CheckInDate], [CheckOutDate], [Guest], [RoomId ], [RoomNo], [RoomType], [RoomRate ], [FirstNm ], [LastNm], [Email ], [Phone], [IdName], [IdNo], [CardTyp], [CardNo], [NmOnCard], [BookingStatus]) VALUES (@CustomerId, @CheckInDate, @CheckOutDate, @Guest, @RoomId_, @RoomNo, @RoomType, @RoomRate_, @FirstNm_, @LastNm, @Email_, @Phone, @IdName, @IdNo, @CardTyp, @CardNo, @NmOnCard, @BookingStatus)" SelectCommand="SELECT * FROM [Booking]" UpdateCommand="UPDATE [Booking] SET [CustomerId] = @CustomerId, [CheckInDate] = @CheckInDate, [CheckOutDate] = @CheckOutDate, [Guest] = @Guest, [RoomId ] = @RoomId_, [RoomNo] = @RoomNo, [RoomType] = @RoomType, [RoomRate ] = @RoomRate_, [FirstNm ] = @FirstNm_, [LastNm] = @LastNm, [Email ] = @Email_, [Phone] = @Phone, [IdName] = @IdName, [IdNo] = @IdNo, [CardTyp] = @CardTyp, [CardNo] = @CardNo, [NmOnCard] = @NmOnCard, [BookingStatus] = @BookingStatus WHERE [BookingId] = @BookingId">
           <DeleteParameters>
               <asp:Parameter Name="BookingId" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
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
                  
              </div>
              </div>

          
        </div>
              
              
                  
              <div class="form-group" >
                <center>
                  <asp:GridView Id="GV" DataSourceID="SqlDataSource1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookingId"   >
                      <Columns>
                          <asp:BoundField DataField="BookingId" HeaderText="BookingId" InsertVisible="False" ReadOnly="True" SortExpression="BookingId" Visible="True" />
                          <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" SortExpression="CustomerId" Visible="False" />
                          <asp:BoundField DataField="CheckInDate" DataFormatString="{0:d}" HeaderText="CheckInDate" SortExpression="CheckInDate" HtmlEncode="False" />
                          <asp:BoundField DataField="CheckOutDate" DataFormatString="{0:d}" HeaderText="CheckOutDate" SortExpression="CheckOutDate" />
                          <asp:BoundField DataField="Guest" HeaderText="Guest" SortExpression="Guest" />
                          <asp:BoundField DataField="RoomId " HeaderText="RoomId " SortExpression="RoomId " Visible="False" />
                          <asp:BoundField DataField="RoomNo" HeaderText="RoomNo" SortExpression="RoomNo" />
                          <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
                          <asp:BoundField DataField="RoomRate " HeaderText="RoomRate " SortExpression="RoomRate " />
                          <asp:BoundField DataField="FirstNm " HeaderText="FirstNm " SortExpression="FirstNm " />
                          <asp:BoundField DataField="LastNm" HeaderText="LastNm" SortExpression="LastNm" Visible="False" />
                          <asp:BoundField DataField="Email " HeaderText="Email " SortExpression="Email " />
                          <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                          <asp:BoundField DataField="IdName" HeaderText="IdName" SortExpression="IdName" Visible="False" />
                          <asp:BoundField DataField="IdNo" HeaderText="IdNo" SortExpression="IdNo" Visible="False" />
                          <asp:BoundField DataField="CardTyp" HeaderText="CardTyp" SortExpression="CardTyp" />
                          <asp:BoundField DataField="CardNo" HeaderText="CardNo" SortExpression="CardNo" Visible="False" />
                          <asp:BoundField DataField="NmOnCard" HeaderText="NmOnCard" SortExpression="NmOnCard" Visible="False" />
                          <asp:BoundField DataField="BookingStatus" HeaderText="BookingStatus" SortExpression="BookingStatus" />
                          <asp:HyperLinkField DataNavigateUrlFields="BookingId" DataNavigateUrlFormatString="~/AdminBilling.aspx?bookingid={0}" HeaderText="Select" Text="select" />
                      </Columns>
                      
                      
                  </asp:GridView>
                    </center>
              </div>
                                      
                   
          
              

    
     
    </section>
</asp:Content>
