<?php
	
	
	class ItemView{
		public function search(){
			$controller = new ItemController();
			return $controller->search();
		}	

		public function searchId($id){
			$controller = new ItemController();
			return $controller->searchId($id);
		}	

		public function searchLike($texto){
			$controller = new ItemController();
			return $controller->searchLike($texto);
		}	

		public function searchInstituicao($doacao_instituicao_id_instituicao){
			$controller = new ItemController();
			return $controller->searchInstituicao($doacao_instituicao_id_instituicao);
		}	

		
		public function insert($nome,$quantidade,$descricao){
			$item = new ItemModel();
			
			$item->setnome($nome);
			$item->setquantidade($quantidade);
			$item->setdescricao($descricao);

			$entregue = empty($_REQUEST['entregue']) ? '0' : $_REQUEST['entregue'];
			$item->setentregue($entregue);

			$data_marcada = empty($_REQUEST['data_marcada']) ? 'NULL' : $_REQUEST['data_marcada'];
			$item->setdata_marcada($data_marcada);

			$descricao_doacao = empty($_REQUEST['descricao_doacao']) ? '' : $_REQUEST['descricao_doacao'];
			$item->setdescricao_doacao($descricao_doacao);

			$item->setinstituicao_id_instituicao($_REQUEST['instituicao_id_instituicao']);

			$contribuinte_id_contribuinte = empty($_REQUEST['contribuinte_id_contribuinte']) ? null : $_REQUEST['contribuinte_id_contribuinte'];
			$item->setcontribuinte_id_contribuinte($contribuinte_id_contribuinte);

			$id_item = empty($_REQUEST['id_item']) ? null : $_REQUEST['id_item'];
			$item->setid_item($id_item);			
			
			$controller = new ItemController();
			return $controller->insert($item);
		}

		public function delete(){
			if(empty($_REQUEST['id_item'])){
				return 0;
			}
			$ids = $_REQUEST['id_item'];
			$controller = new ItemController();
			return $controller->delete($ids);
		}

		public function doar($id_item , $id_contribuinte , $data_marcada,$entregue){
			$controller = new ItemController();

			return $controller->doar($id_item,$id_contribuinte,$data_marcada,$entregue);
		}
	}