<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminCustomers.aspx.cs" Inherits="HotelBooking.AdminCustomers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section class="ftco-section contact-section">
      
             
        <div class="row block-9" style="margin-left:400px">
            
          <div class="col-md-6 pr-md-5">
              <div class="form-group" >
                
               <center><h2>Cutomers</h2></center> 
              </div>
              <div class="form-group" >
                
                  <asp:TextBox Id="txtSearch" CssClass="form-control" runat="server" placeholder="Search Customer" ></asp:TextBox>
              </div>
              
                                         
              <div class="form-group" style="text-align:center;">
                
                 <asp:Button ID="btnSearch" CssClass="btn btn-primary" runat="server" Text="Search" OnClick="btnSearch_Click" ></asp:Button>
                  
              </div>
              <div class="form-group" >
                
                  <asp:GridView Id="GV"  runat="server"  ></asp:GridView>
              </div>
                         
          </div>

          <div class="col-md-6" id="map"></div>
        </div>
              

    
     
    </section>
</asp:Content>
