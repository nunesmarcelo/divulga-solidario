<?php
	
	class InstituicaoController{
		public function search(){
			$dao = new InstituicaoDao();
			return $dao->search2();
		}

		public function searchId($id){
			$dao = new InstituicaoDao();
			$condicao = "id_instituicao={$id}";
			return $dao->search2('',$condicao);
		}	

		public function searchLike($text){
			$dao = new InstituicaoDao();
			$condicao = "nome LIKE '%{$text}%'";
			return $dao->search2('',$condicao);
		}	


		
		public function insert($instituicao){
			if(!$instituicao->valid()){
				return false;
			}
			
			$dao = new InstituicaoDao();

			if(!empty($instituicao->getId_instituicao())){
				return $dao->update2($instituicao);
			}
			
			return $dao->insert2($instituicao);
		}

		public function delete($ids){
			$dao = new InstituicaoDao();

			return $dao->delete2((int)$ids);
		}

		public function logar($login,$senha){
			$dao = new InstituicaoDao();
			return $dao->logar($login,$senha);
		}
	}