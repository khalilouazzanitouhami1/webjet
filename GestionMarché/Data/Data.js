$(document).ready(function () {

    LoadTable();


    $("#SaveEmployeButton").click(function (event) {
        event.preventDefault();
        $.ajax({
            method: "POST",
            url: "Handler/SaveMarcheHandler1.ashx",
            dataType: "json",
            async: true,
            data: {

                    numMarche: $("#numMarche").val(),
                    nom: $("#nom").val(),
                    objet: $("#objet").val(),
                    dateDebut: $("#dateDebut").val(),
                    delaiExecution: $("#delaiExecution").val(),
                    ville: $("#ville").val(),
                    montant: $("#montant").val(),

            },
            success: function (result) {
                switch (result.code) {
                    case "OK":
                        //  $('#Customer-Info').DataTable().ajax.reload(); //refresh the datatable to reflect the changes                         
                        $('#addEditCustomer').modal('hide'); //hide the popup window
                        // alert("Customer saved correctly.");
                        // if true (1)


                        $('#datatable').DataTable().ajax.reload();



                        break;
                    case "Not Valid":
                        alert("Server received invalid information.");
                        break;
                    default:
                        alert("Unknown server issue." + result.code);
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert("AJAX Save customer error" + thrownError);
            }
        });

    });




});


$(document).on('click', '.DeleteButton', function (event) {
    event.preventDefault();
    if (confirm('This action will delete the selected record. Plese click OK to confirm.')) {
        var node = $(this);
        var numMarche = node.attr("data-name");


        //load from database
        $.ajax({
            method: "POST",
            url: "Handler/DeleteMarcheHandler1.ashx",
            dataType: "json",
            async: true,
            data: {
                numMarche: numMarche
            },
            success: function (result) {
                switch (result.code) {
                    case "OK":
                        $('#datatable').DataTable().ajax.reload();
                        alert("Record deleted successfully.");
                        break;
                    case "Not valid":
                        alert("Invalid server information.");
                        break;
                    case "NotFound":
                        $('#datatable').DataTable().ajax.reload();
                        alert("Record not found.");
                        break;
                    case "Error":
                        alert("Handler Error" + result.data);
                        break;
                    default:
                        alert("Unknown server issue" + result.code);
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert("Load User AJAX Error:" + thrownError);
            }
        });
    }
});
function LoadTable() {

    var table = $('#datatable').DataTable({


        columns: [
            { 'data': 'numMarche' },
            { 'data': 'nom' },
            { 'data': 'objet' },
            { 'data': 'dateDebut' },
            { 'data': 'delaiExecution' },
            { 'data': 'ville' },
            { 'data': 'montant' },
            {
                "data": "numMarche",

                "width": "20%",
                'render': function (data, type, full, meta) { //this column is redefinied to show the action buttons
                    return '<div class="btn-toolbar"><button class="btn btn-sm btn-primary EditButton" data-name="' + data + '" >Edit</button><button class="tst4 btn btn-sm btn-danger DeleteButton" data-name="' + data + '">Delete</button></div>';
                }
            },

        ],


        bServerSide: true,
        sAjaxSource: 'Handler/MarcheDataHandler1.ashx'


    });

}
$(document).on('click', '.EditButton', function (event) //any element with the class EditButton will be handled here
{
    event.preventDefault(); //Stops the current handled event to reroute through this ebent
    var node = $(this); //current element handled
    var numMarche = node.attr("data-name");

    // $("#rowHide").show();
    var query = $('#rowHide');
    query.show();

    // $("#reference").val(refe);

    //ClearForm();
    //load from database
    $.ajax({
        method: "POST",
        url: "Handler/UpdateMarcheHandler1.ashx",

        //sAjaxSource: 'Handler1.ashx',
        dataType: "json",
        async: true,
        data: {
            numMarche: numMarche
        },
        success: function (result) {

            switch (result.code) {
                case "OK":
                   

                    $("#numMarche").val(result.data.numMarche);
                    $("#nom").val(result.data.nom);
                    $('#objet').val(result.data.objet);
                    $("#dateDebut").val(result.data.dateDebut);
                    $("#delaiExecution").val(result.data.delaiExecution);
                    $("#ville").val(result.data.ville);
                    $("#montant").val(result.data.montant);

                    break;
                case "NotFound":
                    $('#datatable').DataTable().ajax.reload();
                    alert("Record not found.");
                    break;
                case "Error":
                    alert("Handler Error" + result.data);
                    break;
                default:
                    alert("Unknown server issue" + result.code);
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            alert("Load User AJAX Error:" + thrownError);
        }
    });
});

