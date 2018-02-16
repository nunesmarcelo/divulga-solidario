<?php
	
	class DoacaoController{
		public function search(){
			
			$dao = new DoacaoDao();
			return $dao->search2();
		}

		public function searchId($id){
			$dao = new DoacaoDao();
			$condicao = "id_doacao={$id}";
			return $dao->search2('',$condicao);
		}
		
		public function insert($doacao){

			if(!$doacao->valid()){
				return null;
			}
			
			$dao = new DoacaoDao();

			if(!empty($doacao->getid_doacao())){
				return $dao->update2($doacao);
			}
			
			return $dao->insert2($doacao);
		}

		public function delete($ids){
			$dao = new DoacaoDao();
			return $dao->delete2($ids);
		}
	}