<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminRoom.aspx.cs" Inherits="HotelBooking.AdminRoom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section class="ftco-section contact-section">
      
            
        <div class="row block-9" style="margin-left:400px">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Room] WHERE [RoomId] = @RoomId" InsertCommand="INSERT INTO [Room] ([RoomType], [RoomNo], [RoomRate], [RoomFacilities], [RoomImage]) VALUES (@RoomType, @RoomNo, @RoomRate, @RoomFacilities, @RoomImage)" SelectCommand="SELECT * FROM [Room]" UpdateCommand="UPDATE [Room] SET [RoomType] = @RoomType, [RoomNo] = @RoomNo, [RoomRate] = @RoomRate, [RoomFacilities] = @RoomFacilities WHERE [RoomId] = @RoomId">
                                 <DeleteParameters>
                                     <asp:Parameter Name="RoomId" Type="Int32" />
                                 </DeleteParameters>
                                 <InsertParameters>
                                     <asp:ControlParameter ControlID="ddlRType" Name="RoomType" PropertyName="SelectedValue" Type="String" />
                                     <asp:ControlParameter ControlID="txtRNo" Name="RoomNo" PropertyName="Text" Type="String" />
                                     <asp:ControlParameter ControlID="txtRate" Name="RoomRate" PropertyName="Text" Type="Decimal" />
                                     <asp:ControlParameter ControlID="txtRFacilities" Name="RoomFacilities" PropertyName="Text" Type="String" />
                                     <asp:ControlParameter ControlID="filupload" Name="RoomImage" PropertyName="FileName" Type="String" />
                                 </InsertParameters>
                                 <UpdateParameters>
                                     <asp:ControlParameter ControlID="ddlRType" Name="RoomType" PropertyName="SelectedValue" Type="String" />
                                     <asp:ControlParameter ControlID="txtRNo" Name="RoomNo" PropertyName="Text" Type="String" />
                                     <asp:ControlParameter ControlID="txtRate" Name="RoomRate" PropertyName="Text" Type="Decimal" />
                                     <asp:ControlParameter ControlID="txtRFacilities" Name="RoomFacilities" PropertyName="Text" Type="String" />
                                     <asp:ControlParameter Name="RoomId" Type="Int32" ControlID="GV" PropertyName="SelectedValue" />
                                 </UpdateParameters>
                             </asp:SqlDataSource>
          <div class="col-md-6 pr-md-5">
               <div class="form-group" >
                
               <center><h2>Add Rooms</h2></center> 
              </div>
                            <div class="form-group" >

                  <asp:DropDownList Id="ddlRType" CssClass="form-control" runat="server"  >
                      <asp:ListItem>Rooms</asp:ListItem>
                      <asp:ListItem>Superior Room twin</asp:ListItem>
                      <asp:ListItem>Premier Suite</asp:ListItem>
                      <asp:ListItem>Family Room</asp:ListItem>
                                </asp:DropDownList>
              </div>
              <div class="form-group" >
                
                  <asp:TextBox Id="txtRNo" CssClass="form-control" runat="server" placeholder="Room Number" ></asp:TextBox>
              </div>
              <div class="form-group">
               
                   <asp:TextBox Id="txtRate" CssClass="form-control" runat="server" placeholder="Room Rate"  ></asp:TextBox>
              </div>
            <div class="form-group">
               
                   <asp:TextBox Id="txtRFacilities" CssClass="form-control" runat="server" placeholder="Room Facilities"  ></asp:TextBox>
              </div>
              <div class="form-group">
               
                   <asp:FileUpload Id="filupload" CssClass="form-control" runat="server"  ></asp:FileUpload>
              </div>
              <div class="form-group" style="text-align:center;" >
                
                 <asp:Button ID="btnSave" CssClass="btn btn-primary" runat="server" Text="Save" OnClick="btnSave_Click" ></asp:Button>
                   <asp:Button ID="btnUpdate" CssClass="btn btn-primary" runat="server" Text="Update" OnClick="btnUpdate_Click"  Font-Underline="True"></asp:Button>
                  <asp:Button ID="btnCancel" CssClass="btn btn-primary" runat="server" Text="Reset" OnClick="btnCancel_Click"  ></asp:Button>
              </div>
                  <div class="form-group" >
                
                  <asp:GridView Id="GV" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GV_SelectedIndexChanged" DataKeyNames="RoomId"  >
                      <Columns>
                          <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                      </Columns>
                      </asp:GridView>
              </div>       
          </div>

          <div class="col-md-6" id="map"></div>
        </div>
              

    
     
    </section>
</asp:Content>
