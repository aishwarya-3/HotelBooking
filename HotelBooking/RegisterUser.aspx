<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="HotelBooking.RegisterUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section class="ftco-section contact-section">
      
          
        <div class="row block-9" style="margin-left:400px">
            
          <div class="col-md-6 pr-md-5">
              <div style="margin-left:120px">
            <h1 class="mb-3">Registration info</h1></div>
              <div class="form-group" >
                
                  <asp:TextBox Id="txtFNM" CssClass="form-control" runat="server" placeholder="Enter Full Name" required></asp:TextBox>
              </div>
              <div class="form-group" >
                
                  <asp:TextBox Id="txtemail" CssClass="form-control" runat="server" placeholder="Enter Email Address" required   pattern="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" title="abc@gmail.com"></asp:TextBox>
              </div>
              <div class="form-group" >
                
                  <asp:TextBox Id="txtPhone" CssClass="form-control" runat="server" placeholder="Enter Phone Number" required MaxLength="10"></asp:TextBox>
              </div>
              
               <div class="form-group" >
                
                  <asp:RadioButton Id="rbfemale"    runat="server" GroupName="Gender" Text="Female"  >
                      
                   </asp:RadioButton>
                   <asp:RadioButton Id="rbmale"   runat="server" GroupName="Gender" Text="Male">
                      
                   </asp:RadioButton>
              </div>
               <div class="form-group" >
                
                  <asp:TextBox Id="txtAddr" CssClass="form-control" runat="server" placeholder="Enter Address" required ></asp:TextBox>
              </div>
              <div class="form-group" >
                
                  <asp:TextBox Id="txtCity" CssClass="form-control" runat="server" placeholder="Enter City" required></asp:TextBox>
              </div>
              <div class="form-group">
               
                   <asp:TextBox Id="txtpwd" CssClass="form-control" runat="server" placeholder="Enter Password" TextMode="Password" required ></asp:TextBox>
              </div>
              
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerId] = @CustomerId" InsertCommand="INSERT INTO [Customer] ([CustomerNm], [MobileNo], [EmailId], [Gender], [Address], [City], [Password]) VALUES (@CustomerNm, @MobileNo, @EmailId, @Gender, @Address, @City, @Password)" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [CustomerNm] = @CustomerNm, [MobileNo] = @MobileNo, [EmailId] = @EmailId, [Gender] = @Gender, [Address] = @Address, [City] = @City, [Password] = @Password WHERE [CustomerId] = @CustomerId">
                  <DeleteParameters>
                      <asp:Parameter Name="CustomerId" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:ControlParameter ControlID="txtFNM" Name="CustomerNm" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="txtPhone" Name="MobileNo" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="txtemail" Name="EmailId" PropertyName="Text" Type="String" />
                      <asp:Parameter Name="Gender" Type="String" />
                      <asp:ControlParameter Name="Address" Type="String" ControlID="txtAddr" PropertyName="Text" />
                      <asp:ControlParameter Name="City" Type="String" ControlID="txtCity" PropertyName="Text" />
                      <asp:ControlParameter ControlID="txtpwd" Name="Password" PropertyName="Text" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="CustomerNm" Type="String" />
                      <asp:Parameter Name="MobileNo" Type="String" />
                      <asp:Parameter Name="EmailId" Type="String" />
                      <asp:Parameter Name="Gender" Type="String" />
                      <asp:Parameter Name="Address" Type="String" />
                      <asp:Parameter Name="City" Type="String" />
                      <asp:Parameter Name="Password" Type="String" />
                      <asp:Parameter Name="CustomerId" Type="Int32" />
                  </UpdateParameters>
              </asp:SqlDataSource>
              
               <div class="form-group" style="text-align:center;" >
                
                 <asp:Button ID="btnRegister" CssClass="btn btn-primary" runat="server" Text="Register" OnClick="btnRegister_Click" ></asp:Button>
                  <asp:Button ID="btnCancel" CssClass="btn btn-primary" runat="server" Text="Cancel"  ></asp:Button>
              </div>
               
          
          </div>

          <div class="col-md-6" id="map"></div>
        </div>
              

    
      </div>
    </section>
</asp:Content>
