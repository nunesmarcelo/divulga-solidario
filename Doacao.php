
<?php 	
	require_once 'funcoes/funcoes.php';
	
	$item_view = new ItemView();
	$instituicao_view = new InstituicaoView();
	$contribuinte_view = new ContribuinteView();

	$id_item = empty($_REQUEST['id_item']) ? '' : $_REQUEST['id_item'];
	$nome = empty($_REQUEST['nome']) ? '' : $_REQUEST['nome']; 
	$quantidade = empty($_REQUEST['quantidade']) ? '' : $_REQUEST['quantidade'];
	$descricao = empty($_REQUEST['descricao']) ? '' : $_REQUEST['descricao'];
	$entregue = empty($_REQUEST['entregue']) ? '' : $_REQUEST['entregue'];
	$data_marcada = empty($_REQUEST['data_marcada']) ? '' : $_REQUEST['data_marcada'];
	$descricao_doacao = empty($_REQUEST['descricao_doacao']) ? '' : $_REQUEST['descricao_doacao'];
	$instituicao_id_instituicao = empty($_REQUEST['instituicao_id_instituicao']) ? '' : $_REQUEST['instituicao_id_instituicao'];
	$contribuinte_id_contribuinte = empty($_REQUEST['contribuinte_id_contribuinte']) ? '' : $_REQUEST['contribuinte_id_contribuinte'];

		
	$action = empty($_REQUEST['action']) ? "" : $_REQUEST['action'];
	$texto = empty($_REQUEST['texto']) ? "" : $_REQUEST['texto'];

	switch($action){
		case 'inserir':
       		inserir();
       		break;

       	case 'inserir_contribuinte':
       		inserir_contribuinte();
       		break;

		case 'pegar':
			pegar();
			break;

		case 'excluir':
			excluir();
			break;

		case 'doar':
			doar();
			break;

		case 'excluir_contribuinte':
			excluir_contribuinte();
			break;

		default:

			
	}

	function pegar(){
		global $id_item, $instituicao_view, $item_view , $texto , $contribuinte_view;

		if($id_item == ''){
			
			if($texto == ""){
				$listaItens = $item_view->search();//listando todos os itens.
			}
			else{
				$listaItens = $item_view->searchLike($texto);//listando todas as instituições.
			}
		}
		else{
			$listaItens = $item_view->searchId($id_item);//listando o item selecionado.
		}

		$i = 0;
		foreach($listaItens as $item){

			//PERCORRENDO OS ITENS
			$data[$i]['nome'] = $item->getnome();
			$data[$i]['quantidade'] = $item->getquantidade();
			$data[$i]['descricao'] = $item->getdescricao();
			$data[$i]['id_item'] = $item->getid_item();

			$data[$i]['data_marcada'] = date('d/m/Y', strtotime( $item->getdata_marcada()));
			$data[$i]['entregue'] = $item->getentregue();
			$data[$i]['descricao_doacao'] = $item->getdescricao_doacao();

			//PEGANDO DADOS DO CONTRIBUINTE ( PARA CASOS EM QUE A DOAÇÃO FOI SETADA.)
			$data[$i]['contribuinte_id_contribuinte'] = $item->getcontribuinte_id_contribuinte();
			
			$contribuinte = $contribuinte_view->searchId($item->getcontribuinte_id_contribuinte());
			if($contribuinte){
				$data[$i]['contribuinte_nome'] = $contribuinte[0]->getnome();
				$data[$i]['contribuinte_telefone'] = $contribuinte[0]->gettelefone();
				$data[$i]['contribuinte_email'] = $contribuinte[0]->getemail();
			}
			

			


			//PEGANDO A INSTITUICAO ATRAVÉS DO ID JÁ OBTIDO.
			$data[$i]['instituicao_id_instituicao'] = $item->getinstituicao_id_instituicao();
			$instituicao_recebida = $instituicao_view->searchId($item->getinstituicao_id_instituicao());
			foreach( $instituicao_recebida as $instituicao){
				$data[$i]['nome_instituicao'] = $instituicao->getNome();
				$data[$i]['imagem_instituicao'] = $instituicao->getimagem_instituicao();
			}
			
			$data[$i]['detalhes'] = "<button type=\"button\" class=\"btn btn-primary\" onclick=\"mostra_item({$item->getid_item()})\"> <span class=\"glyphicon glyphicon-search\">Visualizar </span> </button>";
			
			$i++;
		}

		if($listaItens == null){
				$data = "";
		}				
		echo json_encode($data);
	}

	function inserir(){
		global $item_view,$nome,$quantidade,$descricao;

		for($i=0 ; $i < count($nome); $i++){
			if($item_view->insert($nome[$i], $quantidade[$i] , $descricao[$i])==null){
				$saida[$i]['resultado'] = "error";
			}
			else{
				$saida[$i]['resultado'] = "success";
			}
		}
		echo json_encode($saida);
	}

	function inserir_contribuinte(){

		$contribuinte_view = new ContribuinteView();

		$nome_contribuinte = empty($_REQUEST['nome_contribuinte']) ? '' : $_REQUEST['nome_contribuinte'];
		$id_contribuinte = empty($_REQUEST['id_contribuinte']) ? '' : $_REQUEST['id_contribuinte'];
		$telefone_contribuinte = empty($_REQUEST['telefone_contribuinte']) ? '' : $_REQUEST['telefone_contribuinte'];
		$email_contribuinte = empty($_REQUEST['email_contribuinte']) ? '' : $_REQUEST['email_contribuinte'];

		$id_saida = $contribuinte_view->insert();
		if($id_saida == null){
			$saida['resultado'] = "error";
		}
		else{
			$saida['resultado'] = $id_saida;
		}
		
		echo json_encode($saida);
	}

	function excluir(){
		global $item_view, $id_item;
		$saida = $item_view->delete();
		echo json_encode($saida);
	}

	function excluir_contribuinte(){
		$contribuinte_view = new ContribuinteView();
		$id_contribuinte = empty($_REQUEST['id_contribuinte']) ? '' : $_REQUEST['id_contribuinte'];
		echo json_encode($contribuinte_view->delete());

	}

	function doar(){
		global $id_item , $item_view , $contribuinte_id_contribuinte , $entregue;

				
		$data = date('Y-m-d');
		$data_marcada = date('Y-m-d', strtotime("+7 days",strtotime($data)));

		$afetadas = $item_view->doar($id_item,$contribuinte_id_contribuinte,$data_marcada, $entregue);

		$saida["resultado"] = $afetadas;

		$saida['data_marcada'] = date('d/m/Y',  strtotime($data_marcada));

		echo json_encode($saida);
	}