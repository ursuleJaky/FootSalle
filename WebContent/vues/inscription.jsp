<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>FootSalle</title>
		<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
		<meta charset="utf-8" />
		<title>S'inscrire</title>

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

	<body class="pace-black">

		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html">Accueil</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="annonces.html">Annonces <span class="sr-only">(current)</span></a></li>


					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">Link</a></li>
						<li class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" href="#">Mon compte
								<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="mes_annonces.html">Mes annonces</a></li>
								<li><a href="profil.html">Mon profil</a></li>
								<li><a href="preference.html">préférences</a></li>
								<li><a href="index.html">Déconnexion</a></li>
							</ul>
						</li>
					</ul>
				</div><!-- /.navbar-collapse -->
			</div><!-- /.container-fluid -->
		</nav>


		<div class="container">
			<div class="row">
				<div class="col-xs-12">

					<div class="main">

						<div class="row">
							<div class="col-xs-12 col-sm-6 col-sm-offset-1">

								<h1>Inscription</h1>

								<form action="/controleursInscription" name="login" role="form" class="form-horizontal" method="post" accept-charset="utf-8">

									<div class="form-group">
										<div class="col-md-8">
											<label for="inscription_nom">Nom</label>
											<input name="nom" placeholder="Nom" class="form-control" type="text" id="inscription_nom"/>
										</div>
									</div> 

									<div class="form-group">
										<div class="col-md-8">
											<label for="">Prénom</label>
											<input name="prenom" placeholder="Prénom" class="form-control" type="text" id="UserPassword"/>
										</div>
									</div> 

									<div class="form-group">
										<div class="col-md-8">
											<label for="">Date de naissance</label>
											<input name="date naissance" placeholder="date de naissance" class="form-control" type="date" id="inscription_dn"/>
										</div>
									</div> 

									<div class="form-group">
										<div class="col-xs-6 col-sm-12 col-md-12 col-lg-12">
											<label for="">Adresse mail</label>
											<input name="mail" placeholder="Adresse mail" class="form-control" type="mail" id="inscription_am"/>
										</div>
										<div class="col-xs-6 col-sm-12 col-md-12 col-lg-12">
											<label for="">Adresse mail</label>
											<input name="mail" placeholder="Adresse mail" class="form-control" type="mail" id="inscription_am"/>
										</div>
									</div> 
									
									<div class="form-group">
										<div class="col-md-8">
											<label for="">Téléphone</label>
											<input name="mail" placeholder="numéro de téléphone" class="form-control" type="number" id="inscription_phone"/>
										</div>
									</div> 

									<div class="form-group col-md-12">
										<label for="inscription_sexe">Sexe/Genre</label>
										<div class="" id="inscription_sexe" >
											<label class="radio-inline">
												<input name="sexe" type="radio" value=""/> Homme
											</label>
											<label class="radio-inline">
												<input name="sexe" type="radio" value=""/> Femme 
											</label>
											<label class="radio-inline">
												<input name="sexe" type="radio" value=""/> Aucun 
											</label>
										</div>
									</div>

									<div class="form-group">
										<div class="col-md-8">
											<label for="inscription_sexe">Mot de passe</label>
											<input id="inscription_mdp" name="password" placeholder="Mot de passe" class="form-control" type="password" id="inscription_mdp"/>
										</div>
									</div> 

									<div class="form-group">
										<div class="col-md-8">
											<label for="inscription_sexe">Confirmation mot de passe</label>
											<input id="inscription_mdp_confirmation" name="password_confirmation" placeholder="Confirmez votre mot de passe" class="form-control" type="password" id="inscription_mdp_confirmation"/>
										</div>
									</div> 

									<div>
										<div class="form-group">
											<div class="col-md-offset-0 col-md-8">
												<input id="inscription_rejoindre" class="btn btn-success btn btn-success" type="submit" value="Nous rejoindre"/>
											</div>

										</div>

									</div>

								</form>

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