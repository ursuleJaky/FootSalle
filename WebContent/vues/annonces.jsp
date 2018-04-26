<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>FootSalle</title>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta charset="utf-8" />

<title>Se connecter</title>

<meta content="Davy NANA" name="author" />

<!-- stylesheet -->
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />

<link rel="stylesheet" type="text/css" href="../css/pages.css" />

<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/css?family=Lato:400,700,300" />
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<!-- javascript -->
<script type="text/javascript" src="../js/bootstrap.min.js"></script>

<script type="text/javascript" src="../js/page.js"></script>

<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDNDFsPWL9fW9OFIzR0QQs_H8pCsmlP4DU&callback=myMap"></script>

</head>
<body class="pace-black">

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">Accueil</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="annonces.html">Annonces <span
							class="sr-only">(current)</span></a></li>


				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Link</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Mon compte <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="mes_annonces.html">Mes annonces</a></li>
							<li><a href="profil.html">Mon profil</a></li>
							<li><a href="preference.html">préférences</a></li>
							<li><a href="index.html">Déconnexion</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

</body>

<footer> </footer>

<div class="container">
	<div class="row">
		<div class="col-xs-12">

			<div class="main">

				<div class="row">
					<div class="col-xs-12 col-sm-6 col-sm-offset-1">

						<h1>Soumettre annonce</h1>

						<form action="/users/login" name="login" role="form"
							class="form-horizontal" method="post" accept-charset="utf-8">


							<div class="form-group">
								<div class="col-md-8">
									<span style="color: #AAA; font-size: 12px">participants</span>
									<input name="nom" placeholder="Nom" class="form-control"
										type="number" id="UserUsername" />
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-8">
									<input name="prenom" placeholder="Prénom" class="form-control"
										type="text" id="UserPassword" />
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-8">
									<input name="date naissance" placeholder="date de naissance"
										class="form-control" type="date" id="UserPassword" />
								</div>
							</div>

							<!--	<div class="form-group">
<div class="col-md-8"><input name="a" placeholder="Adresse" class="form-control" type="text" id="UserPassword"/></div>
</div> -->

							<div class="form-group">
								<div class="col-md-8">
									<input name="mail" placeholder="Adresse mail"
										class="form-control" type="mail" id="UserPassword" />
								</div>
							</div>

							<div class="form-group">
								<label class="radio-inline"> <input
									id="inscription_femme" type="radio" value="" /> Homme
								</label> <label class="radio-inline"> <input
									id="inscription_femme" type="radio" value="" /> Femme
								</label>
							</div>

							<div class="form-group">
								<div class="col-md-8">
									<input id="inscription_mdp" name="password"
										placeholder="Mot de passe" class="form-control"
										type="password" id="UserPassword" />
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-8">
									<input id="inscription_mdp_confirmation"
										name="password_confirmation"
										placeholder="Confirmez votre mot de passe"
										class="form-control" type="password" id="UserPassword" />
								</div>
							</div>

							<div>
								<div class="form-group">
									<div class="col-md-offset-0 col-md-8">
										<input id="annonce_soumettre"
											class="btn btn-success btn btn-success" type="submit"
											value="Soumettre" />
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



<footer> </footer>




</html>