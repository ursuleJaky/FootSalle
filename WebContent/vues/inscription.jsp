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


		<div class="container">
			<div class="row">
				<div class="col-xs-12">

					<div class="main">

						<div class="row">
							<div class="col-xs-12 col-sm-6 col-sm-offset-1">

								<h1>Inscription</h1>

								<form action="controleInscription" name="login" role="form" class="form-horizontal" method="post" accept-charset="utf-8">

									<div class="form-group">
										<div class="col-md-8">
											<label for="inscription_nom">Nom</label>
											<input name="nom" placeholder="Nom" class="form-control" type="text" id="nom"/>
										</div>
									</div> 

									<div class="form-group">
										<div class="col-md-8">
											<label for="">Prénom</label>
											<input name="prenom" placeholder="Prénom" class="form-control" type="text" id="prenom"/>
										</div>
									</div> 

									<div class="form-group">
										<div class="col-md-8">
											<label for="">Date de naissance</label>
											<input name="dateNaissance" placeholder="date de naissance" class="form-control" type="date" id="dateNaissance"/>
										</div>
									</div> 

									<div class="form-group">
										<div class="col-xs-6 col-sm-12 col-md-12 col-lg-12">
											<label for="">Adresse mail</label>
											<input name="email" placeholder="Adresse mail" class="form-control" type="mail" id="email"/>
										</div>
										<div class="col-xs-6 col-sm-12 col-md-12 col-lg-12">
											<label for="">Adresse mail</label>
											<input name="email" placeholder="Adresse mail" class="form-control" type="mail" id="email"/>
										</div>
									</div> 
									
									<div class="form-group">
										<div class="col-md-8">
											<label for="">Téléphone</label>
											<input name="telephone" placeholder="numéro de téléphone" class="form-control" type="number" id="telephone"/>
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
										</div>
									</div>

									<div class="form-group">
										<div class="col-md-8">
											<label for="inscription_sexe">Mot de passe</label>
											<input name="motDePasse" placeholder="Mot de passe" class="form-control" type="password" id="motDePasse"/>
										</div>
									</div> 

									<div class="form-group">
										<div class="col-md-8">
											<label for="inscription_sexe">Confirmation mot de passe</label>
											<input name="confirmationMotDePasse" placeholder="Confirmez votre mot de passe" class="form-control" type="password" id="confirmationMotDePasse"/>
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