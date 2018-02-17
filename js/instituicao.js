instituicaoSelecionada = ""; //GLOBAL QUE RECEBE A INSTITUIÇÃO QUE O CLIENTE ESTÁ VISUALIZANDO (PARA EDITAR OU EXCLUIR.)
 


$(document).ready(function(){ 
    mostra_instituicoes();

    //isNaN ->o final da URL NÃO é um falso número? e não é vazio? então, mostre a instituição que possui esse id. 
    if(!isNaN(document.location.hash.substr(1)) && document.location.hash.substr(1)!=""){
        mostra_instituicao(document.location.hash.substr(1));
    }

    $('#modalVisualizar, #modalCadastro').on('hidden.bs.modal', function () {
         document.location.replace("#");
    });

     $('#formulario_instituicao').submit(inserir_instituicao2);

     //$("#formulario_login").submit(logar);
});



var k =0;
function do_search(){
    clearTimeout(k);
    k = setTimeout(function(){mostra_instituicoes()},500);
}


//  ========   MOSTRAR TODAS AS INSTITUIÇÕES ===============
function mostra_instituicoes(){

    //var loading = '<tr><td colspan="5" style="text-align:center;font-size:2em;float:none" class="load_tr"><span class="glyphicon glyphicon-refresh loading" aria-hidden="true"></span></td></tr>';
    var loading = '<tr><td  COLSPAN="4 style="text-align:center;font-size:2em;" ><div class=" wavecontainer center-block"><div class="wave"></div><div class="wave"></div><div class="wave"></div><div class="wave"></div><div class="wave"></div></div></td></tr>'; 
    $('#conteudo_site')[0].innerHTML=loading;

    //$('#conteudo_site').html("carregando.");
    var dados = "texto="+$("#search").val();

    $.ajax({
        url: "Instituicao.php?action=pegar",
        data: dados,
        type: 'POST',
        success: recebe_todas_instituicoes
      
    })
}

function recebe_todas_instituicoes(result){
    //alert(result);
    result = JSON.parse(result);
    //console.log(result+"ola!");
    //console.log("sola");

    htmlString = "";
    for (i=0; i<result.length; i++){
        htmlString += "<tr><td class=\"text-center\"> <strong>"+result[i].nome+"</strong></td>"+
                          "<td class=\"text-center\">"+result[i].estado+"</td>"+
                          "<td class=\"text-center\">"+result[i].email+"</td>"+
                          "<td class=\"text-center\">"+result[i].detalhes+"</td>"+
                          "</tr>";
    }
    $("#conteudo_site").html(htmlString); 
}

// ======================================================== 

// ============== MOSTRAR SÓ UMA INSTITUIÇÃO (LIGADO À FUNÇÃO ACIMA) ================= 

function mostra_instituicao(id,show){
   
     if(typeof(show)=="undefined" || show==true) $("#modalVisualizar").modal("show");
     $.ajax({
      url: "Instituicao.php?action=pegar&id_instituicao="+id,
      success: recebe_uma_instituicao

    });

}



function recebe_uma_instituicao(data){
    //alert(data);
    result = JSON.parse(data);

   // alert("Ola"+result[0].itens.length);

    $("#modal_visual_nome").html(result[0].nome);
    $('#modal_visual_estado').html(result[0].estado);
    $('#modal_visual_cidade').html(result[0].cidade);
    $("#modal_visual_bairro").html(result[0].bairro);
    $("#modal_visual_rua").html(result[0].rua);
    $("#modal_visual_numero").html(result[0].numero);
    $("#modal_visual_telefone").html(result[0].telefone);
    $("#modal_visual_email").html(result[0].email);
    $("#modal_visual_responsavel").html(result[0].responsavel);
    $("#modal_visual_descricao").html(result[0].descricao);
    
    if(result[0].imagem_instituicao.localeCompare("NULL") != 0){
        $("#modal_visual_imagem_instituicao").html('<img src="upload/'+result[0].imagem_instituicao+'" class="img-responsive img-circle"> ');
    }
    else{
        $("#modal_visual_imagem_instituicao").html("");
    }
  

    $("#excluir_instituicao").click(function(){excluir_instituicao()});
    $("#conteudo_doacoes").html("");
     instituicaoSelecionada = result;

    var htmlString = "";
    for(var i=0;i<result[0].itens.length ; i++){
        htmlString += "<a href=\"doacao_aberta.html#"+ result[0].itens[i].item_id +"\"> <p>"+
                          "<strong>Item:</strong>"+
                                  "<span>"+ result[0].itens[i].item_nome+"</span>"+
                      "</p>"+
                      "<p>"+
                          "<strong>Quantidade:</strong>"+
                                  "<span>"+ result[0].itens[i].item_quantidade+"</span>"+
                      "</p>"+
                      "<p>"+
                          "<strong>Descrição:</strong>"+
                                  "<span>"+ result[0].itens[i].item_descricao+"</span>"+
                      "</p><hr> </a>";
    }
    $("#conteudo_doacoes").html(htmlString);
   
    
}

// =========================================================


// =============== INSERIR/EDITAR INSTITUICAO NO BD =======================


//QUANDO O BOTÃO DO MODAL É CLICADO
function add_instituicao(operacao){ 
    $.ajax({
        url: "Instituicao.php?action=sessao",
        type: 'POST',
        success: function(saida){
            if(saida==0){
               $("#modalLogin").modal("show");
               //$("#modalLogin").on("shown.bs.modal",function(){
                //  alert("rolaa");
                   $("#formulario_login").on("submit",function(e){
                      
                       e.preventDefault();
                      
                        var dados =  $("#formulario_login").serialize();
                     
                        $.ajax({
                             url: "Instituicao.php?action=logar",
                             type: "POST",
                             data: dados,
                            success: function(saida2){
                                  if(saida2 == 1){
                                      $('#modalLogin').modal('toggle');
                                      add_instituicao_verificado(operacao);

                                  }
                                  if(saida2 == 0){
                                      //$("#modalLogin").modal("hide");
                                      show_info("Erro!","login ou senha incorretos!!!");
                                      $("#login").val("");
                                      $("#senha").val("");
                                      return 0;
                                  }
                            }
                       });
                    });
                //});
              
            }
            if(saida==1){
                console.log("oi");

                add_instituicao_verificado(operacao);
            }
        }
    }); 

   

}

function add_instituicao_verificado(operacao){
    console.log("oi");
     if(operacao.localeCompare("editar") == 0){ 
      $("#titulo_cadastro").text("Editar Instituição");  
      $("#enviar").text("Salvar Alterações");  
      $("#nome_instituicao").val(instituicaoSelecionada[0].nome);
      $("#estado_instituicao").val(instituicaoSelecionada[0].estado);
      $("#cidade_instituicao").val(instituicaoSelecionada[0].cidade);
      $("#bairro_instituicao").val(instituicaoSelecionada[0].bairro);
      $("#rua_instituicao").val(instituicaoSelecionada[0].rua);
      $("#numero_instituicao").val(instituicaoSelecionada[0].numero);
      $("#telefone_instituicao").val(instituicaoSelecionada[0].telefone);
      $("#responsavel_instituicao").val(instituicaoSelecionada[0].responsavel);
      $("#emailR_instituicao").val(instituicaoSelecionada[0].email);
      $("#descricao_instituicao").val(instituicaoSelecionada[0].descricao);
      $("#id_instituicao").val(instituicaoSelecionada[0].id_instituicao);
    }


     $("#modalCadastro").modal('toggle');
     $("#modalCadastro").css({"overflow":"auto"});

}

//QUANDO O FORMULÁRIO É SUBMETIDO
function inserir_instituicao2(e){      
          e.preventDefault();       
          var formdata = new FormData($(this)[0]);                               
          $.ajax({              
            url: "Instituicao.php?action=inserir",              
            type: "POST",             
            datype: "html",             
            data: formdata,             
            async: false,             
            success: trata_inserir,              
            cache: false,             
            contentType: false,             
            processData: false            
          });          
          return false;            
      }

/*
//QUANDO O FORMULÁRIO É ENVIADO
function inserir_instituicao(){
      //var instituicao =  new FormData($("form[name='formulario_instituicao']")[0]);
      
      var fd = new FormData();
      fd.append('imagem_instituicao', $("#imagem_instituicao").files);
      
      $.ajax({
         url: "Instituicao.php?action=inserir",
         data: fd,
         processData: false,
         contentType: false,
         type: 'POST' ,
         success: trata_inserir,
         error: trata_inserir,
      });
      
}
*/

function trata_inserir(result){ 
    //alert(result);
    result = JSON.parse(result);
    if(result.resultado == "error"){
       show_info("Erro!","Houve algum erro para adicionar a instituição. <br> Se o erro persistir contate o administrador. ")
    }
    else{
      console.log(result.resultado);
      $("#modalCadastro").modal("hide");
      $("#modalVisualizar").modal("hide");
      mostra_instituicoes();
      mostra_instituicao(instituicaoSelecionada[0].id_instituicao,false);
    }
     
}


// =========================================================

// ============== EXCLUIR INSTITUICAO =========================

//QUANDO CLICADO NO BOTÃO DE EXCLUIR
function excluir_instituicao(){
    $("#modal_excluir_nome").html(instituicaoSelecionada[0].nome);
    $("#modal_excluir_id").val(instituicaoSelecionada[0].id_instituicao);
    $("#modalExcluir").modal("show");
    $("#excluir_confirma").click(function(){excluir_confirmado();})
}

//QUANDO CONFIRMADO
function excluir_confirmado(){
    var id_enviado = "id_instituicao="+instituicaoSelecionada[0].id_instituicao;

    $.ajax({
        url:"Instituicao.php?action=excluir",
        type: 'POST',
        data: id_enviado,
        success: function(data){
            data = JSON.parse(data);
            if(data == 0){
                 show_info("Erro!","Houve algum erro para excluir a instituição. <br> Se o erro persistir contate o administrador. ")
    
            }
            else{
               $("#modalExcluir").modal("hide");
               show_info("Sucesso!","Instituição excluída.");
               mostra_instituicoes();
            }
        }
        
    });
}



// ================= LOGIN - ADMIN PARA ACESSO A EDIÇÕES. ============ //

