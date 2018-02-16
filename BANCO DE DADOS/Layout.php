<!DOCTYPE html>

<html lang="pt-br">
	<head>
		<title id="titulo_site">Divulga Solidário></title>
		<meta charset="utf-8"> </meta>
		<meta name="viewport" content="width=device-width" user-scalable=no, initial-scale=1.0, maximun-scale=1.0, minimum-scale= 1.0 ">
		
		<!--
	    <link rel="stylesheet" type="text/css" href="css/reset.css" media="all"/>
		<link rel="stylesheet" type="text/css" href="css/estilo1.css" media="all"/>  -->

		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/estiloo.css?version=130">
		
		<script>
		function formatar(mascara, documento){
		  var i = documento.value.length;
		  var saida = mascara.substring(0,1);
		  var texto = mascara.substring(i)
		  
		  if (texto.substring(0,1) != saida){
		            documento.value += texto.substring(0,1);
		  }
		  
		}
		</script>
	</head>
	<body>
			<!-- NAVBAR COM MENU -->
			<nav class="navbar navbar-fixed-top navbar-default navbar-transparente">
				<div class="container">
					<!-- header -->
					<div class="navbar-header">
						<!-- botão toogle -->
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#barra-navegacao">
						<span class="sr-only">alternar navegação</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						</button>

						<a href="#" class="navbar-brand">
							<!-- <img src="images/marca.png" alt="Site ijunior" id="sistemaijunior" width="500px" /> -->
							<span class="img-logo img-responsive img-circle">Divulga</span>
						</a>
					</div>

					<!-- MENU -->
					<div class="collapse navbar-collapse" id="barra-navegacao">
						<ul class="nav navbar-nav navbar-right">
							<li >
								<a href="index.php" alt="Home">Home</a>
							</li>
							<li>
								<a href="Doacao.html" alt="Doacoes">Doações</a>
							</li>
							<li>
								<a href="Instituicao.html" alt="Clientes">Instituições</a>
							</li>
							
						</ul>
					</div> <!-- menu -->


				</div> <!-- container -->
			</nav> <!-- FIM NAVBAR + MENU -->
			
			
				<div class="col-md-10 container-fluid centered " >
					<div class=" row">
						<div class="conteudo_site"></div>
						<br>
					</div>	
					
				</div>
			
			
			
				
			<!-- RODAPÉ -->
			<footer class="col-md-12">
				<div class="container">
					<mdall class="col-md-offset-5"> 
						Sistema iJunior - Marcelo e Henrique | 

							<a href="http://www.ijunior.com.br" target="_blank">   
								<img src="images/fundomeio.png" alt="Site empresa" id="imgcontatos1"/>
							</a>

							 <a href="https://www.facebook.com/ufmginformaticajr" target="_blank">
								<img src="images/facebook.png" alt="Facebook" id="imgcontatos2"/>
							</a>
					</mdall>
				</div>
			</footer>
		

		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</body>
</html>
