<?php
	
	class ContribuinteController{
		public function search(){
			$dao = new ContribuinteDao();
			return $dao->search2();
		}

		public function searchId($id){
			$dao = new ContribuinteDao();
			$condicao = "id_contribuinte={$id}";
			return $dao->search2('',$condicao);
		}	

		public function searchLike($text){
			$dao = new ContribuinteDao();
			$condicao = "nome LIKE '%{$text}%'";
			return $dao->search2('',$condicao);
		}	


		
		public function insert($contribuinte){
			if(!$contribuinte->valid()){
				return false;
			}
			
			$dao = new ContribuinteDao();

			if(!empty($contribuinte->getid_contribuinte())){
				return $dao->update2($contribuinte);
			}
			
			return $dao->insert2($contribuinte);
		}

		public function delete($ids){
			$dao = new ContribuinteDao();

			return $dao->delete2((int)$ids);
		}
	}