<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>FootSalle</title>
		<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
		<meta charset="utf-8" />
		<title>Charte graphique</title>

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
	
	<jsp:include page="header.jsp" />
	<%-- <%String userConnected = (String)request.getAttribute("userConnected");%>
    <span id="connected">
    	<%out.println(userConnected); %>
    </span> --%>
    <span id="spanTest"></span>
    <% String userConnected = (String) session.getAttribute("email"); %>
    <span>
    	<%out.println("Ecco -"+userConnected+"\n"); %>
    </span> 
		<!-- <nav class="navbar navbar-default">
			<div class="container-fluid">
				Brand and toggle get grouped for better mobile display
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html">Accueil</a>
				</div>

				Collect the nav links, forms, and other content for toggling
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

					<ul class="nav navbar-nav navbar-right">
						<li><a href="annonces.html">Annonce</a></li>
						<li><a href="connexion.html">Connexion</a></li>
						<li><a href="inscription.html">Inscription</a></li>
						<li><a href="mes_annonces.html">Mes annonces</a></li>
						<li><a href="preference.html">Préférences</a></li>
						<li><a href="profil.html">Profil</a></li>
						<li><a href="proposer_annonce.html">Proposer une annonce</a></li>
						<li class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" href="#">Mon compte
								<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Mes annonces</a></li>
								<li><a href="#">Mon profil</a></li>
								<li><a href="#">rien</a></li>
								<li><a href="#">Déconnexion</a></li>
							</ul>
						</li>
					</ul>
				</div>/.navbar-collapse
			</div>/.container-fluid
		</nav> -->


		<!-- <div class="container">
			<div class="row">
				<div class="col-xs-12">

					<div class="main">

						<div class="row">
							<div class="col-xs-12 col-sm-6 col-sm-offset-1">

								<h1>Connexion</h1>
								<h2></h2>

								<form action="/users/login" name="login" role="form" class="form-horizontal" method="post" accept-charset="utf-8">

									<div class="form-group">
										<div class="col-md-8"><input name="username" placeholder="Idenfiant" class="form-control" type="text" id="UserUsername"/></div>
									</div> 

									<div class="form-group">
										<div class="col-md-8"><input name="password" placeholder="Mot de passe" class="form-control" type="password" id="UserPassword"/></div>
									</div> 

									<div>
										<div class="form-group">
											<div class="col-md-offset-0 col-md-8"><input  class="btn btn-success btn btn-success" type="submit" value="Connexion"/>

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
								<p class="credits">Developpé par <a href="http://www.monsite.com" target="_blank">une super agence</a>.</p>

							</div>
						</div>

					</div>

				</div>
			</div>
		</div> -->

		<!-- <section class="container relative">
			<div class="top-left z-index-10">
				<div class="bg-white p-l-20 p-r-20 p-t-20 p-b-20">
					<img src="img/logo_b.png" data-src-retina="img/logo_b_2x.png" class="" alt="" width="17" height="20">
				</div>
			</div>
		</section> -->



	</body>



	<footer>

<jsp:include page="footer.jsp" />
	</footer>




</html>