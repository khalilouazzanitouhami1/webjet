<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="GestionMarché.WebForm2" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="page-wrapper">
         <div class="container-fluid">

             <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h3 class="text-themecolor">Marché</h3>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                            <li class="breadcrumb-item active">Ajout Marché</li>
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
                                                    <label class="control-label">Numéro Marché</label>
                                                    <asp:TextBox ID="TextBox1" class="form-control" placeholder="Numéro Marché" runat="server"></asp:TextBox>
                                                    
                                                 </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group ">
                                                    <label class="control-label">Nom</label>
                                                    <asp:TextBox ID="TextBox2" class="form-control " placeholder="Nom" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group ">
                                                    <label class="control-label">Objet</label>
                                                    <asp:TextBox ID="TextBox3" class="form-control " placeholder="Objet" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                                
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Date Début</label>
                                                    <asp:TextBox ID="TextBox4" class="form-control " placeholder="Date Début" runat="server" TextMode="Date"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Delai D'execution</label>
                                                    <asp:TextBox ID="TextBox5" class="form-control "  TextMode="Date" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Ville</label>
                                                    <asp:TextBox ID="TextBox6" class="form-control " placeholder="Ville " runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Montant</label>
                                                    <asp:TextBox ID="TextBox7" class="form-control " placeholder="Monatant" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                           
                                        </div>
                                        <!--/row-->
                                      
                                    </div>

                                    <div >
                                        <asp:Label ID="Label1" runat="server" Visible="false" class="tst4 btn btn-danger"></asp:Label >
                                    </div>

                                     <br />
                                    <div class="form-actions">  
                                        <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-success" OnClick="Button1_Click1"  />
                                        <asp:Button ID="Button2" runat="server" Text="Cancel" class="btn btn-inverse"  />
                                        
                                    </div>
                                    
                                </form>
                            </div>
                        </div>
                    </div>
                </div>




         </div>
    </div>



</asp:Content>
