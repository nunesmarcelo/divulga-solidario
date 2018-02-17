
<?php 	
	session_start();
	require_once 'funcoes/funcoes.php';
	$view = new InstituicaoView();

	$id_instituicao = empty($_REQUEST['id_instituicao']) ? '' : $_REQUEST['id_instituicao'];
	$nome = empty($_REQUEST['nome']) ? '' : $_REQUEST['nome'];
	$estado = empty($_REQUEST['estado']) ? '' : $_REQUEST['estado'];
	$cidade = empty($_REQUEST['cidade']) ? '' : $_REQUEST['cidade'];
	$bairro = empty($_REQUEST['bairro']) ? '' : $_REQUEST['bairro'];
	$rua = empty($_REQUEST['rua']) ? '' : $_REQUEST['rua'];
	$numero = empty($_REQUEST['numero']) ? '' : $_REQUEST['numero'];
	$telefone = empty($_REQUEST['telefone']) ? '' : $_REQUEST['telefone'];
	$email = empty($_REQUEST['email']) ? '' : $_REQUEST['email'];
	$responsavel = empty($_REQUEST['responsavel']) ? '' : $_REQUEST['responsavel'];
	$descricao = empty($_REQUEST['descricao']) ? '' : $_REQUEST['descricao'];
	
	
	$action = empty($_REQUEST['action']) ? "" : $_REQUEST['action'];
	$texto = empty($_REQUEST['texto']) ? "" : $_REQUEST['texto'];


	switch($action){
		case 'inserir':
       		inserir();
       		break;

		case 'pegar':
			pegar();
			break;

		case 'excluir':
			excluir();
			break;

		case 'sessao':
			sessao();
			break;

		case 'logar':
			logar();
			break;

		default:

			
	}

	function pegar(){
		
		global $id_instituicao, $view, $texto;

		if($id_instituicao == ''){
			if($texto == ""){
				$listaInstituicoes = $view->search();//listando todas as instituições.
			}
			else{
				$listaInstituicoes = $view->searchLike($texto);//listando todas as instituições.
			}
			
		}
		else{
			$listaInstituicoes = $view->searchId($id_instituicao);//listando todas as instituições.
			$item_view = new ItemView();
			$listaItens = $item_view->searchInstituicao($id_instituicao);
			$j=0;
			foreach($listaItens as $item_obtido){
				$data[0]['itens'][$j]['item_nome'] = $item_obtido->getnome();
				$data[0]['itens'][$j]['item_quantidade'] = $item_obtido->getquantidade();
				$data[0]['itens'][$j]['item_descricao'] = $item_obtido->getdescricao();
				$data[0]['itens'][$j]['item_id'] = $item_obtido->getid_item();
				$j++;
			}
			
		}

		$i = 0;
		foreach($listaInstituicoes as $instituicao){
			$data[$i]['id_instituicao'] = $instituicao->getId_instituicao();
			$data[$i]['nome'] = $instituicao->getNome();
			$data[$i]['estado'] = $instituicao->getEstado();
			$data[$i]['email'] = $instituicao->getEmail();
			$data[$i]['cidade'] = $instituicao->getCidade();
			$data[$i]['bairro'] = $instituicao->getBairro();
			$data[$i]['rua'] = $instituicao->getRua();
			$data[$i]['numero'] = $instituicao->getNumero();
			$data[$i]['telefone'] = $instituicao->getTelefone();
			$data[$i]['responsavel'] = $instituicao->getResponsavel();
			$data[$i]['descricao'] = $instituicao->getDescricao();
			$data[$i]['imagem_instituicao'] = $instituicao->getimagem_instituicao();
			$data[$i]['detalhes'] = "<button type=\"button\" class=\"btn btn-primary\" onclick=\"mostra_instituicao({$instituicao->getId_instituicao()})\"> <span class=\"glyphicon glyphicon-search\">Visualizar </span> </button>";
			
			$i++;
		}

		if($listaInstituicoes == null){
				$data[$i]['nome'] = "Nenhuma Instituição cadastrada.";
				$data[$i]['estado'] = "";
				$data[$i]['email'] = "";
				$data[$i]['detalhes'] = "";
		}	
		echo json_encode($data);
	}

	function inserir(){
		global $view,$id_instituicao,$nome,$estado,$cidade,$bairro,$rua,$numero,$telefone,$email,$responsavel,$descricao;
	
		$result = $view->insert();
		
		if($result==null){
			$saida['resultado'] = "error";
		}
		else{
			$saida['resultado'] = $result;
		}

		echo json_encode($saida);
	}

	function excluir(){
		global $view, $id_instituicao;
		$saida = $view->delete();
		echo json_encode($saida);
	}

	function sessao(){

		if(isset($_SESSION['login']) && isset($_SESSION['senha'])){
			echo "1";
		}
		else{
			echo "0";
		}
	}

	function logar(){
		global $view;
		$login = empty($_REQUEST['login']) ? '' : $_REQUEST['login']; 
		$senha = empty($_REQUEST['senha']) ? '' : $_REQUEST['senha'];
		if($login != '' && $senha != ''){
			if($view->logar($login,$senha)){
				$_SESSION['login'] = $login;
				$_SESSION['senha'] = $senha;
				echo "1";
			}
			else{
				echo "0";
			}
		}
		else{
			echo "0";
		}
		
	}
	