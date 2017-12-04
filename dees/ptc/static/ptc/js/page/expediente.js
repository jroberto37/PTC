

function iniExpediente(){
    $("#cmdUpdExp").click(function (){
        var info = {
            mail: $("#mail").val(),
            depto:$("#depto").val(),
            plaza: $("#plaza").val(),
            academia: $("#academia").val()
        };
        info[$("#frmExpediente").find("input:hidden").attr("name")] = $("#frmExpediente").find("input:hidden").val();
        $.ajax({
            url:"upd_expediente/",
            method:"post",
            data: info
        }).done(function (res){
            alert(res);
        }).fail( function(res){
            alert(res);
        });
    });
}