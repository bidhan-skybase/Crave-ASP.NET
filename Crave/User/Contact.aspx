﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Crave.User.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<script>
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID%>").style.display = "none";

            }, seconds * 1000);
        }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="book_section layout_padding">
    <div class="container">
      <div class="heading_container">
          <div class="align-self-end">
              <asp:Label runat="server" ID="lblMsg"></asp:Label>
          </div>
        <h2>
          Send a Feedback
        </h2>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="form_container">
           
              <div>
                
                  <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Your Name"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Name is required" ControlToValidate="txtName"
                      ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
              </div>
              <div>
                 <asp:TextBox ID="txtEmail" TextMode="Email" runat="server" CssClass="form-control" placeholder="Your Email"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is required" ControlToValidate="txtEmail"
                      ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
              </div>
              <div>
                 <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Subect"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ErrorMessage="Subject is required" ControlToValidate="txtSubject"
                      ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
              </div>
              <div>

                  <div>
                 <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" placeholder="Feedback"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Feedback is required" ControlToValidate="txtMessage"
                      ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
              </div>
              <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-warning rounded-pill pl-4 pr-4 text-white"
                  onClick="btnSubmit_Click1" />
           </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="map_container ">
            <div id="googleMap"></div>
          </div>
        </div>
      </div>
    </div>
  </section>
</asp:Content>
