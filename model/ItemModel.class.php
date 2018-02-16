<?php

class ItemModel implements ArrayToObjectConverterModel{
	protected $id_item;
	protected $nome;
	protected $quantidade;
	protected $descricao;
	protected $entregue;
	protected $data_marcada;
	protected $descricao_doacao;
	protected $instituicao_id_instituicao;
	protected $contribuinte_id_contribuinte;
	
	
	public function getid_item(){
		return $this->id_item;
	}
	
	public function getnome(){
		return $this->nome;
	}
	public function getdata_marcada(){
		return $this->data_marcada;
	}
	public function getentregue(){
		return $this->entregue;
	}
	public function getquantidade(){
		return $this->quantidade;
	}
	public function getdescricao(){
		return $this->descricao;
	}
	public function getdescricao_doacao(){
		return $this->descricao_doacao;
	}
	public function getinstituicao_id_instituicao(){
		return $this->instituicao_id_instituicao;
	}public function getcontribuinte_id_contribuinte(){
		return $this->contribuinte_id_contribuinte;
	}
	
	
	
	public function setid_item($id_item){
		$this->id_item = $id_item;
	}
	
	public function setnome($nome){
		$this->nome = $nome;
	}
	public function setdata_marcada($data_marcada){
		$this->data_marcada = $data_marcada;
	}
	public function setentregue($entregue){
		$this->entregue = $entregue;
	}
	public function setquantidade($quantidade){
		$this->quantidade = $quantidade;
	}
	public function setdescricao($descricao){
		$this->descricao = $descricao;
	}
	public function setdescricao_doacao($descricao_doacao){
		$this->descricao_doacao = $descricao_doacao;
	}
	public function setinstituicao_id_instituicao($instituicao_id_instituicao){
		$this->instituicao_id_instituicao = $instituicao_id_instituicao;
	}
	public function setcontribuinte_id_contribuinte($contribuinte_id_contribuinte){
		$this->contribuinte_id_contribuinte = $contribuinte_id_contribuinte;
	}
	
	public function toObject(array $array){

		$id_item     = empty($array['id_item']) ? null  : $array['id_item'];
		$nome     = empty($array['nome']) ? null  : $array['nome'];
		$data_marcada     = empty($array['data_marcada']) ? null  : $array['data_marcada'];
		$entregue     = empty($array['entregue']) ? null  : $array['entregue'];
		$quantidade     = empty($array['quantidade']) ? null  : $array['quantidade'];
		$descricao     = empty($array['descricao']) ? null  : $array['descricao'];
		$descricao_doacao     = empty($array['descricao_doacao']) ? null  : $array['descricao_doacao'];
		$instituicao_id_instituicao     = empty($array['instituicao_id_instituicao']) ? null  : $array['instituicao_id_instituicao'];
		$contribuinte_id_contribuinte     = empty($array['contribuinte_id_contribuinte']) ? null  : $array['contribuinte_id_contribuinte'];
		
		
		
		$this->setid_item($id_item);
		$this->setnome($nome);
		$this->setdata_marcada($data_marcada);
		$this->setentregue($entregue);
		$this->setquantidade($quantidade);
		$this->setdescricao($descricao);
		$this->setdescricao_doacao($descricao_doacao);
		$this->setinstituicao_id_instituicao($instituicao_id_instituicao);
		$this->setcontribuinte_id_contribuinte($contribuinte_id_contribuinte);
		
		
	}
	
	public function valid(){

		if(empty($this->getnome()) || empty($this->getquantidade()) || empty($this->getdescricao_doacao())|| empty($this->getinstituicao_id_instituicao())){
			return false;
		}
		
		return true;
	}
}