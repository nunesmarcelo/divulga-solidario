<?php

class ContribuinteDao extends SuperDao{
	public function __construct(){
		parent::__construct('contribuinte','ContribuinteModel');
	}
	
	public function search2($campos = array(),$condicao = array()){
		$campos = empty($campos) ? array('*') : $campos;
		$condicao = empty($condicao) ? '1' : $condicao;
		
		
		return parent::search1($campos , $condicao,"nome");
	}

	
	public function insert2($contribuinte){
		$arrayCamposValores['nome'] = $contribuinte->getnome();
		$arrayCamposValores['telefone'] = $contribuinte->gettelefone();
		$arrayCamposValores['email'] = $contribuinte->getemail();
		return parent::insert1($arrayCamposValores);
	}

	public function update2($contribuinte){
		$arrayCamposValores['nome'] = $contribuinte->getnome();
		$arrayCamposValores['telefone'] = $contribuinte->gettelefone();
		$arrayCamposValores['email'] = $contribuinte->getemail();
		$condicao = "id_contribuinte = {$contribuinte->getid_contribuinte()}";

		return parent::update1($arrayCamposValores,$condicao);
	}

	public function delete2($ids){
		
			$condicao = "id_contribuinte = $ids";
		
		
		//retorna quantos foram removidos.
		return parent::delete1($condicao);
	}
}