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

				"/Users/davy/git/FootSalle"		<div class="row">
							<div class="col-xs-12 col-sm-6 col-sm-offset-1">

								<h1>Soumettre annonce</h1>

								<form action="/users/login" name="login" role="form" class="form-horizontal" method="post" accept-charset="utf-8">

									<div class="form-group">
										<div class="col-xs-12">
											<label for="annonce_nom">Nom de l'evenement</label>
											<input name="prenom" placeholder="Nom de l'evenement" class="form-control" type="text" id="annonce_nom"/>
										</div>
									</div> 

									<div class="form-group">
										<div class="col-xs-12">
											<label for="annonce_nbre">nombre de participants participants</label>
											<input name="nom" placeholder="nombre de participants participants" class="form-control" type="number" id="annonce_nbre"/>
										</div>
									</div> 

									<div class="form-group">

									</div> 
									
									<div class="form-group">
										<div class="col-xs-6">
											<label for="annonce_date">date de l'évenement</label>
											<input name="prenom" placeholder="Prénom" class="form-control" type="date" id="annonce_date"/>
										</div>
										
										<div class="col-xs-6">
											<label for="annonce_date">limite de date de confirmation</label>
											<input name="prenom" placeholder="Prénom" class="form-control" type="date" id="annonce_date_conformation"/>
										</div>
									</div> 
									
									<div class="row form-group">
										<div class="col-xs-6">
											<label for="annonce_heure_debut"> heure debut</label>
											<input name="heure debut" placeholder="heure debut" class="form-control" type="time" id="annonce_heure_debut"/>
										</div>
										<div class="col-xs-6">
											<label for="annonce_heure_fin"> heure fin</label>
											<input name="heure fin" placeholder="heure fin" class="form-control" type="time" id="annonce_heure_fin"/>
										</div>
									</div>


									<div class="form-group">
										<div class="col-md-8">
											<span style="color:#AAA; font-size:12px">Participants (bouton ajouter un participant)</span>
											<input id="annonce_soumettre" class="btn btn-success btn btn-success" value="Ajouter participant"/>
										</div>
									</div> 

									<!-- le pays est déjà renseigné dans le profil de l'utilisateur, c'est le genre d'information qui ne change pas tous les jours  -->

									<div class="form-group">
										<div class="col-xs-12">
											<label for="annonce_heure_fin">adresse</label>
											<input name="adresse" placeholder="Adresse" class="form-control" type="text" id="annonce_adresse"/>
										</div>
										<div class="col-xs-6">
											<label for="annonce_heure_fin">code postal</label>
											<input name="code" placeholder="code" class="form-control" type="number" id="annonce_code"/>
										</div>
										<div class="col-xs-6">
											<label for="annonce_heure_fin">ville</label>
											<input name="code" placeholder="ville" class="form-control" type="text" id="annonce_ville"/>
										</div>
									</div> 

									<div class="form-group">
										<div class="col-md-8">
											<label for="annonce_description">description</label>
											<textarea id="annonce_limite" name="description" placeholder="entrez la description de l'annonce" class="form-control" type="text" id="annonce_description">
											</textarea>
										</div>
									</div> 

									<div>
										<div class="form-group">
											<div class="col-md-offset-0 col-md-8">
												<input id="annonce_soumettre" class="btn btn-success btn btn-success" type="submit" value="Soumettre"/>
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