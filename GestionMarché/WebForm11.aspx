<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm11.aspx.cs" Inherits="GestionMarché.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    
     <div class="page-wrapper">
         <div class="container-fluid">

             <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h3 class="text-themecolor">Fournisseur</h3>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                            <li class="breadcrumb-item active">Ajout Fournisseur</li>
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
                                                    <label class="control-label">Reference Fourniture</label>
                                                    <asp:DropDownlist ID="DropDownlist1" class="form-control " placeholder="Reference Fourniture" runat="server"></asp:DropDownlist>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                         <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group ">
                                                    <label class="control-label">Nom</label>
                                                    <asp:TextBox ID="TextBox2" class="form-control " placeholder="Nom" runat="server"></asp:TextBox>
                                                </div>
                                                
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Société</label>
                                                    <asp:TextBox ID="TextBox3" class="form-control " placeholder="Société" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Desceiption</label>
                                                    <asp:TextBox ID="TextBox4" class="form-control "  placeholder="Description" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Telephone</label>
                                                    <asp:TextBox ID="TextBox5" class="form-control " placeholder="Telephone" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Email</label>
                                                    <asp:TextBox ID="TextBox6" class="form-control " placeholder="Email" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Tax</label>
                                                    <asp:TextBox ID="TextBox7" class="form-control " placeholder="Tax" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>

                                          <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">TVA</label>
                                                    <asp:TextBox ID="TextBox8" class="form-control " placeholder="TVA" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Prix</label>
                                                    <asp:TextBox ID="TextBox9" class="form-control " placeholder="Prix" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>
                                      
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
