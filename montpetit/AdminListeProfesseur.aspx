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
            DataKeyNames="Num_Prof"
                         
            onrowdeleting="prof_RowDeleting"
           
            GridLines="None"
            AllowPaging="true"
            PagerStyle-CssClass="pgr"
            AlternatingRowStyle-CssClass="alt"
            Width="70%" CssClass="table table-striped table-bordered table-hover">            <Columns>
                <asp:TemplateField HeaderText="Employee Name">
                    <ItemTemplate>    
                        <%#Eval("Nom_Prof")%>    
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtempname" runat="server" Text='<%#Eval("Nom_Prof") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
             <asp:TemplateField HeaderText="Prenom">
                <ItemTemplate>
                    <%#Eval("Prenom_Prof")%>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtempcode" runat="server" Text='<%#Eval("Prenom_Prof") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Telephone">
                <ItemTemplate>
                    <%#Eval("NumTel_Prof")%>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtempage" runat="server" Text='<%#Eval("NumTel_Prof") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
        <asp:TemplateField HeaderText="Adresse">
                <ItemTemplate>
                    <%#Eval("Adresse_Prof")%>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtempage" runat="server" Text='<%#Eval("Adresse_Prof") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="true" ControlStyle-CssClass="coolbutton"  HeaderText="Edit" />
            <asp:CommandField ShowDeleteButton="true" ControlStyle-CssClass="coolbutton"  HeaderText="Delete" />  
    </Columns>
</asp:GridView>
    
    </div>  
</div>



</asp:Content> 
