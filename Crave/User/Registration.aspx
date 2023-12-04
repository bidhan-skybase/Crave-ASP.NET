<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Crave.User.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <script>
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID%>").style.display = "none";

            }, seconds * 1000);
        }
    </script>
    <script>
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=imgUser.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="book-section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                        </div>
                <asp:Label ID="lblHeaderMsg" runat="server" Text="<h2>User Registration</h2>">

                    </asp:Label>
                </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form_container">
                         <div class="form-group">
                            
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                                ControlToValidate="txtName" ForeColor="Red" Display="Dynamic"
                                SetFocusOnError="true"
                                ErrorMessage="Name is required"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revName" 
                                ForeColor="Red" Display="Dynamic"
                                SetFocusOnError="true"
                                ControlToValidate="txtName"
                               ValidationExpression="^[a-zA-Z\s]+$"
                                runat="server" ErrorMessage="Name must be in characters only">
                            </asp:RegularExpressionValidator>
                             <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Full Name"
                                ToolTip="Full Name"></asp:TextBox>
                        </div>
                   
                <div class="form-group">
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" 
                                ControlToValidate="txtUsername" ForeColor="Red" Display="Dynamic"
                                SetFocusOnError="true"
                                ErrorMessage="Username is required"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter User Name"
                                ToolTip="User Name"></asp:TextBox>
                        </div>

                         <div class="form-group">
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                                ControlToValidate="txtEmail" ForeColor="Red" Display="Dynamic"
                                SetFocusOnError="true"
                                ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email Address"
                                ToolTip="Email Address"></asp:TextBox>
                        </div>

                        <div class="form-group">
                             
                            <asp:RequiredFieldValidator ID="rfvMobile" runat="server" 
                                ControlToValidate="txtMobile" ForeColor="Red" Display="Dynamic"
                                SetFocusOnError="true"
                                ErrorMessage="Phone number is required"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revMobile" 
                                ForeColor="Red" Display="Dynamic"
                                SetFocusOnError="true"
                                ControlToValidate="txtMobile"
                                 ValidationExpression="^[0-9]{10}$"
                                runat="server" ErrorMessage="Phone number must have 10 digits">
                            </asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="Enter Phone Number"
                                ToolTip="Phone Number" TextMode="Phone"> </asp:TextBox>
                        </div>
                    </div>
                </div>
            <div class="col-md-6">
                <div class="form-container">
                    <div class="form-group">
                            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" 
                                ControlToValidate="txtAddress" ForeColor="Red" Display="Dynamic"
                                SetFocusOnError="true"
                                ErrorMessage="Address is required"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Enter Address"
                                ToolTip="User Name" TextMode="MultiLine"></asp:TextBox>
                        </div>

                         <div class="form-group">
                            <asp:RequiredFieldValidator ID="rfvPostCode" runat="server" 
                                ControlToValidate="txtPostCode" ForeColor="Red" Display="Dynamic"
                                SetFocusOnError="true"
                                ErrorMessage="Post Code should be 6 digits"></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="revPostCode" 
                                ForeColor="Red" Display="Dynamic"
                                SetFocusOnError="true"
                                ControlToValidate="txtPostCode"
                            ValidationExpression="^[0-9]{6}$"
                                runat="server" ErrorMessage="Numbers only">
                            </asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtPostCode" runat="server" CssClass="form-control" placeholder="Enter Post Code"
                                ToolTip="Post Code" TextMode="Number"></asp:TextBox>
                         </div>

                        <div>
                            <asp:FileUpload ID="fuUserImage" runat="server" CssClass="Form-control" 
                                ToolTip="User Image" onchange="ImagePreview(this);"/>

                        </div>

                    <div class="form-group">
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                                ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic"
                                SetFocusOnError="true"
                                ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Enter Password"
                                ToolTip="Password" TextMode="Password"> </asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row pl-4">
                    <div class="btn_box">
                        <asp:Button ID="btnRegister" runat="server" Text="Register"
                            OnClick="btnRegister_Click"
                            CssClass="btn btn-success rounded-pill pl-4 pr-4 text-white" />
                        <asp:Label ID="lblAlreadUser" runat="server" CssClass="pl-3 text-black-100"
                            Text="Alread registered? <a href='Login.aspx' class='badge badge-info'>Login Here</a>"></asp:Label>
                    </div>
                </div>
                    <div class="row p-5">
                        <div style="align-items:center">
                            <asp:Image ID="imgUser" runat="server" CssClass="img-thumbnail" />

                        </div>
                    </div>
    </section>

</asp:Content>
