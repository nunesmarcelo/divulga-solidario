<?php
	
	class ItemController{
		public function search(){
			
			$dao = new ItemDao();
			return $dao->search2();
		}

		public function searchId($id){
			$dao = new ItemDao();
			$condicao = "id_item={$id}";
			return $dao->search2('',$condicao);
		}

		public function searchLike($texto){
			$dao = new ItemDao();
			$condicao = "nome LIKE '%{$texto}%'";
			return $dao->search2('',$condicao);
		}

		public function searchInstituicao($instituicao_id_instituicao){
			$dao = new ItemDao();
			$condicao = "instituicao_id_instituicao={$instituicao_id_instituicao}";
			return $dao->search2('',$condicao);
		}
		
		public function insert($item){
			if(!$item->valid()){
				return false;
			}
			
			$dao = new ItemDao();

			if(!empty($item->getid_item())){
				return $dao->update2($item);
			}
			
			return $dao->insert2($item);
		}

		public function delete($ids){
			$dao = new ItemDao();
			return $dao->delete2($ids);
		}

		public function doar($id_item , $id_contribuinte , $data_marcada,$entregue){
			$dao = new ItemDao();

			return $dao->doar($id_item,$id_contribuinte,$data_marcada,$entregue);
		}
	}