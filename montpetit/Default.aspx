<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="montpetit._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
      body {
      background-color: #AFEEEE;
      }
    </style>
    <div class="jumbotron">
        <h1><i> Bienvenue </i> </h1>
        <p class="lead">Nous offfrons les meilleures formations </p>
            
        <p><a class="btn btn-primary btn-lg">En Apprendre plus &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>ASP.NET Débutant</h2>
            <p>
                Cours d'initiation en ASP.NET
            </p>
           
        </div>
        <div class="col-md-4">
            <h2>ASP.NET Intermédiaire</h2>
            <p>
                Cours offerts pour des personnes qui ont des connaissances de base en ASP.NET
            </p>
            
        </div>
        <div class="col-md-4">
            <h2>ASP.NET Avancé</h2>
            <p>
                Cours de perfectionnement
            </p>
           
        </div>
    </div>

</asp:Content>




