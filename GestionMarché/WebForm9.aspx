<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm9.aspx.cs" Inherits="GestionMarché.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="page-wrapper">
         <div class="container-fluid">

             <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h3 class="text-themecolor">Ordre Service</h3>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                            <li class="breadcrumb-item active">Ajout Ordre</li>
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
                                                    <label class="control-label">Reference Garantie</label>
                                                    <asp:DropDownlist ID="DropDownlist1" class="form-control " placeholder="Reference Garantie" runat="server"></asp:DropDownlist>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                         <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                  <div class="form-group ">
                                                    <label class="control-label">Entete</label>
                                                    <asp:TextBox ID="TextBox2" class="form-control " placeholder="Entete" runat="server"></asp:TextBox>
                                                </div>
                                                
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Sous Entete </label>
                                                    <asp:TextBox ID="TextBox3" class="form-control " placeholder="Sous Entete" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Ville</label>
                                                    <asp:TextBox ID="TextBox4" class="form-control "  placeholder="Ville" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Objet</label>
                                                    <asp:TextBox ID="TextBox6" class="form-control " placeholder="Objet" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
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
