<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>FootSalle</title>
		<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
		<meta charset="utf-8" />
		<title> Se connecter</title>

		<meta content="Charte Graphique" name="description" />
		<meta content="Davy NANA" name="author" />

		<!-- stylesheet -->
		<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css"/>

		<link rel="stylesheet" type="text/css" href="../css/pages.css"/>

		<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

		<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Lato:400,700,300" />
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


		<!-- javascript -->
		<script type="text/javascript" src="../js/bootstrap.min.js"></script>

		<script type="text/javascript" src="../js/page.js"></script>

		<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDNDFsPWL9fW9OFIzR0QQs_H8pCsmlP4DU&callback=myMap"></script>

	</head>

	<header> <%@ include file="header.jsp" %> </header>
	
	<body class="pace-black space1">

		<div class="container">
			<div class="row">
				<div class="col-xs-12">

					<div class="main space1">
						
						<div class="row">
							<div class="col-xs-12 col-sm-6 col-sm-offset-1">

								<h1>Connexion</h1>

								<form name="login" role="form" class="form-horizontal space2" method="post" accept-charset="utf-8">

									<div class="form-group">
										<div class="col-md-8">
											<label for="">Adresse mail</label>
											<input name="username" placeholder="Idenfiant" class="form-control" type="text" id="UserUsername"/>
										</div>
									</div> 

									<div class="form-group">
										<div class="col-md-8">
											<label for="">Mot de passe</label>
											<input name="password" placeholder="Mot de passe" class="form-control" type="password" id="UserPassword"/>
										</div>
									</div> 

									<div>
										<div class="form-group">
											<div class="col-md-offset-0 col-xs-6">
												<input  class="btn btn-success btn btn-success" type="submit" value="Connexion"/>
											</div>
											<div class="col-md-offset-0 col-xs-6">
												<input  class="btn btn-success btn btn-success" type="submit" value="Inscription"/>
											</div>

										</div>

									</div>

								</form>

								<div class="form-group">
									<div><a href="
										https://www.google.com" target="_blanck">Mot de passe oublié</a>
									</div>
								</div>

							</div>
						</div>

					</div>

				</div>
			</div>
		</div>



	</body>

	<footer>

	</footer>

</html>