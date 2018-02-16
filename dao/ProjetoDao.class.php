<?php

class ProjetoDao extends SuperDao{
	public function __construct(){
		parent::__construct('projetos','ProjetoModel');
	}
	
	public function search($campos = array(),$condicao = array()){
		$campos = empty($campos) ? array('*') : $campos;
		$condicao = empty($restricoes) ? '1' : $restricoes;
		
		return parent::search($campos , $condicao);
	}
	
	public function insert($projeto){
		$arrayCamposValores['nome'] = $projeto->getNome();
		$arrayCamposValores['cliente_id'] = $projeto->getClienteId();
		$arrayCamposValores['assinatura'] = $projeto->getAssinatura();
		$arrayCamposValores['finalizacao']= $projeto->getFinalizacao();
		$arrayCamposValores['valor'] = $projeto->getValor();
		$arrayCamposValores['prazo'] = $projeto->getPrazo();
		$arrayCamposValores['resumo'] = $projeto->getResumo();
		$arrayCamposValores['tipo'] = $projeto->getTipo();
		return parent::insert($arrayCamposValores);
	}

	public function update($projeto){
		$arrayCamposValores['nome'] = $projeto->getNome();
		$arrayCamposValores['cliente_id'] = $projeto->getClienteId();
		$arrayCamposValores['assinatura'] = $projeto->getAssinatura();
		$arrayCamposValores['finalizacao']= $projeto->getFinalizacao();
		$arrayCamposValores['valor'] = $projeto->getValor();
		$arrayCamposValores['prazo'] = $projeto->getPrazo();
		$arrayCamposValores['resumo'] = $projeto->getResumo();
		$arrayCamposValores['tipo'] = $projeto->getTipo();
		$condicao = "projeto_id = {$projeto->getProjetoId()}";

		return parent::update($arrayCamposValores,$condicao);
	}

	public function delete($ids){
		$ids = implode(',',$ids);
		$condicao = "projeto_id in($ids)"; // "id Usuario in (1,3,4,10, ... , n)"
		
		//retorna quantos foram removidos.
		return parent::delete($condicao);
	}
}