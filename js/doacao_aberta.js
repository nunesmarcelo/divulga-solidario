
//  ========   MOSTRAR TODAS AS INSTITUIÇÕES ===============
function mostra_doacoes(){
   //var loading = '<tr><td colspan="5" style="text-align:center;font-size:2em" class="load_tr"><span class="glyphicon glyphicon-refresh loading" aria-hidden="true"></span></td></tr>';
    var loading = '<tr><td  COLSPAN="4 style="text-align:center;font-size:2em;" ><div class=" wavecontainer center-block"><div class="wave"></div><div class="wave"></div><div class="wave"></div><div class="wave"></div><div class="wave"></div></div></td></tr>'; 
   $('#conteudo_aberto')[0].innerHTML=loading;

    var dados = "texto="+$("#search").val();
  
    $.ajax({
        url: "Doacao.php?action=pegar",
        type: "POST",
        data: dados,
        success: recebe_todas_doacoes
    })
    
}

function recebe_todas_doacoes(result){
    //alert(result);
    result = JSON.parse(result);
    //alert(result);
    htmlString = "";
    $('#conteudo_aberto').html("");
    for (var i=0; i<result.length; i++){
            htmlString = "<tr><td class=\"text-center\"> <strong> <a href=\"instituicao.html#"+result[i].instituicao_id_instituicao+"\">"+result[i].nome_instituicao+"</strong></td>"+
                              "<td class=\"text-center\">"+result[i].nome+"</td>"+
                              "<td class=\"text-center\">"+result[i].quantidade+"</td>"+
                              "<td class=\"text-center\">"+result[i].detalhes+"</td>"+
                              "</tr>";   
        if(result[i].entregue == null || result[i].entregue == false){
              $("#conteudo_aberto")[0].innerHTML += htmlString; 
        }
    }
    if($('#conteudo_aberto').html()==""){
        $('#conteudo_aberto').html('<tr><td colspan="5" style="text-align:center;font-size:1.5em" class="load_tr">Nenhuma doação encontrada.</td></tr>');
    }    
}

// ======================================================== 
