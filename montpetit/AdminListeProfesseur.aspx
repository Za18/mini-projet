<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminListeProfesseur.aspx.cs" MasterPageFile="~/Site.Master" Title="Administration" Inherits="montpetit.AdminListeProfesseur" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">
    <style>
      body {
      background-color: #AFEEEE;
      }
    </style>

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
    <asp:GridView ID="GridView1" runat="server"         
            AutoGenerateColumns="False"         
            DataKeyNames="Num_Prof"
            OnRowCommand="GridView1_RowCommand" OnRowEditing="OnRowEditing" 
            GridLines="None"
            AllowPaging="true"
            PagerStyle-CssClass="pgr"
            AlternatingRowStyle-CssClass="alt"
            Width="70%" CssClass="table table-striped table-bordered table-hover"> 
            <Columns>  
                         <asp:TemplateField HeaderText="Nom">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblNom" Text='<%#Eval("Nom_Prof") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox runat="server" ID="txtNom" Text='<%#Eval("Nom_Prof") %>'></asp:TextBox>
                            </EditItemTemplate>
                         </asp:TemplateField>

                         <asp:TemplateField HeaderText="Prénom">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblPrenom" Text='<%#Eval("Prenom_Prof") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox runat="server" ID="txtPrenom" Text='<%#Eval("Prenom_Prof") %>'></asp:TextBox>
                            </EditItemTemplate>
                         </asp:TemplateField>

                         <asp:TemplateField HeaderText="Telephone">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblTel" Text='<%#Eval("NumTel_Prof") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox runat="server" ID="txtTel" Text='<%#Eval("NumTel_Prof") %>'></asp:TextBox>
                            </EditItemTemplate>
                         </asp:TemplateField>

                         <asp:TemplateField HeaderText="Adresse">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblAdr" Text='<%#Eval("Adresse_Prof") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox runat="server" ID="txtAdr" Text='<%#Eval("Adresse_Prof") %>'></asp:TextBox>
                            </EditItemTemplate>
                         </asp:TemplateField>




                        <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton Text="Edit" runat="server" CommandName="Edit" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:LinkButton  commandname='Edt' text='Edit' commandargument='<%#Eval("Num_Prof") %>' runat="server"/>
                            <asp:LinkButton Text="Cancel" runat="server" OnClick="OnCancel" />
                        </EditItemTemplate>
                        </asp:TemplateField>
                     </Columns>
</asp:GridView>
    
    </div>  
</div>



</asp:Content> 
