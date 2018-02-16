<?php

class DoacaoDao extends SuperDao{
	public function __construct(){
		parent::__construct('doacao','DoacaoModel');
	}
	
	public function search2($campos = array(),$condicao = array()){
		$campos = empty($campos) ? array('*') : $campos;
		$condicao = empty($condicao) ? '1' : $condicao;
		
		
		return parent::search1($campos , $condicao,"instituicao_id_instituicao");
	}

	
	public function insert2($doacao){
		$arrayCamposValores['descricao'] = $doacao->getdescricao();
		$arrayCamposValores['instituicao_id_instituicao']= $doacao->getinstituicao_id_instituicao();
		if($doacao->getcontribuinte_id_contribuinte()){
			$arrayCamposValores['contribuinte_id_contribuinte'] = $doacao->getcontribuinte_id_contribuinte();
		}
		
		return parent::insert1($arrayCamposValores);
	}

	public function update2($doacao){
		
		$arrayCamposValores['descricao'] = $doacao->getdescricao();
		$arrayCamposValores['instituicao_id_instituicao'] = $doacao->getinstituicao_id_instituicao();
		$arrayCamposValores['contribuinte_id_contribuinte'] = $doacao->getcontribuinte_id_contribuinte();
		$condicao = "id_doacao = {$doacao->getid_doacao()}";

		return parent::update1($arrayCamposValores,$condicao);
	}

	public function delete2($ids){
		if(count($ids) > 1){
			$ids = implode(',',$ids);
			$condicao = "id_doacao in $ids"; // "id Usuario in (1,3,4,10, ... , n)"
		}
		else{
			$condicao = "id_doacao = $ids";
		}
		
		
		//retorna quantos foram removidos.
		return parent::delete1($condicao);
	}
}