<%@ Page Title="Default" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPLesson4.WebForm1" %>
<%@ Register Src="~/UserControls/jumbotron.ascx" TagName="Jumbotron" TagPrefix="bs3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <bs3:jumbotron ID="Jumbotron1" runat="server">
        
    </bs3:jumbotron>
</asp:Content>
