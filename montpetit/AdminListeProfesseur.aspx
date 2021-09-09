<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminListeProfesseur.aspx.cs" MasterPageFile="~/Site.Master" Title="Administration" Inherits="montpetit.AdminListeProfesseur" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">


    <div class="sidebar">
    <div class="wrapper"> 
    <a href="~/AdminListeEtudiant" runat="server">
        <div >Liste des Etudiants</div>
    </a>
    <a >
        <div id="line-title">Liste des professeurs</div>
    </a>
    </div>  
</div>
    <div class="row">
    <div class="col-lg-12">
    <asp:GridView ID="prof" runat="server"         
            AutoGenerateColumns="False"         
           
            GridLines="None"
            AllowPaging="true"
            PagerStyle-CssClass="pgr"
            AlternatingRowStyle-CssClass="alt"
            Width="70%" CssClass="table table-striped table-bordered table-hover"> 
            <Columns>
            <asp:BoundField DataField="Nom_Prof" HeaderText="Nom" />
            <asp:BoundField DataField="Prenom_Prof" HeaderText="Prénom" />
            <asp:BoundField DataField="NumTel_Prof" HeaderText="Téléphone" />
            <asp:BoundField DataField="Adresse_Prof" HeaderText="Adresse" />
    </Columns>
</asp:GridView>
    
    </div>  
</div>



</asp:Content> 
