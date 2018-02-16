
<?php 	
	require_once 'funcoes/funcoes.php';
	
	$view_projeto = new ProjetoView();
	$view_cliente = new ClienteView();
	$mensagem = null;


	

	$html = '
		<section class="col-md-12 container">
			<h3> Informações principais </h3>
			<br/> ';





	//PROJETOS DOS PRÓXIMOS 7 DIAS
	$html .= "
			<article class=\"container\">
				<h4>Projetos dos 7 proximos dias </h4>
				<table>
					<tr>
						<th>Nome do projeto</th>
						<th>Cliente</th>
						<th>Data de finalização</th>
					</tr>

	";

	$listaProjetos = $view_projeto->search(); //listando todos os projetos.
	$listaClientes = $view_cliente->search();
	foreach($listaProjetos as $projeto){
		$data = date("y-m-d");
		if(strtotime($projeto->getFinalizacao()) >= strtotime($data) && strtotime($projeto->getFinalizacao()) <= strtotime("+7 days",strtotime($data))){
				$html .= "
						<tr>
							<td> 
								{$projeto->getNome()}
							</td>
				";
				foreach($listaClientes as $cliente){
					if($projeto->getClienteId() == $cliente->getId()){
						$html .= "
							<td>
								{$cliente->getNome()}
						    </td>
						";
					}
				}
				$data2 = date('d/m/Y', strtotime($projeto->getFinalizacao()));
				$html .= "
							<td>				
								{$data2}
							</td>
						</tr>
				";
		}
	}
	if(empty($listaProjetos)){
			$html .= '
					<tr>
						<td colspan="3">Nenhum projeto cadastrado </td>
					</tr>
			';
	}
		$html .= '
				</table>
					<br/>
					
			</article>
		';

	$html .= "
			<article class=\"container\">
				<h4>Os 5 projetos mais caros: </h4>
				<table>
					<tr>
						<th>Nome do projeto</th>
						<th>Cliente</th>
						<th>Valor</th>
					</tr>

	";
	for($i=0;$i<5;$i++){	
		$maior = 0;
		foreach($listaProjetos as $projeto){
			if($projeto->getValor() >= $maior){
					$maior = $projeto->getValor();
					$maiorid = $projeto->getProjetoId(); 
			}
		}
		foreach($listaProjetos as $projeto){
			if($projeto->getProjetoId() == $maiorid){
				$html .= "
									<tr>
										<td> 
											{$projeto->getNome()}
										</td>
							";
							foreach($listaClientes as $cliente){
								if($projeto->getClienteId() == $cliente->getId()){
									$html .= "
										<td>
											{$cliente->getNome()}
									    </td>
									";
								}
							}
							$html .= "
										<td>
											{$projeto->getValor()}
										</td>
									</tr>
							";
				$projeto->setValor(0);
			}
		}
	}
	if(empty($listaProjetos)){
			$html .= '
					<tr>
						<td colspan="3">Nenhum projeto cadastrado </td>
					</tr>
			';
	}
		$html .= '
				</table>
					<br/>
					
			</article>
		';


		$titulo = 'Home';
		require_once 'Layout.php';
					