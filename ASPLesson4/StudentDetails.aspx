<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="ASPLesson4.StudentDetails" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <h1>student Details</h1>
                <h5>All Fields are Required</h5>
                <br />
                <div class="form-group">
                    <label class="control-label" for="LastNameTextBox">My label</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="LastNameTextBox" placeholder="Last Name"></asp:TextBox>
                </div>
                 <div class="form-group">
                    <label class="control-label" for="FirstNameTextBox">First Name</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="FirstNameTextBox" placeholder="First Name"></asp:TextBox>
                </div>
                    <div class="form-group">
                    <label class="control-label" for="FirstNameTextBox">Enrollment Date</label>
                    <asp:TextBox runat="server" TextMode="Date" CssClass="form-control" ID="EnrollmentDateTextBox" placeholder="EnrollmentDate"></asp:TextBox>
                </div>
                <div class="text-right">
                    <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" UseSubmitBehavior="false" CausesValidation="false" runat="server" OnClick="CancelButton_Click" />
                     <asp:Button Text="Cancel" ID="SubmitButton" CssClass="btn btn-primary btn-lg" CausesValidation="true" runat="server" OnClick="SubmitButton_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
