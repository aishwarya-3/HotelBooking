<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminBilling.aspx.cs" Inherits="HotelBooking.AdminBilling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
        <script language="javascript" type="text/javascript">
        function PrintPage() {
            var printContent = document.getElementById('<%= panel.ClientID %>');
            var printWindow = window.open("All Records",
            "Print Panel", 'left=50000,top=50000,width=0,height=0');
            printWindow.document.write(printContent.innerHTML);
            printWindow.document.close();
            printWindow.focus();
            printWindow.print();
        }
    </script>
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <section class="ftco-section">
    
               <div class="form-group" >
                
               <center><h2>Bill</h2></center> 
              </div>
    


          <div class="container">
        <div class="row d-flex">
          <div class="col-md-12 ftco-animate makereservation p-5 bg-light">
              <div class="row mb-5">
                
                <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblBid" runat="server" Font-Bold="True" ForeColor="Black" Text="Booking Id"></asp:Label>
                   <asp:TextBox ID="txtBid" runat="server" CssClass="form-control" Placeholder="Booking Id"></asp:TextBox>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                      <asp:Label ID="lblCnm" runat="server" Font-Bold="True" ForeColor="Black"  Text="Coustomer Name"></asp:Label>
                   <asp:TextBox ID="txtCnm" runat="server" CssClass="form-control"  Placeholder="Coustomer Name"></asp:TextBox>
 
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblBStatus" runat="server" Font-Bold="True" ForeColor="Black" Text="Booking Status"></asp:Label>
                    <asp:TextBox ID="txtBStatus" runat="server" CssClass="form-control"  Placeholder="Booking Status"></asp:TextBox>
 
                  </div>
                </div>
                  <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblCin" runat="server" Font-Bold="True" ForeColor="Black" Text="CheckIn Date"></asp:Label>
                    <asp:TextBox ID="txtCin" runat="server" CssClass="form-control"  Placeholder="CheckIn Date"></asp:TextBox>
 
                  </div>
                </div>

                  <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblCOut" runat="server" Font-Bold="True" ForeColor="Black" Text="CheckOut Date"></asp:Label>
                    <asp:TextBox ID="txtCOut" runat="server" CssClass="form-control"  Placeholder="CheckOut Date"></asp:TextBox>
 
                  </div>
                </div>

                  <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblRNo" runat="server" Font-Bold="True" ForeColor="Black" Text="Room No"></asp:Label>
                    <asp:TextBox ID="txtRNo" runat="server" CssClass="form-control"  Placeholder="Room No"></asp:TextBox>
 
                  </div>
                </div>

                   <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblRtyp" runat="server" Font-Bold="True" ForeColor="Black" Text="Room Type"></asp:Label>
                    <asp:TextBox ID="txtRtyp" runat="server" CssClass="form-control"  Placeholder="Room Type"></asp:TextBox>
 
                  </div>
                </div>
        <div class="col-md-4">
                  <div class="form-group">
                    <asp:Label ID="lblRate" runat="server" Font-Bold="True" ForeColor="Black" Text="Room Rate"></asp:Label>
                    <asp:TextBox ID="txtRate" runat="server" CssClass="form-control"  Placeholder="Room Rate"></asp:TextBox>
 
                  </div>
                </div>
                 
                </div>

              

              <asp:GridView Id="GV" runat="server" ShowFooter="true"  AutoGenerateColumns="false" OnSelectedIndexChanged="GV_SelectedIndexChanged">
              <Columns>
                

        <asp:BoundField DataField="SrNo" HeaderText="SrNo" />

        <asp:TemplateField HeaderText="Services">

            <ItemTemplate>

                <asp:TextBox ID="txtServices" runat="server"></asp:TextBox>

            </ItemTemplate>

        </asp:TemplateField>

        <asp:TemplateField HeaderText="Charges">

            <ItemTemplate>

                <asp:TextBox ID="txtCharges" runat="server"></asp:TextBox>

            </ItemTemplate>
            <FooterStyle HorizontalAlign="Right" />

            <FooterTemplate>

             <asp:Button ID="ButtonAdd" runat="server" Text="Add" OnClick="ButtonAdd_Click" />

            </FooterTemplate>
        </asp:TemplateField>
              </Columns>
        </asp:GridView>
              <br/>

              
    
                <div class="row mb-5">
       <div class="col-md-4">
                  <div class="form-group mr-4">
                     
                      <asp:Label ID="lblTotal" runat="server" Font-Bold="True" ForeColor="Black" Text="Total"></asp:Label>
                    <asp:TextBox ID="txtTotal" runat="server" CssClass="form-control"  Placeholder="Total"></asp:TextBox>
                   </div>
           </div>
                  

             <div class="col-md-4">
                  <div class="form-group mr-4">
                      <asp:Label ID="lblDiscount" runat="server" Font-Bold="True" ForeColor="Black" Text="Discount"></asp:Label>
                    <asp:TextBox ID="txtDiscount" runat="server" CssClass="form-control"  Placeholder="Discount"></asp:TextBox>
                   </div>
                 </div>
                 

              <div class="col-md-4">
                  <div class="form-group mr-4">
                      <asp:Label ID="lblSubTotal" runat="server" Font-Bold="True" ForeColor="Black" Text="SubTotal"></asp:Label>
                    <asp:TextBox ID="txtSubTotal" runat="server" CssClass="form-control"  Placeholder="SubTotal"></asp:TextBox>
                   </div>
                  </div>
                    </div>
            
              <div class="row mb-5">
              <div class="form-group mr-4">
                  <div class="form-group">
                    <asp:Label ID="lblBStatus1" runat="server" Font-Bold="True" ForeColor="Black" Text="Billing Status"></asp:Label>
                    <div class="form-group" >
                      <asp:TextBox ID="txtBillStatus" runat="server" CssClass="form-control"  Placeholder="Billing Status"></asp:TextBox>
                    </div>
                      </div>
                  </div>
                  </div>
                  <div class="col-md-6">
                  <div class="form-group mr-4">
                      <asp:Button ID="btnSave" CssClass="search-submit btn btn-primary" runat="server" Text="Save" OnClick="btnSave_Click"   ></asp:Button>
                      
                   </div>
                  
                   </div>
               
                  <div class="form-group mr-4">
                      <div class="form-group mr-4">
                          <asp:panel ID="panel" runat="server"><center>
                     <table title="Bill" style="height: 400px; width: 400px;  margin-left:200px">
    <tr><td colspan="2" ><center><h2>Bill</h2></center></td>
    </tr>
    <tr>
    <td>BookingId</td>
    <td><asp:Label ID="lblBidT" runat="server" Font-Bold="True" > </asp:Label></td>
    </tr>
    <tr>
    <td>Name</td>
    <td><asp:Label ID="lblNmT" runat="server" Font-Bold="True"> </asp:Label></td>
    </tr>
    <tr>
    <td>Booking Status</td>
    <td><asp:Label ID="lblBookStT" runat="server" Font-Bold="True"> </asp:Label></td>
    </tr>
    <tr>
    <td>CheckIn Date</td>
    <td><asp:Label ID="lblCIDT" runat="server" Font-Bold="True"> </asp:Label></td>
    </tr>
    <tr>
    <td>CheckOut Date</td>
    <td><asp:Label ID="lblCODT" runat="server" Font-Bold="True"> </asp:Label></td>
    </tr>

    <tr>
    <td>Room No</td>
    <td><asp:Label ID="lblROOMNOT" runat="server" Font-Bold="True"> </asp:Label></td>
    </tr>
    <tr>
    <td>Room Type</td>
    <td><asp:Label ID="lblROOMTYPT" runat="server" Font-Bold="True"> </asp:Label></td>
    </tr>
    <tr>
    <td>Room Rate</td>
    <td><asp:Label ID="lblRateT" runat="server" Font-Bold="True"> </asp:Label></td>
    </tr>
    
    
    <tr>
    <td>Total</td>
    <td><asp:label ID="lblTOTALT" runat="server" Font-Bold="True" > </asp:label></td>
    </tr>
    <tr>
    <td>Discount</td>
    <td><asp:label ID="lblDIST" runat="server" Font-Bold="True"> </asp:label></td>
    </tr>
    <tr>
    <td>SubTotal</td>
    <td><asp:Label ID="lblSUBT" runat="server" Font-Bold="True"> </asp:Label></td>
    </tr>
    <tr>
    <td>Billing Status</td>
    <td><asp:Label ID="lblBSTS" runat="server" Font-Bold="True" > </asp:Label></td>
    </tr>
    <tr>
    <td colspan="2"><asp:Button ID="btnPrnt" runat="server"  Text="Print" OnClick="btnPrnt_Click"  OnClientClick="PrintPage()"/>
    </td>
    </tr>
    </table>
                              </center></asp:panel>
                   </div>
              </div>
                      </div>
              
                   </div>
               
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [BillingMaster] WHERE [BillId] = @BillId" InsertCommand="INSERT INTO [BillingMaster] ([BookingId], [CustomerNm], [BookingStatus], [CheckInDate], [CheckoutDate], [RoomNo], [RoomTyp], [RoomRate], [Total], [Discount], [SubTotal], [BillingStatus]) VALUES (@BookingId, @CustomerNm, @BookingStatus, @CheckInDate, @CheckoutDate, @RoomNo, @RoomTyp, @RoomRate, @Total, @Discount, @SubTotal, @BillingStatus)" SelectCommand="SELECT * FROM [BillingMaster]" UpdateCommand="UPDATE [BillingMaster] SET [BookingId] = @BookingId, [CustomerNm] = @CustomerNm, [BookingStatus] = @BookingStatus, [CheckInDate] = @CheckInDate, [CheckoutDate] = @CheckoutDate, [RoomNo] = @RoomNo, [RoomTyp] = @RoomTyp, [RoomRate] = @RoomRate, [Total] = @Total, [Discount] = @Discount, [SubTotal] = @SubTotal, [BillingStatus] = @BillingStatus WHERE [BillId] = @BillId">
                  <DeleteParameters>
                      <asp:Parameter Name="BillId" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:ControlParameter ControlID="txtBid" Name="BookingId" PropertyName="Text" Type="Int32" />
                      <asp:ControlParameter ControlID="txtCnm" Name="CustomerNm" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="txtBStatus" Name="BookingStatus" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="txtCin" DbType="Date" Name="CheckInDate" PropertyName="Text" />
                      <asp:ControlParameter ControlID="txtCOut" DbType="Date" Name="CheckoutDate" PropertyName="Text" />
                      <asp:ControlParameter ControlID="txtRNo" Name="RoomNo" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="txtRtyp" Name="RoomTyp" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="txtRate" Name="RoomRate" PropertyName="Text" Type="Double" />
                      <asp:ControlParameter ControlID="txtTotal" Name="Total" PropertyName="Text" Type="Double" />
                      <asp:ControlParameter ControlID="txtDiscount" Name="Discount" PropertyName="Text" Type="Double" />
                      <asp:ControlParameter ControlID="txtSubTotal" Name="SubTotal" PropertyName="Text" Type="Double" />
                      <asp:ControlParameter ControlID="txtBillStatus" Name="BillingStatus" PropertyName="Text" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="BookingId" Type="Int32" />
                      <asp:Parameter Name="CustomerNm" Type="String" />
                      <asp:Parameter Name="BookingStatus" Type="String" />
                      <asp:Parameter DbType="Date" Name="CheckInDate" />
                      <asp:Parameter DbType="Date" Name="CheckoutDate" />
                      <asp:Parameter Name="RoomNo" Type="String" />
                      <asp:Parameter Name="RoomTyp" Type="String" />
                      <asp:Parameter Name="RoomRate" Type="Double" />
                      <asp:Parameter Name="Total" Type="Double" />
                      <asp:Parameter Name="Discount" Type="Double" />
                      <asp:Parameter Name="SubTotal" Type="Double" />
                      <asp:Parameter Name="BillingStatus" Type="String" />
                      <asp:Parameter Name="BillId" Type="Int32" />
                  </UpdateParameters>
            </asp:SqlDataSource>
               
        </div>
                 
          
            </section>  
</asp:Content>
