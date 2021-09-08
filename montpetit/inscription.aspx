<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="inscription.aspx.cs" Inherits="montpetit.inscription" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">


            <div class="row">

                <div class="col-md-10 mx-auto">

                    <div class="card">

                        <div class="card-body">

                            <div class="row">

                                <div class="col">

                                </div>

                            </div>

                                    <h2 class="text-center text-danger">Inscription</h2>

                            <hr />

                           <%--  *************************--%>

                            <div class="row">

                                <div class="col-md-4 col-sm-4">

                                <div class="from-group">

                                    <label>Prénom</label>

                                    <asp:TextBox ID="Prenom" runat="server" CssClass="form-control"></asp:TextBox>

                                </div>

                            </div>

                                <div class="col-md-4 col-sm-4">

                                <div class="from-group">

                                    <label>Nom </label>

                                    <asp:TextBox ID="Nom" runat="server" CssClass="form-control"></asp:TextBox>

                                </div>

                            </div>

                             

                            </div>

                          <%--  *************************************--%>

                        
                         <div class="row">

                        <div class="col-md-4 col-sm-4">

                         <div class="from-group">

                             <label>Adresse</label>

                             <asp:TextBox ID="Adresse" runat="server" CssClass="form-control"></asp:TextBox>

                         </div>

                        </div>
                             <div class="col-md-4 col-sm-4">

                         <div class="from-group">

                             <label>Date de Naissance</label>

                             <asp:TextBox ID="DateNaiss" runat="server" CssClass="form-control"></asp:TextBox>

                         </div>

                        </div>

                                
                                 <div class="col-md-4 col-sm-4">

                                <div class="form-group">

                                    <label>Téléphone</label>

                                   <asp:TextBox ID="Telephone" runat="server" CssClass="form-control"></asp:TextBox>

                                </div>

                            </div>
                              </div>
                           <%-- *****************************************--%>

                  
                            <hr>


                          <%--  ****************************************************************--%>

                                 <div class="row">

                                 <div class="col">

                                   <center>

                          

                                   <span class="badge badge-pill badge-info">Choix de Cours </span>

                                       <hr />

                                 </center>

                        </div>

                     </div>



                          <%--  *********************************** Badge Completed ********************--%>

                            <div class="row">
                             <div class="col-md-4">
                            <div class="form-group">
                                 <label>Cours</label>

                                   <div class="form-group">

                            <asp:DropDownList ID="ListCours" AutoPostBack="True" onselectedindexchanged="CodeCours_SelectedIndexChanged" CssClass="form-control" runat="server">

                            </asp:DropDownList>

                        </div>

                            </div>

                        </div>
     
                    </div>

                    <hr />
                            <div class="row">

                                 <div class="col">

                                   <center>
                        

                                   <span class="badge badge-pill badge-info">Choix de Session </span>

                                       <hr />

                                 </center>

                        </div>

                     </div>

                              <div class="row">

                              <div class="col-md-4">

                            <div class="form-group">

                              

                                 <label>Session</label>

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
        
