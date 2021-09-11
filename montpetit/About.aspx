<%@ Page Title="A Propos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="montpetit.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
      body {
      background-color: #AFEEEE;
      }
    </style>
    <h2><%: Title %>.</h2>
    <h3>Your application description .</h3>
    <p>Use this area to provide additional information.</p>
</asp:Content>
