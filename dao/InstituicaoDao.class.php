<?php

class InstituicaoDao extends SuperDao{
	public function __construct(){
		parent::__construct('instituicao','InstituicaoModel');
	}
	
	public function search2($campos = array(),$condicao = array()){
		$campos = empty($campos) ? array('*') : $campos;
		$condicao = empty($condicao) ? '1' : $condicao;
		
		
		return parent::search1($campos , $condicao,"nome");
	}

	
	public function insert2($instituicao){
		$arrayCamposValores['nome'] = $instituicao->getNome();
		$arrayCamposValores['estado'] = $instituicao->getEstado();
		$arrayCamposValores['cidade'] = $instituicao->getCidade();
		$arrayCamposValores['bairro']= $instituicao->getBairro();
		$arrayCamposValores['rua'] = $instituicao->getRua();
		$arrayCamposValores['numero'] = $instituicao->getNumero();
		$arrayCamposValores['telefone'] = $instituicao->getTelefone();
		$arrayCamposValores['responsavel'] = $instituicao->getResponsavel();
		$arrayCamposValores['email'] = $instituicao->getEmail();
		$arrayCamposValores['descricao'] = $instituicao->getDescricao();
		$arrayCamposValores['imagem_instituicao'] = $instituicao->getimagem_instituicao();
		return parent::insert1($arrayCamposValores);
	}

	public function update2($instituicao){
		$arrayCamposValores['nome'] = $instituicao->getNome();
		$arrayCamposValores['estado'] = $instituicao->getEstado();
		$arrayCamposValores['cidade'] = $instituicao->getCidade();
		$arrayCamposValores['bairro'] = $instituicao->getBairro();
		$arrayCamposValores['rua'] = $instituicao->getRua();
		$arrayCamposValores['numero'] = $instituicao->getNumero();
		$arrayCamposValores['telefone'] = $instituicao->getTelefone();
		$arrayCamposValores['responsavel'] = $instituicao->getResponsavel();
		$arrayCamposValores['email'] = $instituicao->getEmail();
		$arrayCamposValores['descricao'] = $instituicao->getDescricao();
		$arrayCamposValores['imagem_instituicao'] = $instituicao->getimagem_instituicao();
		$condicao = "id_instituicao = {$instituicao->getId_instituicao()}";

		return parent::update1($arrayCamposValores,$condicao);
	}

	public function delete2($ids){
		
			$condicao = "id_instituicao = $ids";
		
		
		//retorna quantos foram removidos.
		return parent::delete1($condicao);
	}

	public function logar($login,$senha){
		return parent::logar($login,$senha);
	}
}