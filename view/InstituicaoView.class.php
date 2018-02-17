<?php
	
	
	class InstituicaoView{
		public function search(){
			$controller = new InstituicaoController();
			return $controller->search();
		}	

		public function searchId($id){
			$controller = new InstituicaoController();
			return $controller->searchId($id);
		}

		public function searchLike($text){
			$controller = new InstituicaoController();
			return $controller->searchLike($text);
		}	
	
		
		public function insert(){
			$instituicao = new InstituicaoModel();
			$instituicao->setNome($_REQUEST['nome']);
			$instituicao->setEstado($_REQUEST['estado']);
			$instituicao->setCidade($_REQUEST['cidade']);
	        $instituicao->setBairro($_REQUEST['bairro']);
			$instituicao->setRua($_REQUEST['rua']);
			$instituicao->setNumero($_REQUEST['numero']);
			$instituicao->setTelefone($_REQUEST['telefone']);
			$instituicao->setResponsavel($_REQUEST['responsavel']);
			$instituicao->setEmail($_REQUEST['email']);
			$instituicao->setDescricao($_REQUEST['descricao']);
			/*if(isset($_FILES['imagem_instituicao'])){
				$instituicao->setimagem_instituicao($_REQUEST['imagem_instituicao']);
			}*/

			if($_FILES['imagem_instituicao']['error'] == false){ //SE NÃO TIVER VAZIO O CAMPO
				
				$extensao = strtolower(substr($_FILES['imagem_instituicao']['name'], -5)); //PEGA A EXTENSÃO DO NOME EX: .JPG
		
				$novo_nome = md5(time()) . $extensao; // CODIFICA UM NOVO NOME PARA A IMAGEM, TORNANDO IMPOSSÍVEL DE SEREM CRIADOS NOMES REPETIDOS.
				$diretorio = "upload/";

				move_uploaded_file($_FILES['imagem_instituicao']['tmp_name'], $diretorio.$novo_nome); //SALVA NA PASTA "UPLOADS/" O NOME.EXTENSÃO
				$instituicao->setimagem_instituicao($novo_nome);
				
			}
			else{
				$instituicao->setimagem_instituicao("NULL");
			}
			
			

			$id_instituicao = empty($_REQUEST['id_instituicao']) ? null : $_REQUEST['id_instituicao'];
			$instituicao->setId_instituicao($id_instituicao);
			
			$controller = new InstituicaoController();
			return $controller->insert($instituicao);
		}

		public function delete(){
			if(empty($_REQUEST['id_instituicao'])){
				return 0;
			}
			$ids = $_REQUEST['id_instituicao'];
			$controller = new InstituicaoController();
			return $controller->delete($ids);
		}

		public function logar($login,$senha){
			$controller = new InstituicaoController();
			return $controller->logar($login,$senha);
		}
	}