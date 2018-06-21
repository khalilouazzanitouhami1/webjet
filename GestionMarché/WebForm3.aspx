﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="GestionMarché.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="page-wrapper">
         <div class="container-fluid">

             <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h3 class="text-themecolor">Document Archivé</h3>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                            <li class="breadcrumb-item active">Ajouter Atm</li>
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
                                                    <label class="control-label">Réference</label>
                                                    <asp:TextBox ID="TextBox1" class="form-control" placeholder="Réference" runat="server"></asp:TextBox>
                                                  
                                                 </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group ">
                                                    <label class="control-label">Réference de Marché</label>
                                                    <asp:DropDownlist ID="DropDownlis1" class="form-control " placeholder="Réference de Marché" runat="server"></asp:DropDownlist>
                                                </div>
                                            </div>
                                           </div>
                                            <!--/row-->
                                           <div class="row">
                                             <div class="col-md-6">
                                                 <div class="form-group">
                                                    <label class="control-label">Ville</label>
                                                    <asp:TextBox ID="TextBox2" class="form-control" placeholder="Ville" runat="server"></asp:TextBox>
                                                    <small class="form-control-feedback"> This is inline help </small> 
                                                 </div>
                                                
                                               </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Date</label>
                                                    <asp:TextBox ID="TextBox4" class="form-control " placeholder="Date" runat="server" TextMode="Date"></asp:TextBox>
                                                </div>
                                            </div>
                                               </div>

                                          <!--/row-->
                                           <div class="row">
                                             <div class="col-md-6">
                                                 <div class="form-group">
                                                    <label class="control-label">Nom profession</label>
                                                    <asp:TextBox ID="TextBox3" class="form-control" placeholder="Nom profession" runat="server"></asp:TextBox>
                                                    <small class="form-control-feedback"> This is inline help </small> 
                                                 </div>
                                                
                                               </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Non reception</label>
                                                    <asp:TextBox ID="TextBox5" class="form-control " placeholder="Non reception" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                               </div>

                                          <!--/row-->
                                           <div class="row">
                                             <div class="col-md-6">
                                                 <div class="form-group">
                                                    <label class="control-label">Nom societe</label>
                                                    <asp:TextBox ID="TextBox6" class="form-control" placeholder="Nom societe" runat="server"></asp:TextBox>
                                                    <small class="form-control-feedback"> This is inline help </small> 
                                                 </div>
                                                
                                               </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Nom article</label>
                                                    <asp:TextBox ID="TextBox7" class="form-control " placeholder="Nom article" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                               </div>

                                        <div class="row">
                                             <div class="col-md-6">
                                                 <div class="form-group">
                                                    <label class="control-label">Numero serire</label>
                                                    <asp:TextBox ID="TextBox8" class="form-control" placeholder="Numero serire" runat="server"></asp:TextBox>
                                                    <small class="form-control-feedback"> This is inline help </small> 
                                                 </div>
                                                
                                               </div>
                                               <!--/row-->
                                      
                                    </div>
                                    <div class="form-actions">  
                                        <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-success"  />
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
