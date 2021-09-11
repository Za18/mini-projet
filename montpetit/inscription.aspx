<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="inscription.aspx.cs" Inherits="montpetit.inscription" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">
    <style>
      body {
      background-color: #AFEEEE;
      }
    </style>

            <div class="row">

                <div class="col-md-10 mx-auto">

                    <div class="card">

                        <div class="card-body">

                            <div class="row">

                                <div class="col">

                                </div>

                            </div>
                            <h2>Inscription</h2>
                            <h5>Pour vous inscrire, merci de remplir le formulaire suivant</h5>

                            <hr />

                           <%--  *************************--%>

                            <div class="row">

                                <div class="col-md-4 col-sm-4">

                                <div class="from-group">

                                    <label>Prénom :</label>

                                    <asp:TextBox ID="Prenom" runat="server" CssClass="form-control"></asp:TextBox>

                                </div>

                            </div>

                                <div class="col-md-4 col-sm-4">

                                <div class="from-group">

                                    <label>Nom : </label>

                                    <asp:TextBox ID="Nom" runat="server" CssClass="form-control"></asp:TextBox>

                                </div>

                            </div>

                             

                            </div>

                          <%--  *************************************--%>

                        
                         <div class="row">

                        <div class="col-md-4 col-sm-4">

                         <div class="from-group">

                             <label>Adresse :</label>

                             <asp:TextBox ID="Adresse" runat="server" CssClass="form-control"></asp:TextBox>

                         </div>

                        </div>
                             <div class="col-md-4 col-sm-4">

                         <div class="from-group">

                             <label>Date de Naissance :</label>

                             <asp:TextBox ID="DateNaiss" runat="server" CssClass="form-control"></asp:TextBox>
                         </div>
                        </div>                               
                                 <div class="col-md-4 col-sm-4">

                                <div class="form-group">
                                   <label>Téléphone :</label>
                                   <asp:TextBox ID="Telephone" runat="server" CssClass="form-control"></asp:TextBox>

                                </div>

                            </div>
                              </div>
                           <%-- *****************************************--%>
                  
                            <hr>
                          <%--  ****************************************************************--%>
                                 <div class="row">
                                 <div class="col">
                                   <span class="badge badge-pill badge-info">Cours choisis </span>
                                       <hr />
                        </div>
                     </div>

                          <%--  *********************************** Badge Completed ********************--%>
                            <div class="row">
                             <div class="col-md-4">
                            <div class="form-group">
                                 
                                   <div class="form-group">
                            <asp:DropDownList ID="ListCours" AutoPostBack="True" onselectedindexchanged="CodeCours_SelectedIndexChanged" CssClass="form-control" runat="server">
                            </asp:DropDownList>
                        </div>
                            </div>
                        </div>
                    </div>
                    <hr />
                            <%--<div class="row">--%>
                                 <div class="row">
                                 <div class="col">
                                   <span class="badge bg-info text-dark"">Date début  </span>
                                       <hr />
                        </div>

                     </div>

                              <div class="row">
                              <div class="col-md-4">
                              <div class="form-group">
                       
                                   <div class="form-group">
                            <asp:DropDownList ID="ListSession" CssClass="form-control" runat="server">
                            </asp:DropDownList>
                        </div>
                            </div>
                        </div>     
                    </div>
                            <%--****************************4th Row Completd*********************--%>

                          <%--  ******************************************Badge Complted*****************--%>

                            <hr />
                            <div class="row">
                                <div class="col-md-2 mx-auto">
                                    <asp:Button ID="Button1" OnClick="Button1_Click1" runat="server" Text="S'inscrire" CssClass="btn btn-outline-danger"/>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
         </div>
        </asp:Content>
        
