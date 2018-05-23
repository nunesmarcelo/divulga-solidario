itemSelecionado = ""; //GLOBAL QUE RECEBE A INSTITUIÇÃO QUE O CLIENTE ESTÁ VISUALIZANDO (PARA EDITAR OU EXCLUIR.)

 

$(document).ready(function(){
    mostra_doacoes();
    if(!isNaN(document.location.hash.substr(1)) && document.location.hash.substr(1)!=""){
        mostra_item(document.location.hash.substr(1));
    } 

    $('#modalVisualizar, #modalCadastro').on('hidden.bs.modal', function () {
         document.location.replace("#");
    });

    $('#formulario_doacao').submit(inserir_doacao2);
    $('#formulario_contribuinte').submit(cadastra_contribuinte);
    

});

var k =0;
function do_search(){
    clearTimeout(k);
    k = setTimeout(function(){mostra_doacoes()},500);
}


//MOSTRAR DOAÇÕES FICA EM DOAÇÃO_ABERTA E DOAÇÃO_AGUARDANDO.JS

// ============== MOSTRAR SÓ UMA INSTITUIÇÃO (LIGADO À FUNÇÃO ACIMA) ================= 

function mostra_item(id,show){
     if(typeof(show)=="undefined" || show==true) $("#modalVisualizar").modal("show");
     $.ajax({
      url: "Doacao.php?action=pegar&id_item="+id,
      success: recebe_um_item

    });

}



function recebe_um_item(result){

    result = JSON.parse(result);

    $("#botao_doar").prop( "disabled", false ).html("<span class=\"glyphicon  glyphicon-heart-empty\" aria-hidden=\"true\"> Doar</span>").addClass("btn-primary").removeClass("btn-warning");;
    $("#modal_visual_nome_instituicao").html("<a href=\"instituicao.html#"+result[0].instituicao_id_instituicao+"\">"+result[0].nome_instituicao+"</a>");
    $('#modal_visual_descricao').html(result[0].descricao_doacao);
    $('#modal_visual_item_nome').html(result[0].nome);
    $("#modal_visual_item_quantidade").html(result[0].quantidade);
    $("#modal_visual_item_descricao").html(result[0].descricao);

    if(result[0].imagem_instituicao.localeCompare("NULL") != 0){
        $("#modal_visual_imagem_instituicao").html('<img src="upload/'+result[0].imagem_instituicao+'" class="img-responsive img-circle"> ');
    }
    else{
        $("#modal_visual_imagem_instituicao").html("");
    }

    if(result[0].contribuinte_id_contribuinte != null){
        htmlString = " <hr><p style=\"color:#009;background-color: #eee;padding: 20px; margin:-15px;\">Contribuinte</p><hr>"+
                                "<p><strong>Nome:</strong>"+
                                "<span id=\"modal_visual_contribuinte_nome\" class=\"text-capitalize\">"+result[0].contribuinte_nome+"</span>"+
                                "</p><p><strong>Telefone:</strong>"+
                                "<span id=\"modal_visual_contribuinte_telefone\" class=\"text-capitalize\">"+result[0].contribuinte_telefone+"</span>"+
                                "</p><p><strong>Email:</strong>"+
                                "<span id=\"modal_visual_contribuinte_telefone\">"+result[0].contribuinte_email+"</span></p>"+
                      '<hr><p style=\"color:#009;background-color: #eee;padding: 20px; margin:-15px;\">Data limite para entrega:</p><hr>'+
                                "<p>"+result[0].data_marcada+"</p>";
        $("#conteudo_contribuinte").html(htmlString);
    }
    
    itemSelecionado = result;
     $("#excluir_instituicao").click(function(){excluir_item()});
     $("#botao_doar").click(function(){doar1()});

}

// =========================================================


// =============== INSERIR/EDITAR INSTITUICAO NO BD =======================


//QUANDO O BOTÃO DO MODAL É CLICADO
function add_doacao(operacao){  

    $('#cadastro_instituicao').html("<option value=\"c\">Carregando...</option>").prop("disabled", true).selectpicker('refresh').selectpicker("val","c");
    if(operacao.localeCompare("inserir") == 0){
        listar_instituicoes_select();
    }
    if(operacao.localeCompare("editar") == 0){ 
      $("#titulo_cadastro").text("Editar Item");  
      $("#enviar").text("Salvar Alterações");  
      //$("#cadastro_instituicao").val(itemSelecionado[0].nome_instituicao);
      
      listar_instituicoes_select(itemSelecionado[0].instituicao_id_instituicao);
      $('#cadastro_instituicao').prop("disabled", false).selectpicker('refresh');
      $('#cadastro_instituicao').selectpicker("val", );
      $("#cadastro_descricao").val(itemSelecionado[0].descricao_doacao);
      $("#cadastro_item").val(itemSelecionado[0].nome);
      $("#cadastro_descricao_item").val(itemSelecionado[0].descricao);
      $("#cadastro_quantidade").val(itemSelecionado[0].quantidade);
      $("#cadastro_id_item").val(itemSelecionado[0].id_item);
    }

     $("#modalCadastro").modal("show");
}

//CARREGA AS INSTITUIÇÕES DO BANCO E COLOCA NO SELECT PRA CRIAR A DOAÇÃO.
function listar_instituicoes_select(value){
    console.log("Listando instituições no select!");
    $.ajax({
        url:"Instituicao.php?action=pegar",
        success: function(result){
            result = JSON.parse(result);
            $("#cadastro_instituicao").html("");
            for(var i=0;i<result.length;i++){
                $("#cadastro_instituicao")[0].innerHTML += "<option value=\""+result[i].id_instituicao+"\">"+result[i].id_instituicao+" - " +result[i].nome+", "+result[i].cidade+"</option>";
            }
            $("#cadastro_instituicao").prop("disabled",false).selectpicker('refresh');
            if(typeof(value)!="undefined"){
                  $("#cadastro_instituicao").selectpicker("val",value);
            }
        }
    })
}

//QUANDO O FORMULÁRIO É SUBMETIDO
function inserir_doacao2(e){      
      e.preventDefault(); 
      var form = $("#formulario_doacao").serialize();
      
      $.ajax({
         url: "Doacao.php?action=inserir",
         data: form,
         type: 'POST' ,
         success: trata_inserir,
         error: trata_inserir,
      }); 
}

/*
//QUANDO O FORMULÁRIO É ENVIADO
function inserir_doacao(){
      
      var form = $("#formulario_doacao").serialize();
      
      $.ajax({
         url: "Doacao.php?action=inserir",
         data: form,
         type: 'POST' ,
         success: trata_inserir,
         error: trata_inserir,
      }); 

}
*/

function trata_inserir(result){
    //alert(result);
    result = JSON.parse(result);
    if(result[0].resultado == 'error'){
      show_info("Erro!","Houve algum erro para adicionar a doação. <br> Se o erro persistir contate o administrador. ");
    }
    else{
      console.log(result[0].resultado);
      $("#modalCadastro").modal("hide");
      $("#modalVisualizar").modal("hide");
      mostra_doacoes();
      mostra_item(itemSelecionado[0].id_item,false);
    }
}


// =========================================================

// ============== EXCLUIR INSTITUICAO =========================

//QUANDO CLICADO NO BOTÃO DE EXCLUIR
function excluir_item(){
    $("#modal_excluir_nome").html(itemSelecionado[0].nome);
    $("#modal_excluir_id").val(itemSelecionado[0].id_item);
    $("#modalExcluir").modal("show");
    $("#excluir_confirma").click(function(){excluir_confirmado();})
}

//QUANDO CONFIRMADO
function excluir_confirmado(){
    var id_enviado = "id_item="+itemSelecionado[0].id_item;

    $.ajax({
        url:"Doacao.php?action=excluir",
        type: 'POST',
        data: id_enviado,
        success: function(data){
            if(data == 0){
                 show_info("Erro!","Houve algum erro para excluir o item. <br> Se o erro persistir contate o administrador. ")
    
            }
            else{
               $("#modalExcluir").modal("hide");
               show_info("Sucesso!","Item excluído.");
               mostra_doacoes();
            }
        }
    });
}
//======================================================


// ============= ADICIONAR ITEM (CONTEUDO) ===============
function add_item_na_doacao(){
     $("#conteudo_item").clone().appendTo( "#proximo_item" );
     $("#quantidade_itens_adicionados").val(parseInt($("#quantidade_itens_adicionados").val()) + 1);

}

// ===================================================

//============== DOAR  ======================================


    //QUANDO CLICADO
function doar1(){
    $("#botao_doar").prop( "disabled", true ).html("<span class=\"glyphicon glyphicon-refresh loading\" aria-hidden=\"true\"> Doar</span>").removeClass("btn-primary").addClass("btn-warning");

    if(itemSelecionado[0].entregue == false || itemSelecionado[0].entregue == null){
         $("#modalContribuinte").modal("show");
    }
    else{
          doar2("null");
    }
   
}


//PARTE DO CONTRIBUINTE
function cadastra_contribuinte(e){
       e.preventDefault(); 
      var form = $("#formulario_contribuinte").serialize();
      
      $.ajax({
         url: "Doacao.php?action=inserir_contribuinte",
         data: form,
         type: 'POST' ,
         success: trata_inserir_contribuinte,
         error: trata_inserir_contribuinte,
      }); 
}

//TRATA CONTRIBUINTE
function trata_inserir_contribuinte(result){
    result = JSON.parse(result);
    if(result.resultado=='error'){
      show_info("Erro!","Houve algum erro para salvar seus dados. <br> Se o erro persistir contate o administrador. ");
    }
    else{
      $("#modalContribuinte").modal("hide");
      doar2(result.resultado);
    }
     
}

//PARTE DE ENVIAR A REQUISIÇÃO
function doar2(contribuinte_id_contribuinte){

    var dados = "id_item="+itemSelecionado[0].id_item+"&contribuinte_id_contribuinte="+contribuinte_id_contribuinte+"&entregue="+itemSelecionado[0].entregue;
    //alert(dados);
    $.ajax({
        url: "Doacao.php?action=doar",
        type: "POST",
        data: dados,
        success: trata_doar
    });
}


function trata_doar(result){
    result = JSON.parse(result);

    if(result.resultado != 0 ){
        if(itemSelecionado[0].entregue == null){
              show_info("Sucesso!","Doação efetuada!! O prazo estabelecido para entrega é de 7 dias! Portanto, por favor entregue o item até o dia "+result.data_marcada);
        }
        else{
              excluir_contribuinte();
        }
        $("#modalContribuinte").modal("hide"); 
    }
    $("#botao_doar").prop( "disabled", false ).html("<span class=\"glyphicon  glyphicon-heart-empty\" aria-hidden=\"true\"> Doar</span>").addClass("btn-primary").removeClass("btn-warning");;
    $("#modalVisualizar").modal("hide");
    mostra_doacoes();
}

//SE FOR DESFAZER A DOAÇÃO - EXCLUIR O CONTRIBUINTE.
function excluir_contribuinte(){
    var id_enviado = "id_contribuinte="+itemSelecionado[0].contribuinte_id_contribuinte;

    $.ajax({
        url:"Doacao.php?action=excluir_contribuinte",
        type: 'POST',
        data: id_enviado,
        success: function(data){
           //QUANDO FOR EXCLUIDO CONTRIBUINTE.
        }
    });
}  

