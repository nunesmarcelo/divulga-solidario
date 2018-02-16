 

function formatar(mascara, documento){
	  var i = documento.value.length;
	  var saida = mascara.substring(0,1);
	  var texto = mascara.substring(i)
	  
	  if (texto.substring(0,1) != saida){
	            documento.value += texto.substring(0,1);
	  } 
}

function show_info(title,content){
    $("#modal_info_titulo").text(title);
    $("#modal_info_conteudo").html(content);
    $("#modalInfo").modal("show");
}