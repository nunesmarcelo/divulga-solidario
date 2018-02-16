<?php

class MysqlDbDao {
	protected $host;
	protected $user;
	protected $password;
	protected $dbName;
	protected $connection;
	
	public function __construct($dbName, $host = null, $user=null, $password = null){
			$this->setDbName($dbName);
			$this->setUser($user);
			$this->setPassword($password);
			$this->setHost($host);
			$this->connect();
	}
	
	public function __destruct(){
		$this->disconnect();
	}
	
	public function getHost(){
		return $this->host;
	}
	
	public function setHost($host){
		$this->host = ($host === null) ? 'sql50.main-hosting.eu' : $host;
		//$this->host = ($host === null) ? 'mysql.hostinger.com.br' : $host;
	}
	
	
	public function getDbName(){
		return $this->dbName;
	}
	
	public function setDbName($dbName){
		$this->dbName = $dbName;
	}
	public function getUser(){
		return $this->user;
	}
	
	public function setUser($user){
		$this->user = ($user === null) ? 'u227666333_root' : $user;
	}
	public function getPassword(){
		return $this->password;
	}
	
	public function setPassword($password){
		$this->password = ($password === null) ? 'tiaogaviao' : $password;
	}
	
	
	public function getConnection(){
		return $this->connection;
	}
	
	public function setConnection($connection){
		$this->connection=$connection;
	}
	
	public function connect(){
		//echo "{$this->getHost()},{$this->getUser()},{$this->getPassword()},{$this->getDbName()}";
		$connection = new mysqli($this->getHost(),$this->getUser(),$this->getPassword(),$this->getDbName());
		if($connection->connect_errno){
			throw new Exception("Falha na conexão.");
		}
		$this->setConnection($connection);
	}
	
	public function disconnect(){
		$this->setConnection(null);
	}
	
	public function query($sql){
		return $this->getConnection()->query($sql);
	}
	
	public function insert($tabela,$arrayCamposValores){
		$campos = array_keys($arrayCamposValores);
		$valores = array_values($arrayCamposValores);
		
		$campos= implode(',',$campos);
		$valores=implode('","',$valores);
		
		$sql = "insert into $tabela ($campos) values (\"$valores\")";
		
		if(!$this->query($sql)){
			return false;
		}
		
		return $this->getConnection()->insert_id;
		
		//return $sql;
	}
	
	public function update($tabela,$arrayCamposValores,$condicao){
		$campos=array();
		foreach($arrayCamposValores as $campo => $valor){
			$campos[] = " $campo = \"$valor\"";
		}
		
		$campos = implode(',',$campos);
		
		$sql = "update $tabela set $campos where $condicao";

		if(!$this->query($sql)){
			return false;
		}
		
		return $this->getConnection()->affected_rows;

		//return $sql;
	}
	
	public function delete($tabela,$condicao){
		$sql = "delete from $tabela where $condicao";
		if(!$this->query($sql)){
			return false;
		}
		return $this->getConnection()->affected_rows;
	}
	
	public function select($tabela,$arrayCampos,$condicao,$ordenacao=""){
		$arrayCampos = implode(',',$arrayCampos);
		$sql = "select $arrayCampos from $tabela where $condicao ORDER BY $ordenacao";
		
		$result = $this->query($sql);
		if(!$result){
			return false;
		}
		
		$registros = array();
		while($registro = $result->fetch_assoc()){
			$registros[] = $registro;
		}
		
		return $registros;
	}

	public function doar($id_item, $id_contribuinte , $data_marcada ,$entregue){
		//SE ENTREGUE
		if($entregue != 'null'){
			$sql = "update item set entregue=0 , data_marcada = NULL , contribuinte_id_contribuinte = NULL where id_item = $id_item";
		}
		//SENÃO
		else{
			$sql = "update item set entregue=1 , data_marcada = '{$data_marcada}' , contribuinte_id_contribuinte = $id_contribuinte where id_item = $id_item";
		}
		
		if(!$this->query($sql)){
			return false;
		}
		
		return $this->getConnection()->affected_rows;
	}
}
