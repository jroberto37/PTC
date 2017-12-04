

function iniDocencia(){
    $("#slcYear").change(function(){
        var anio = $(this).val();
        if(  anio != "-1"){
            var res = anio.split(" ");
            loadMaterias(res[0]);
            loadCursos(res[0]);
            loadTalleres(res[0]);
        }
    });
}


/*Métodos de matierias*/

function loadMaterias(anio){
    var info = {
        year:anio
    };
    info[$("#frmPeriodo").find("input:hidden").attr("name")] = $("#frmPeriodo").find("input:hidden").val();
    $.ajax({
        url:"materias/",
        method:"post",
        data: info
    }).done(function(res){
        $("#lstMaterias").html(res);
        actEvalMat();
    });
}

function actEvalMat(){
    var cmdEval = $(".cmd-msj-mat")
    for (x = 0; x < cmdEval.length; x++){
        $(cmdEval[x]).click(function (){
            curso = planeacion = programa = retroal = 0;
            if ($("#curso"+$(this).attr("mat")).prop("checked")){curso = 1}
            if ($("#planeacion"+$(this).attr("mat")).prop("checked")){planeacion = 1}
            if ($("#programa"+$(this).attr("mat")).prop("checked")){programa = 1}
            if ($("#retroal"+$(this).attr("mat")).prop("checked")){retroal = 1}
            var info = {
                'curso':curso,
                'planeacion': planeacion,
                'programa': programa,
                'retroal': retroal,
                'ingreso_est': $("#slcPInpEst"+$(this).attr("mat")).val(),
                'ingreso_prof': $("#slcPInpPro"+$(this).attr("mat")).val(),
                'est_insc': $("#slcNEst"+$(this).attr("mat")).val(),
                'est_apro': $("#slcNEstAp"+$(this).attr("mat")).val(),
                'promedio': $("#promedio"+$(this).attr("mat")).val(),
                'materia':$(this).attr("mat")
            };
            info[$("#frmDocencia").find("input:hidden").attr("name")] = $("#frmDocencia").find("input:hidden").val();
            $.ajax({
                url:"materia_eval/",
                method:"post",
                data: info
            }).done(function(res){
                alert(res);
            }).fail(function(){
                alert("Ocurrió un error");
            });
        });
    }
}

/*Métodos de cursos*/

function loadCursos(anio){
    var info = {
        year:anio
    };
    info[$("#frmPeriodo").find("input:hidden").attr("name")] = $("#frmPeriodo").find("input:hidden").val();
    $.ajax({
        url:"cursos/",
        method:"post",
        data: info
    }).done(function(res){
        $("#lstCursos").html(res);
        actCurso(anio);
    });

}

function actCurso(anio){
    //alert("Activando cursos");
    $("#frmCursosNue").on("submit",function (e){
        e.preventDefault();
        //var f = $(this);
        var dir_archivo = $("#fileEvidencia").val();
        var nombre_archivo = dir_archivo.split("\\");
        if($("#avance").val() == "-1" || $("#actividad").val() == "-1" || $("#asignatura").val() == "-1"){
            alert("Complete el formulario");
            return;
        }

        if(nombre_archivo[nombre_archivo.length-1].length > 40){
            alert("El nombre de su documento es demasiado largo contien " + nombre_archivo[nombre_archivo.length-1].length+ " leltas \n" + nombre_archivo[nombre_archivo.length-1] + "\nel máximo permitido es de 40 letras");
            return;
        }

        var formData = new FormData(document.getElementById("frmCursosNue"));
        formData.append("year", anio);
        var info = {
            year:anio
        };
        info[$("#frmCursosNue").find("input:hidden").attr("name")] = $("#frmCursosNue").find("input:hidden").val();
        $.ajax({
            url:"nuevo_curso/",
            type: "post",
            dataType: "html",
            data: formData,
            cache: false,
            contentType: false,
            processData: false
        }).done(function(res){
            alert(res);
            loadCursos(anio);
        });
    });
    actEliminarEvidCurso(anio);
}

function actEliminarEvidCurso(anio){
    var evidencias = $(".delEvidCur");
    for (x=0;x < evidencias.length; x++){
        $(evidencias[x]).click(function (){
            var resp = confirm("¿Realmente deseas eliminar la actividad?");
            if (resp){
                var info = {
                    evidencia:$(this).attr("evid")
                };
                info[$("#frmPeriodo").find("input:hidden").attr("name")] = $("#frmPeriodo").find("input:hidden").val();
                $.ajax({
                    url:"elimina_curso/",
                    method:"post",
                    data: info
                }).done(function(res){
                    alert(res);
                    loadCursos(anio);
                }).fail(function (){
                    alert("Ocurrió un error al momento de eliminar la actividad");
                });
            }
        });
    }
}

/*Métodos de talleres*/

function loadTalleres(anio){
    var info = {
        year:anio
    };
    info[$("#frmPeriodo").find("input:hidden").attr("name")] = $("#frmPeriodo").find("input:hidden").val();
    $.ajax({
        url:"talleres/",
        method:"post",
        data: info
    }).done(function(res){
        $("#lstTalleres").html(res);
        actTalleres(anio);
    });

}

function actTalleres(anio){
    $("#frmTalleres").on("submit",function (e){
        e.preventDefault();
        var dir_archivo = $("#fileTTaller").val();
        var nombre_archivo = dir_archivo.split("\\");

        if(nombre_archivo[nombre_archivo.length-1].length > 40){
            alert("El nombre de su documento es demasiado largo contien " + nombre_archivo[nombre_archivo.length-1].length+ " leltas \n" + nombre_archivo[nombre_archivo.length-1] + "\nel máximo permitido es de 40 letras");
            return;
        }

        var formData = new FormData(document.getElementById("frmTalleres"));
        formData.append("year", anio);
        $.ajax({
            url:"nuevo_taller/",
            type: "post",
            dataType: "html",
            data: formData,
            cache: false,
            contentType: false,
            processData: false
        }).done(function(res){
            alert(res);
            loadTalleres(anio);
        });
    });
}