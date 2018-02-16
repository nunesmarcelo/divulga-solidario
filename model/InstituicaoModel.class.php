<?php

class InstituicaoModel implements ArrayToObjectConverterModel{
	protected $id_instituicao;
	protected $nome;
	protected $estado;
	protected $cidade;
	protected $bairro;
	protected $rua;
	protected $numero;
	protected $telefone;
	protected $responsavel;
	protected $email;
	protected $descricao;
	protected $imagem_instituicao;
	
	public function getId_instituicao(){
		return $this->id_instituicao;
	}
	public function getNome(){
		return $this->nome;
	}
	public function getEstado(){
		return $this->estado;
	}
	public function getCidade(){
		return $this->cidade;
	}
	public function getBairro(){
		return $this->bairro;
	}
	public function getRua(){
		return $this->rua;
	}
	public function getNumero(){
		return $this->numero;
	}
	public function getTelefone(){
		return $this->telefone;
	}
	public function getResponsavel(){
		return $this->responsavel;
	}
	public function getEmail(){
		return $this->email;
	}
	public function getDescricao(){
		return $this->descricao;
	}
	public function getimagem_instituicao(){
		return $this->imagem_instituicao;
	}
	
	public function setId_instituicao($id_instituicao){
		$this->id_instituicao = $id_instituicao;
	}
	public function setNome($nome){
		$this->nome = $nome;
	}
	public function setEstado($estado){
		$this->estado = $estado;
	}
	public function setCidade($cidade){
		$this->cidade = $cidade;
	}
	public function setBairro($bairro){
		$this->bairro = $bairro;
	}
	public function setRua($rua){
		$this->rua = $rua;
	}
	public function setNumero($numero){
		$this->numero = $numero;
	}
	public function setTelefone($telefone){
		$this->telefone = $telefone;
	}
	public function setResponsavel($responsavel){
		$this->responsavel = $responsavel;
	}
	public function setEmail($email){
		$this->email = $email;
	}
	public function setDescricao($descricao){
		$this->descricao = $descricao;
	}
	public function setimagem_instituicao($imagem_instituicao){
		$this->imagem_instituicao = $imagem_instituicao;
	}
	
	public function toObject(array $array){

		$id_instituicao     = empty($array['id_instituicao']) ? null  : $array['id_instituicao'];
		$nome     = empty($array['nome']) ? null  : $array['nome'];
		$estado     = empty($array['estado']) ? null  : $array['estado'];
		$cidade     = empty($array['cidade']) ? null  : $array['cidade'];
		$bairro     = empty($array['bairro']) ? null  : $array['bairro'];
		$rua     = empty($array['rua']) ? null  : $array['rua'];
		$numero     = empty($array['numero']) ? null  : $array['numero'];
		$telefone     = empty($array['telefone']) ? null  : $array['telefone'];
		$responsavel     = empty($array['responsavel']) ? null  : $array['responsavel'];
		$email     = empty($array['email']) ? null  : $array['email'];
		$descricao     = empty($array['descricao']) ? null  : $array['descricao'];
		$imagem_instituicao     = empty($array['imagem_instituicao']) ? null  : $array['imagem_instituicao'];
		
		$this->setId_instituicao($id_instituicao);
		$this->setNome($nome);
		$this->setEstado($estado);
		$this->setCidade($cidade);
		$this->setBairro($bairro);
		$this->setRua($rua);
		$this->setNumero($numero);
		$this->setTelefone($telefone);
		$this->setResponsavel($responsavel);
		$this->setEmail($email);
		$this->setDescricao($descricao);
		$this->setimagem_instituicao($imagem_instituicao);
	}
	
	public function valid(){

		if(empty($this->getNome()) || empty($this->getEstado()) || empty($this->getCidade()) || empty($this->getBairro())|| empty($this->getRua())|| empty($this->getNumero())|| empty($this->getTelefone())){
			return false;
		}
		
		return true;
	}
}