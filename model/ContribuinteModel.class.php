<?php

class ContribuinteModel implements ArrayToObjectConverterModel{
	protected $id_contribuinte;
	protected $nome;
	protected $telefone;
	protected $email;
	
	public function getid_contribuinte(){
		return $this->id_contribuinte;
	}
	public function getnome(){
		return $this->nome;
	}
	public function gettelefone(){
		return $this->telefone;
	}
	public function getemail(){
		return $this->email;
	}
	
	public function setid_contribuinte($id_contribuinte){
		$this->id_contribuinte = $id_contribuinte;
	}
	public function setnome($nome){
		$this->nome = $nome;
	}
	public function settelefone($telefone){
		$this->telefone = $telefone;
	}
	public function setemail($email){
		$this->email = $email;
	}
	
	public function toObject(array $array){

		$id_contribuinte     = empty($array['id_contribuinte']) ? null  : $array['id_contribuinte'];
		$nome     = empty($array['nome']) ? null  : $array['nome'];
		$telefone     = empty($array['telefone']) ? null  : $array['telefone'];
		$email     = empty($array['email']) ? null  : $array['email'];
		
		$this->setid_contribuinte($id_contribuinte);
		$this->setnome($nome);
		$this->settelefone($telefone);
		$this->setemail($email);
	}
	
	public function valid(){

		if(empty($this->getnome())){
			return false;
		}
		
		return true;
	}
}