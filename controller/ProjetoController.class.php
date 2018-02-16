<?php
	
	class ProjetoController{
		public function search(){
			$dao = new ProjetoDao();
			return $dao->search();
		}
		
		public function insert($projeto){
			if(!$projeto->valid()){
				return false;
			}
			
			$dao = new ProjetoDao();

			if(!empty($projeto->getProjetoId())){
				return $dao->update($projeto);
			}
			
			return $dao->insert($projeto);
		}

		public function delete($projetos_ids){
			$dao = new ProjetoDao();
			return $dao->delete($projetos_ids);
		}
	}