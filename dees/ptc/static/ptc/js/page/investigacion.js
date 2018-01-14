function iniInvestigacion(){
        $("#slcYear").change(function(){
        var anio = $(this).val();
        if(  anio != "-1"){
            var res = anio.split(" ");
            loadProyecto(res[0]);
        }
    });
}

/*Métodos de proyecto*/

function loadProyecto(anio){
    var info = {
        year:anio
    };
    info[$("#frmPeriodo").find("input:hidden").attr("name")] = $("#frmPeriodo").find("input:hidden").val();
    $.ajax({
        url:"proinv/",
        method:"post",
        data: info
    }).done(function(res){
        $("#lstProyectosInv").html(res);
        actProyecto(anio);
    });

}

function actProyecto(anio){
    $("#frmProInv").on("submit",function (e){
        e.preventDefault();
        var dir_archivo = $("#fileProyInv").val();
        var nombre_archivo = dir_archivo.split("\\");

        if(nombre_archivo[nombre_archivo.length-1].length > 40){
            alert("El nombre de su documento es demasiado largo contien " + nombre_archivo[nombre_archivo.length-1].length+ " leltas \n" + nombre_archivo[nombre_archivo.length-1] + "\nel máximo permitido es de 40 letras");
            return;
        }

        var profesores = "";
        var listaprof = $("#slcTProfPro :selected");
        for (t = 0; t < listaprof.length; t++){
            profesores+= $(listaprof[t]).html();
            if(t < (listaprof.length -1)){profesores+=", ";}
        }
        var formData = new FormData(document.getElementById("frmProInv"));
        formData.append("year", anio);
        formData.append("listaprof", profesores);
        $.ajax({
            url:"nuevo_proinv/",
            type: "post",
            dataType: "html",
            data: formData,
            cache: false,
            contentType: false,
            processData: false
        }).done(function(res){
            alert(res);
            loadProyecto(anio);
        });
    });
    actEliminarProyectoInv(anio);
}


function actEliminarProyectoInv(anio){
    var evidencias = $(".delProInv");
    for (x=0;x < evidencias.length; x++){
        $(evidencias[x]).click(function (){
            var resp = confirm("¿Realmente deseas eliminar el proyecto?");
            if (resp){
                var info = {
                    evidencia:$(this).attr("evid")
                };
                info[$("#frmProInv").find("input:hidden").attr("name")] = $("#frmProInv").find("input:hidden").val();
                $.ajax({
                    url:"elimina_proinv/",
                    method:"post",
                    data: info
                }).done(function(res){
                    alert(res);
                    loadProyecto(anio);
                }).fail(function (){
                    alert("Ocurrió un error al momento de eliminar el proyecto");
                });
            }
        });
    }
}