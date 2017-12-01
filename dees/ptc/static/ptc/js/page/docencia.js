

function iniDocencia(){
    $("#slcYear").change(function(){
        var anio = $(this).val();
        if(  anio != "-1"){
            var res = anio.split(" ");
            loadMaterias(res[0]);
        }
    });
}

function loadMaterias(anio){
    var info = {
        year:anio
    };
    info[$("#frmDocencia").find("input:hidden").attr("name")] = $("#frmDocencia").find("input:hidden").val();
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