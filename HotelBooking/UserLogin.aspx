<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="HotelBooking.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
   
<section class="ftco-section contact-section">
      
             
        <div class="row block-9" style="margin-left:400px">
            
          <div class="col-md-6 pr-md-5">
              <div style="margin-left:160px">
            <h1 class="mb-3">Login</h1></div>
              <div class="form-group" >
                
                  <asp:TextBox Id="txtEmail" CssClass="form-control" runat="server" placeholder="Email Id" required  ></asp:TextBox>
              </div>
              <div class="form-group">
               
                   <asp:TextBox Id="txtpwd" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password" required  ></asp:TextBox>
              </div>
              <div class="form-group" style="text-align:center;" >
                
                 <asp:Button ID="btnLogin" CssClass="btn btn-primary" runat="server" Text="Login" OnClick="btnLogin_Click" ></asp:Button>
                  <asp:Button ID="btnCancel" CssClass="btn btn-primary" runat="server" Text="Cancel"  ></asp:Button>
              </div>
               <div class="form-group" style="text-align:center;">
            <asp:LinkButton ID="lbtnCreate" CssClass="btn btn-primary" runat="server" PostBackUrl="~/RegisterUser.aspx" Width="218px">Create New Account</asp:LinkButton>
                   &nbsp;&nbsp;&nbsp;
                   </div>
              
              
          
          </div>

          <div class="col-md-6" id="map"></div>
        </div>
              

    
      </div>
    </section>    
</asp:Content>
