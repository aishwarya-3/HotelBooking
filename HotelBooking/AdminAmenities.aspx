<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAmenities.aspx.cs" Inherits="HotelBooking.AdminAmenities" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section class="ftco-section contact-section">
      
             
        <div class="row block-9" style="margin-left:400px">
            
          <div class="col-md-6 pr-md-5">
                <div class="form-group" >
                
               <center><h2>
                   
                   
                   
                   Amenities</h2></center> 
              </div>
              
              <div class="form-group" >
                                                
                                                                
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Facilities] WHERE [FId] = @FId" InsertCommand="INSERT INTO [Facilities] ([Fname], [Fcharges], [Fdescription], [Fimage]) VALUES (@Fname, @Fcharges, @Fdescription, @Fimage)" SelectCommand="SELECT * FROM [Facilities]" UpdateCommand="UPDATE [Facilities] SET [Fname] = @Fname, [Fcharges] = @Fcharges, [Fdescription] = @Fdescription, [Fimage] = @Fimage WHERE [FId] = @FId">
                       <DeleteParameters>
                           <asp:Parameter Name="FId" Type="Int32" />
                       </DeleteParameters>
                       <InsertParameters>
                           <asp:ControlParameter ControlID="txtFName" Name="Fname" PropertyName="Text" Type="String" />
                           <asp:ControlParameter ControlID="txtFCharges" Name="Fcharges" PropertyName="Text" Type="Decimal" />
                           <asp:ControlParameter ControlID="txtFDescription" Name="Fdescription" PropertyName="Text" Type="String" />
                           <asp:ControlParameter ControlID="filupload" Name="Fimage" PropertyName="FileName" Type="String" />
                       </InsertParameters>
                       <UpdateParameters>
                           <asp:Parameter Name="Fname" Type="String" />
                           <asp:Parameter Name="Fcharges" Type="Decimal" />
                           <asp:Parameter Name="Fdescription" Type="String" />
                           <asp:Parameter Name="Fimage" Type="String" />
                           <asp:Parameter Name="FId" Type="Int32" />
                       </UpdateParameters>
                   </asp:SqlDataSource>
                                                
                                                                
                  <asp:TextBox Id="txtFName" CssClass="form-control" runat="server" placeholder="Facility Name" ></asp:TextBox>
              </div>
              <div class="form-group">
               
                   <asp:TextBox Id="txtFCharges" CssClass="form-control" runat="server" placeholder="Facility Charges"  ></asp:TextBox>
              </div>
            <div class="form-group">
               
                   <asp:TextBox Id="txtFDescription" CssClass="form-control" runat="server" placeholder="Description"  ></asp:TextBox>
              </div>
              <div class="form-group">
               
                   <asp:FileUpload Id="filupload" CssClass="form-control" runat="server"  ></asp:FileUpload>
              </div>
              
              <div class="form-group" style="text-align:center;" >
                
                 <asp:Button ID="btnSave" CssClass="btn btn-primary" runat="server" Text="Save" OnClick="btnSave_Click" ></asp:Button>
                  <asp:Button ID="btnUpdate" CssClass="btn btn-primary" runat="server" Text="Update" OnClick="btnUpdate_Click"  ></asp:Button>
                  <asp:Button ID="btnCancel" CssClass="btn btn-primary" runat="server" Text="Reset" OnClick="btnCancel_Click"  ></asp:Button>
                    </div>

                <div class="form-group" >
                
                  <asp:GridView Id="GV" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GV_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="FId" >
                      <Columns>
                          <asp:BoundField DataField="FId" HeaderText="FId" InsertVisible="False" ReadOnly="True" SortExpression="FId" />
                          <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                          <asp:BoundField DataField="Fcharges" HeaderText="Fcharges" SortExpression="Fcharges" />
                          <asp:BoundField DataField="Fdescription" HeaderText="Fdescription" SortExpression="Fdescription" />
                          <asp:BoundField DataField="Fimage" HeaderText="Fimage" SortExpression="Fimage" />
                      </Columns>
                      </asp:GridView>
              </div>                
          </div>

          <div class="col-md-6" id="map"></div>
        </div>
              

    
     
    </section>
</asp:Content>
