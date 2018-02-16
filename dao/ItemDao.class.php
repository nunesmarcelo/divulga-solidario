<?php

class ItemDao extends SuperDao{
	public function __construct(){
		parent::__construct('item','ItemModel');
	}
	
	public function search2($campos = array(),$condicao = array()){
		$campos = empty($campos) ? array('*') : $campos;
		$condicao = empty($condicao) ? '1' : $condicao;
		
		
		return parent::search1($campos , $condicao,"nome");
	}

	
	public function insert2($item){
		$arrayCamposValores['nome'] = $item->getnome();
		$arrayCamposValores['quantidade'] = $item->getquantidade();
		$arrayCamposValores['descricao'] = $item->getdescricao();
		$arrayCamposValores['entregue'] = $item->getentregue();
		$arrayCamposValores['data_marcada'] = $item->getdata_marcada();
		$arrayCamposValores['descricao_doacao']= $item->getdescricao_doacao();
		$arrayCamposValores['instituicao_id_instituicao'] = $item->getinstituicao_id_instituicao();
		
		//$arrayCamposValores['contribuinte_id_contribuinte'] = $item->getcontribuinte_id_contribuinte();
		//return $arrayCamposValores;
		return parent::insert1($arrayCamposValores);
	}

	public function update2($item){
		$arrayCamposValores['nome'] = $item->getnome();
		$arrayCamposValores['quantidade'] = $item->getquantidade();
		$arrayCamposValores['descricao'] = $item->getdescricao();
		$arrayCamposValores['entregue'] = $item->getentregue();
		$arrayCamposValores['data_marcada'] = $item->getdata_marcada();
		$arrayCamposValores['descricao_doacao']= $item->getdescricao_doacao();
		$arrayCamposValores['instituicao_id_instituicao'] = $item->getinstituicao_id_instituicao();
		//$arrayCamposValores['contribuinte_id_contribuinte'] = $item->getcontribuinte_id_contribuinte();
		$condicao = "id_item = {$item->getid_item()}";

		return parent::update1($arrayCamposValores,$condicao);
	}

	public function delete2($ids){
		if(count($ids) > 1){
			$ids = implode(',',$ids);
			$condicao = "id_item in $ids"; // "id Usuario in (1,3,4,10, ... , n)"
		}
		else{
			$condicao = "id_item = $ids";
		}
		
		
		//retorna quantos foram removidos.
		return parent::delete1($condicao);
	}

	public function doar($id_item, $id_contribuinte , $data_marcada,$entregue){
		return parent::doar($id_item,$id_contribuinte,$data_marcada,$entregue);
	}
}