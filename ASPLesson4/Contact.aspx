<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ASPLesson4.Contact" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <div class="row">
            <div class="col-md-offset-4 col-md-8">
                  <h1>Contact us</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Contact Info</h3>
                    </div>
                    <div class="panel-body">
                        <address>
                            <strong>Nathan Siu</strong><br>
                            1 main street<br>
                            Barrie, ON L0M1B4<br>
                            <abbr title="Phone">Tel:</abbr>
                            705-434-9730
                        </address>
                    </div>
                </div>


            </div>
            <div class="col-md-6">
              
                <!--insert complete form here-->
                <div class="form-group">
                    <label class="control-label" for="form-group-input">First Name</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="FirstNameTextBox" placeholder="First Name" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="alert-danger" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is Required" ControlToValidate="FirstNameTextBox" SetFocusOnError="true"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <label class="control-label" for="LastNameTextBox">Last Name</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="LastNameTextBox" placeholder="Last Name" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="alert-danger" Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is Required" ControlToValidate="LastNameTextBox" SetFocusOnError="true"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <label class="control-label" for="EmailTextBox">Email</label>
                    <asp:TextBox runat="server" TextMode="Email" CssClass="form-control" ID="EmailTextBox" placeholder="Email" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="alert-danger" Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email Name is Required" ControlToValidate="EmailTextBox" SetFocusOnError="true"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <label class="control-label" for="ContactTextBox">Contact Number</label>
                    <asp:TextBox runat="server" TextMode="Phone" CssClass="form-control" ID="ContactTextBox" placeholder="Phone Number" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="alert-danger" Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Contact Number is Required" ControlToValidate="ContactTextBox" SetFocusOnError="true"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <label class="control-label" for="MessageTextBox">Message</label>
                    <asp:TextBox runat="server" TextMode="Multiline" Columns="3" Rows="3" CssClass="form-control" ID="MessageTextBox" placeholder="Enter your message..." required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="alert-danger" Display="Dynamic" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Message is Required" ControlToValidate="MessageTextBox" SetFocusOnError="true"></asp:RequiredFieldValidator>
                </div>
                <div class="text-right">
                    <a class="btn btn-danger btn-lg" id="CancelButton" href="Default.aspx">Cancel</a>
                    <asp:Button runat="server" CssClass="btn btn-primary btn-lg" ID="SubmitButton" Text="Submit" OnClick="SubmitButton_Click" CausesValidation="true" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
