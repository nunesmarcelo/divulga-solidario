<?php

class SuperDao extends MysqlDbDao{
	protected $tabela;
	protected $classe;
	
	public function __construct($tabela,$classe=null){
		parent::__construct('u227666333_bd');
		$this->setTabela($tabela);
		$this->setClasse($classe);
	}
	
	public function getClasse(){
		return $this->classe;
	}
	public function setClasse($classe){
		$this->classe = $classe;
	}
	
	public function getTabela(){
		return $this->tabela;
	}
	
	public function setTabela($tabela){
		$this->tabela = $tabela;
	}
	
	
	
	public function insert1($arrayCamposValores){
		return parent::insert($this->getTabela(),$arrayCamposValores);
	}
	
	public function update1($arrayCamposValores,$condicao){
		return parent::update($this->getTabela(),$arrayCamposValores, $condicao);
	}
	
	public function delete1($condicao){
		return parent::delete($this->getTabela(),$condicao);
	}
	
	public function select1($arrayCampos,$condicao){
		return parent::select($this->getTabela(),$arrayCampos,$condicao);
	}
	
	public function search1($arrayCampos,$condicao,$ordenacao){
		$matriz = parent::select($this->getTabela(),$arrayCampos,$condicao,$ordenacao);
		
		if($matriz ===false || empty($this->getClasse())){
			return false;
		}

		$classe = $this->getClasse();
		
		$objetos = array();
		foreach($matriz as $registro){
			$objeto = new $classe();
			$objeto->toObject($registro);
			$objetos[]=$objeto;
		}
		
		return $objetos;
	}

	public function doar($id_item,$id_contribuinte,$data_marcada,$entregue){
		return parent::doar($id_item,$id_contribuinte,$data_marcada,$entregue);
	}
}