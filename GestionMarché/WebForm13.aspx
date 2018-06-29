<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm13.aspx.cs" Inherits="GestionMarché.WebForm13"  EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    
     <div class="page-wrapper">
         <div class="container-fluid">

             <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h3 class="text-themecolor">Decompte Provisoire</h3>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                            <li class="breadcrumb-item active">Ajout Decompte Provisoire/li>
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
                                                    <label class="control-label">Entete</label>
                                                    <asp:TextBox ID="TextBox2" class="form-control " placeholder="Entete" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                         <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group ">
                                                    <label class="control-label">Sous Entete</label>
                                                    <asp:TextBox ID="TextBox3" class="form-control " placeholder="Sous Entete" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                                
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Société</label>
                                                    <asp:TextBox ID="TextBox4" class="form-control " placeholder="Société" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>

                                         <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Adresse</label>
                                                    <asp:TextBox ID="TextBox5" class="form-control " placeholder="Adresse" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Numéro March"</label>
                                                    <asp:DropDownList ID="DropDownList1" class="form-control " placeholder="Numéro Marché" runat="server"></asp:DropDownList>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>

                                        <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Compte bancaire</label>
                                                    <asp:TextBox ID="TextBox6" class="form-control "  placeholder="Numéro Marché" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">RC</label>
                                                    <asp:TextBox ID="TextBox7" class="form-control " placeholder="RC" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                            </div>

                                            <div class="row">
                                              <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Patente</label>
                                                    <asp:TextBox ID="TextBox8" class="form-control " placeholder="Patente" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">CNSS</label>
                                                    <asp:TextBox ID="TextBox9" class="form-control " placeholder="CNSS" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    
                                        </div>
                                        <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">IFS</label>
                                                    <asp:TextBox ID="TextBox10" class="form-control " placeholder="IFS" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">ICE</label>
                                                    <asp:TextBox ID="TextBox11" class="form-control " placeholder="ICE" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>

                                          <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Année</label>
                                                    <asp:TextBox ID="TextBox12" class="form-control " placeholder="Année" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Chapitre</label>
                                                    <asp:TextBox ID="TextBox13" class="form-control " placeholder="Chapitre" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>
                                      
                                          <!--/row-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Article</label>
                                                    <asp:TextBox ID="TextBox14" class="form-control " placeholder="Article" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Paragraphe</label>
                                                    <asp:TextBox ID="TextBox15" class="form-control " placeholder="Paragraphe" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Montant Decompte</label>
                                                    <asp:TextBox ID="TextBox16" class="form-control " placeholder="Montant Decompte" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Date </label>
                                                    <asp:TextBox ID="TextBox17" class="form-control " placeholder="Date" runat="server" TextMode="Date"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Objet</label>
                                                    <asp:TextBox ID="TextBox18" class="form-control " placeholder="Objet" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Lot</label>
                                                    <asp:TextBox ID="TextBox19" class="form-control " placeholder="Lot" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Art</label>
                                                    <asp:TextBox ID="TextBox20" class="form-control " placeholder="Art" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Unité</label>
                                                    <asp:TextBox ID="TextBox21" class="form-control " placeholder="Unité" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>


                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Qunatité</label>
                                                    <asp:TextBox ID="TextBox22" class="form-control " placeholder="Qantité" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Numéro Invontaire</label>
                                                    <asp:TextBox ID="TextBox23" class="form-control " placeholder="Numéro Invontaire" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Prix Unitaire</label>
                                                    <asp:TextBox ID="TextBox24" class="form-control " placeholder="Prix Unitaire" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Tva</label>
                                                    <asp:TextBox ID="TextBox25" class="form-control " placeholder="Tva" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Prix Totale</label>
                                                    <asp:TextBox ID="TextBox26" class="form-control " placeholder="Prix Totale" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Nature Des Depenses</label>
                                                    <asp:TextBox ID="TextBox27" class="form-control " placeholder="Nature Des Depenses" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Depense Faites</label>
                                                    <asp:TextBox ID="TextBox28" class="form-control " placeholder="Depense Faites" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Retenu Garantie</label>
                                                    <asp:TextBox ID="TextBox29" class="form-control " placeholder="Retenu Garantie" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Reste</label>
                                                    <asp:TextBox ID="TextBox30" class="form-control " placeholder="Reste" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                          
                                        <!--/row-->
                                       
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">Dressé par</label>
                                                    <asp:TextBox ID="TextBox31" class="form-control " placeholder="Dressé par " runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <!--/span-->
                                    </div>

                                        
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="control-label">journal sous le n°</label>
                                                    <asp:TextBox ID="TextBox32" class="form-control " placeholder="journal sous le n°" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                         
                                    </div>

                                    </div>
                                    <div class="form-actions">  
                                        <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-success"  />
                                        <asp:Button ID="Button2" runat="server" Text="Cancel" class="btn btn-inverse"/>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

          </div>
      </div>
</asp:Content>
