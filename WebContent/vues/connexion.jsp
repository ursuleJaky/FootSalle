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
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/global/bootstrap/css/bootstrap.min.css" />
				
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/pages/css/profil.css"/>

		<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

		<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Lato:400,700,300" />
		


		<!-- javascript -->
		
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		
		<script type="text/javascript" src="${pageContext.request.contextPath}/public/global/bootstrap/js/bootstrap.min.js"></script>
		
		<!--  <script type="text/javascript" src="${pageContext.request.contextPath}/public/pages/js/index.js"></script> -->

		<!-- <script type="text/javascript" src="${pageContext.request.contextPath}/public/global/pages/js/pages.js"></script>-->

		<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDNDFsPWL9fW9OFIzR0QQs_H8pCsmlP4DU&callback=myMap"></script>

	</head>

	<%@include  file="header.jsp" %>
	
	<div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="ConnexionLabel"></h4>
		      </div>
		      <div class="modal-body ">
		      	<body class="pace-black space1">

					<div class="container delete_space">
						<div class="row">
						
							<div class="col-md-12 foot">
			
								<div class="main space1">
									
									<div class="">
									
										<div class=" col-md-6 gauche cadre">
			
											<h3>Inscription</h3>
			
											<form action="/users/login" name="login" role="form" class="form-horizontal" method="post" accept-charset="utf-8">
											
											
												<div class="form-group">
													<div class="col-md-12">
														<label for="inscription_am">E-MAIL</label>
														<input name="email" placeholder="email" class="form-control" type="text" id="inscription_am"/>
													</div>
												</div> 
				
													<div class="form-group">
														<div class="col-md-12">
															<label for="">PSEUDO</label>
															<input name="inscription_pseudo" placeholder="Pseudo" class="form-control" type="text" id="inscription_pseudo"/>
														</div>
													</div>
			
												<div class="form-group">
													<div class="col-md-12">
														<label for="inscription_mdp">MOT DE PASSE</label>
														<input id="inscription_mdp" name="password" placeholder="Mot de passe" class="form-control" type="password" id="inscription_mdp"/>
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
									
										<div class=" col-md-6 droite cadre">
			
											<h3>Connexion</h3>
			
											<form name="login" role="form" class="form-horizontal " method="post" accept-charset="utf-8">
			
												<div class="form-group">
													<div class="col-md-12">
														<label for="">ADRESSE MAIL</label>
														<input name="username" placeholder="Idenfiant" class="form-control" type="text" id="UserUsername"/>
													</div>
												</div> 
			
												<div class="form-group">
													<div class="col-md-12">
														<label for="">MOT DE PASSE</label>
														<input name="password" placeholder="Mot de passe" class="form-control" type="password" id="UserPassword"/>
													</div>
												</div>
												
												<div class="form-group col-md-12">
													<div class="space_new"><a href="
														https://www.google.com" target="_blanck">Mot de passe oublié</a>
													</div>
												</div>
			
												<div>
													<div class="form-group">
														<div class="col-md-offset-0 col-md-8">
															<input  class="btn btn-success btn btn-success" type="submit" value="Se Connecter"/>
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
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
		      </div>
		    </div>
		  </div>

	<footer>

	</footer>

</html>