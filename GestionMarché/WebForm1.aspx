<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="GestionMarché.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/jquery.dataTables.min.css"/>
    <script  src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>

    <div class="page-wrapper">
        <div class="container-fluid">

             <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h3 class="text-themecolor">Marché</h3>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                            <li class="breadcrumb-item active">Gérer Marché</li>
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
                              <div class="form-body">
                                  <h3 class="card-title">Saisie Info</h3>
                                  <hr>
                                  <div class="table-responsive">
                                        <table id="datatable" class="table m-t-30 table-hover contact-list" data-page-size="10" width="100%" >
                                            <thead>
                                                <tr>
                                                    <th>Num Marché</th>
                                                    <th>Nom</th>
                                                    <th>Objet</th>
                                                    <th>Date Debut</th>
                                                    <th>Delai Execution</th>
                                                    <th>Ville</th>
                                                    <th>Montant</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                         </table>
                                    </div>
                              </div>
                         </div>
                    </div>
                </div>
            </div>

            <div class="row hide" id="rowHide">
                  <div class="col-lg-12">
                      <div class="card">
                           <div class="card-header bg-info">
                                <h4 class="m-b-0 text-white">Modifier Marché</h4>
                            </div>
                             <div class="card-body">
                                  <form action="#">
                                      <div class="form-body">
                                           <h3 class="card-title">Saisie Info</h3>
                                           <hr>
                                            <div class="form-group m-t-40 row">
                                                <label for="example-text-input" class="col-2 col-form-label">Num Marché</label>
                                                <div class="col-10">
                                                    <input class="form-control" type="text" value="numéro du marché" id="numMarche" name="numMarche" disabled>
                                                </div>
                                            </div>

                                            <div class="form-group m-t-40 row">
                                                <label for="example-text-input" class="col-2 col-form-label">Nom </label>
                                                <div class="col-10">
                                                    <input class="form-control" type="text" value="nom du marché" id="nom" name="nom" >
                                                </div>
                                            </div>

                                            <div class="form-group m-t-40 row">
                                                <label for="example-text-input" class="col-2 col-form-label">Objet </label>
                                                <div class="col-10">
                                                    <input class="form-control" type="text" value="objet du marché" id="objet" name="objet" >
                                                </div>
                                            </div>

                                           <div class="form-group m-t-40 row">
                                                <label for="example-text-input" class="col-2 col-form-label">Date Début </label>
                                                <div class="col-10">
                                                    <input class="form-control" type="text" value="Date Début du marché" id="dateDebut" name="dateDebut" >
                                                </div>
                                          </div>

                                          <div class="form-group m-t-40 row">
                                                <label for="example-text-input" class="col-2 col-form-label">Délai D'execution </label>
                                                <div class="col-10">
                                                    <input class="form-control" type="text" value="Délai D'execution du marché" id="delaiExecution" name="delaiExecution" >
                                                </div>
                                          </div>

                                          <div class="form-group m-t-40 row">
                                                <label for="example-text-input" class="col-2 col-form-label">Ville </label>
                                                <div class="col-10">
                                                    <input class="form-control" type="text" value="ville" id="ville" name="ville" >
                                                </div>
                                          </div>

                                          <div class="form-group m-t-40 row">
                                                <label for="example-text-input" class="col-2 col-form-label">montant  </label>
                                                <div class="col-10">
                                                    <input class="form-control" type="text" value="montant" id="montant" name="ville" >
                                                </div>
                                          </div>

                                         <div class="form-actions">
                                            <button type="submit" class="tst3 btn btn-success" id="SaveEmployeButton" > <i class="fa fa-check"></i> Save</button>
                                            <button type="button" class="btn btn-inverse">Cancel</button>
                                         </div>



                                           


                                      </div>
                                  </form>
                             </div>



                      </div>
                   </div>
            </div>







        </div>
    </div>
     <script src="Data/data.js"></script>
    <script src="assets/node_modules/toast-master/js/jquery.toast.js"></script>
    <script src="mini-sidebar/js/toastr.js"></script>


</asp:Content>
