window.onload = ini;

function ini(){

    $("#menExpediente").click(function (){
        $.ajax({
            url:"expediente",
            method:"get"
        }).done(function (res){
            $("#ICanvas").html(res);
        }).fail(function (res){
            alert("Ocurrio un error ");
            //location.reload();
        });
    });

    $("#menDocenciaInforme").click(function (){
        $.ajax({
            url:"docencia",
            method:"get"
        }).done(function (res){
            $("#ICanvas").html(res);
        }).fail(function (res){
            alert("Ocurrio un error ");
            //location.reload();
        });
    });

    $("#menProInvestiagacion").click(function (){
        $.ajax({
            url:"investigacion",
            method:"get"
        }).done(function (res){
            $("#ICanvas").html(res);
        }).fail(function (res){
            alert("Ocurrio un error ");
            //location.reload();
        });
    });

    $("#menSalir").click(function (){
        $.ajax({
            url:"salir",
            method:"get"
        }).done(function (res){
            if(res == 'ok_session_close'){
                location.reload();
            }else if( res == 'err_session_close'){
                alert("Ocurrion un error al momento de cerrar la sesion");
            }
        }).fail(function (res){
            alert("Ocurrio un error ");

        });
    });

}