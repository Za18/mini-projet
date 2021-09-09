<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master"Title="Administration" CodeBehind="AdminListeEtudiant.aspx.cs" Inherits="montpetit.AdminListeEtudiant" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">

<div class="sidebar">
    <div class="wrapper"> 
    <a >
        <div id="line-title" >Liste des Etudiants</div>
    </a>
    <a runat="server" href="~/AdminListeProfesseur">
        <div>Liste des professeurs</div>
    </a>
    </div>  
</div>
<div class="row">
    <div class="col-lg-12">
<asp:gridview id="EtudiantsGridView"
        autogeneratecolumns="False"
        emptydatatext="No data available."
        allowpaging="True"
        runat="server"
    Width="100%" CssClass="table table-striped table-bordered table-hover">
        <Columns>
            <asp:BoundField DataField="nom" HeaderText="Nom" />
            <asp:BoundField DataField="prenom" HeaderText="Prenom" />
            <asp:BoundField DataField="matricule" HeaderText="Matricule" />
            <asp:BoundField DataField="cours" HeaderText="cours" />
            <asp:BoundField DataField="description" HeaderText="Description" />
            <asp:BoundField DataField="session" HeaderText="Session" />
            <asp:BoundField DataField="debut" DataFormatString = "{0:dd/MM/yyyy}" HeaderText="Debut Session" />
            <asp:BoundField DataField="fin" DataFormatString = "{0:dd/MM/yyyy}" HeaderText="Fin Session" />
        </Columns>
    </asp:gridview>`
</div>
</div>
</asp:Content> 

