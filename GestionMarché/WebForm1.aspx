<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="GestionMarché.WebForm1" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="page-wrapper">
         <div class="container-fluid">

             <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h3 class="text-themecolor">Fourniture Etranger</h3>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                            <li class="breadcrumb-item active">Ajout Fourniture Etranger</li>
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
                                                    <label class="control-label">Numéro Fornuture Etranger</label>
                                                    <asp:TextBox ID="TextBox1" class="form-control" placeholder="Numéro Fornuture Etranger" runat="server"></asp:TextBox>
                                                   
                                                 </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group ">
                                                    <label class="control-label">Numéro Fournisseur Etranger</label>
                                                    <asp:DropDownlist ID="DropDownlist1" class="form-control " placeholder="Numéro Fournisseur Etranger" runat="server"></asp:DropDownlist>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                         <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group ">
                                                    <label class="control-label">Numéro Marché</label>
                                                    <asp:DropDownlist ID="DropDownlist2" class="form-control " placeholder="Numéro Marché" runat="server"></asp:DropDownlist>
                                                </div>
                                                
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Nom Fournisseur Etranger</label>
                                                    <asp:DropDownlist ID="DropDownlist3" class="form-control " placeholder="Numéro Fournisseur Etarnger" runat="server" ></asp:DropDownlist>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Designation</label>
                                                    <asp:TextBox ID="TextBox2" class="form-control "  placeholder="Designation" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Date Fourniture</label>
                                                    <asp:TextBox ID="TextBox3" class="form-control " placeholder="Date Fourniture" runat="server" TextMode="Date"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Delai de paiement</label>
                                                    <asp:TextBox ID="TextBox4" class="form-control " placeholder="Delai de paiement" runat="server" TextMode="Date"></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Prix Hort tax</label>
                                                    <asp:TextBox ID="TextBox5" class="form-control " placeholder="Prix Hort tax" runat="server" TextMode="SingleLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Prix Tcc</label>
                                                    <asp:TextBox ID="TextBox6" class="form-control " placeholder="Prix Tcc" runat="server" TextMode="SingleLine"></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                    </div>
                                      
                                    </div>
                                    <div >
                                        
                                         <asp:Label Id="label1" runat="server" Visible="false" class="tst4 btn btn-danger"></asp:Label>
                                    </div>
                                    <br />
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
