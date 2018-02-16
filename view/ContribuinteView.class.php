<?php
	
	
	class ContribuinteView{
		public function search(){
			$controller = new ContribuinteController();
			return $controller->search();
		}	

		public function searchId($id){
			$controller = new ContribuinteController();
			return $controller->searchId($id);
		}

		public function searchLike($text){
			$controller = new ContribuinteController();
			return $controller->searchLike($text);
		}	
	
		
		public function insert(){
			$contribuinte = new ContribuinteModel();
			$contribuinte->setnome($_REQUEST['nome_contribuinte']);
			$contribuinte->settelefone($_REQUEST['telefone_contribuinte']);
			$contribuinte->setemail($_REQUEST['email_contribuinte']);
			
			$id_contribuinte = empty($_REQUEST['id_contribuinte']) ? null : $_REQUEST['id_contribuinte'];
			$contribuinte->setid_contribuinte($id_contribuinte);
			
			$controller = new ContribuinteController();
			return $controller->insert($contribuinte);
		}

		public function delete(){
			if(empty($_REQUEST['id_contribuinte'])){
				return 0;
			}
			$ids = $_REQUEST['id_contribuinte'];
			$controller = new ContribuinteController();
			return $controller->delete($ids);
		}
	}