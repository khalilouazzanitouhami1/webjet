<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm12.aspx.cs" Inherits="GestionMarché.WebForm12" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    
     <div class="page-wrapper">
         <div class="container-fluid">

             <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h3 class="text-themecolor">Decompte Dfinitiv</h3>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                            <li class="breadcrumb-item active">Ajout Decompte Definitiv</li>
                        </ol>
                          
              </div>
                    </div>

                   <!-- Row -->
            <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header bg-info">
                                <h4 class="m-b-0 text-white">Mise à Jour</h4>
                            </div>
                            <div class="card-body">
                                <form action="#">
                                    <div class="form-body">
                                        <h3 class="card-title">Saisie Info</h3>
                                        <hr>
                                        <div class="row p-t-20">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Numéro Decompte</label>
                                                    <asp:TextBox ID="TextBox1" class="form-control" placeholder="Numéro Decompte" runat="server"></asp:TextBox>
                                                   
                                                 </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group ">
                                                    <label class="control-label">Numéro Marché</label>
                                                    <asp:DropDownList ID="DropDownList1" class="form-control " placeholder="Numéro Marché" runat="server" TextMode="MultiLine"></asp:DropDownList>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                         <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group ">
                                                    <label class="control-label">Accepter Par</label>
                                                    <asp:TextBox ID="TextBox2" class="form-control " placeholder="Accepter Par" runat="server"></asp:TextBox>
                                                </div>
                                                
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Adresse</label>
                                                    <asp:TextBox ID="TextBox3" class="form-control " placeholder="Adresse" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Art</label>
                                                    <asp:TextBox ID="TextBox4" class="form-control "  placeholder="Art" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Compte Bancaire</label>
                                                    <asp:TextBox ID="TextBox5" class="form-control " placeholder="Compte Bancaire" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Date Decompte</label>
                                                    <asp:TextBox ID="TextBox6" class="form-control " placeholder="Date Decompte" runat="server" TextMode="Date"></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Dressé Par</label>
                                                    <asp:TextBox ID="TextBox7" class="form-control " placeholder="Dressé Par" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>

                                          <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Entete</label>
                                                    <asp:TextBox ID="TextBox8" class="form-control " placeholder="Entete" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                             <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Sous Entete</label>
                                                    <asp:TextBox ID="TextBox9" class="form-control " placeholder="Sous Entete" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>
                                      
                                          <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Ice</label>
                                                    <asp:TextBox ID="TextBox10" class="form-control " placeholder="Ice" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">IFD</label>
                                                    <asp:TextBox ID="TextBox11" class="form-control " placeholder="IFD" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Lot</label>
                                                    <asp:TextBox ID="TextBox12" class="form-control " placeholder="Lot" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Montant Decompte</label>
                                                    <asp:TextBox ID="TextBox13" class="form-control " placeholder="Montant Decompte" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Nom Société</label>
                                                    <asp:TextBox ID="TextBox14" class="form-control " placeholder="Nom Société" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Numéro inventaire</label>
                                                    <asp:TextBox ID="TextBox15" class="form-control " placeholder="Numéro Inventaire" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Numéro d'offre</label>
                                                    <asp:TextBox ID="TextBox16" class="form-control " placeholder="Numéro d'offre" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Objet</label>
                                                    <asp:TextBox ID="TextBox17" class="form-control " placeholder="Objet" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Patente</label>
                                                    <asp:TextBox ID="TextBox18" class="form-control " placeholder="Patente" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Prix Total</label>
                                                    <asp:TextBox ID="TextBox19" class="form-control " placeholder="Prix Total" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Prix Unitaire</label>
                                                    <asp:TextBox ID="TextBox20" class="form-control " placeholder="Prix Unitaire" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Quantité</label>
                                                    <asp:TextBox ID="TextBox21" class="form-control " placeholder="Quantité" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">RC</label>
                                                    <asp:TextBox ID="TextBox22" class="form-control " placeholder="RC" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Sous signé</label>
                                                    <asp:TextBox ID="TextBox23" class="form-control " placeholder="Sous signé" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Unité</label>
                                                    <asp:TextBox ID="TextBox24" class="form-control " placeholder="Unité" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                    </div>

                                    <div class="form-actions">  
                                        <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-success" OnClick="Button1_Click"  />
                                        <asp:Button ID="Button2" runat="server" Text="Cancel" class="btn btn-inverse" OnClick="Button2_Click"  />
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

          </div>
      </div>

</asp:Content>
