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

}