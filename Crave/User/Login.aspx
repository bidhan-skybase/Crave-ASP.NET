<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Crave.User.Login" %>
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
        <div style="padding-left:25rem">
        <div class="container">
            <div class="heading_containerr">
                <div class="align-self-end">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </div>
                <h2 >Login</h2>
            </div>
            
                </div>
                <div class="col-md-6">
                    <div class="form-container">
                        <div class="form-group">
                            <asp:RequiredFieldValidator ID="rfUsername" runat="server" 
                                ErrorMessage="Username is required" 
                                Font-Size="Small"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                ControlToValidate="txtUsername">

                            </asp:RequiredFieldValidator> 
                            <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter Username"
                                CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="Password is required" 
                                Font-Size="Small"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true"
                                ControlToValidate="txtPassword">

                            </asp:RequiredFieldValidator> 
                            <asp:TextBox ID="txtPassword" runat="server"
                                TextMode="Password" 
                                CssClass="form-control" placeholder="Enter Password"></asp:TextBox>
                        </div>

                        <div class="btn-box">
                            <asp:Button ID="btnLogin" runat="server" Text="Login"
                                CssClass="btn btn-secondary rounded-pill pl-4 pr-4 text-white" OnClick="btnLogin_Click"/>
                            <span class="pl-3 text-info">New User?<a href="Registration.aspx" class="badge badge-info">Register Here</a></span> 
                        </div>
                    </div>

                </div>

            
        </div>
    </section>
</asp:Content>
