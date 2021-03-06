﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm14.aspx.cs" Inherits="GestionMarché.WebForm14" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="page-wrapper">
         <div class="container-fluid">

              <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h3 class="text-themecolor">Caution Definitiv</h3>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                            <li class="breadcrumb-item active">Ajout Caution</li>
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
                                                    <label class="control-label">Numéro Caution </label>
                                                    <asp:TextBox ID="TextBox1" class="form-control" placeholder="Numéro Caution" runat="server"></asp:TextBox>
                                                    
                                                 </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group ">
                                                    <label class="control-label">Numéro Marché</label>
                                                    <asp:DropDownList  ID="DropDownList1" class="form-control " placeholder="Numéro Marché" runat="server"></asp:DropDownList>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                         <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group ">
                                                    <label class="control-label">SOUSCRIPTEUR</label>
                                                    <asp:TextBox ID="TextBox2" class="form-control " placeholder="SOUSCRIPTEUR" runat="server"></asp:TextBox>
                                                </div>
                                                
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">ADRESSE</label>
                                                    <asp:TextBox ID="TextBox3" class="form-control " placeholder="ADRESSE" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">N° DE COMPTE</label>
                                                    <asp:TextBox ID="TextBox4" class="form-control "  placeholder="N° DE COMPTE" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">BANQUE </label>
                                                    <asp:TextBox ID="TextBox5" class="form-control " placeholder="BANQUE " runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Pour garantir </label>
                                                    <asp:TextBox ID="TextBox6" class="form-control " placeholder="Pour garantir" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                           
                                        <!--/row-->
                                        <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Le paiement de la somme de DHS</label>
                                                    <asp:TextBox ID="TextBox7" class="form-control " placeholder="le paiement de la somme de DHS" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            </div>
                                           <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Objet</label>
                                                    <asp:TextBox ID="TextBox8" class="form-control "  placeholder="Objet" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Date </label>
                                                    <asp:TextBox ID="TextBox9" class="form-control " placeholder="Date" runat="server" TextMode="Date"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                            <!--/span-->
                                    <div class="row">
                                     
                                        <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Ville </label>
                                                    <asp:TextBox ID="TextBox10" class="form-control " placeholder="Ville" runat="server" TextMode="SingleLine"></asp:TextBox>
                                                </div>
                                         </div>
                                    </div>
                                            
                                        <div >
                                        
                                         <asp:Label Id="Label1" runat="server" Visible="false" class="tst4 btn btn-danger"></asp:Label>
                                    </div>

                                    <div class="form-actions">  
                                        <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-success" OnClick="Button1_Click"  />
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
