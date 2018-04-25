<<<<<<< HEAD
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
		
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		
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
			
											<form action="controleInscription" name="login" role="form" class="form-horizontal" method="post" accept-charset="utf-8">
											
											
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
														<input id="motDePasse" name="password" placeholder="Mot de passe" class="form-control" type="password" id="inscription_mdp"/>
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
													<div class="spac  rrrrggrv e fe eve e cd d ede   rv ev eve_new"><a href="
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
=======
<!--  Ajout du header Menu + CSS -->
<div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                    aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="ConnexionLabel"></h4>
        </div>
        <div class="modal-body">
            <div class="container delete_space">
                <div class="form-row">
                    <div class=" col-md-6">
                        <h3>Inscription</h3>
                        <form id="form_user_inscription" action="controleInscription" role="form"
                              class="form-horizontal" method="post" accept-charset="utf-8">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label for="inscription_pseudo">PSEUDO</label>
                                    <input id="inscription_pseudo" name="inscription_pseudo" placeholder="Pseudo"
                                           class="form-control" type="text"
                                           required/>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label for="inscription_am">E-MAIL</label>
                                    <input id="inscription_am" name="email" placeholder="email" class="form-control"
                                           type="text"
                                           required/>
                                </div>
                            </div>
                                <div class=" col-md-6 droite cadre">

                                    <h3>Connexion</h3>

                                    <!-- <form action="controleConnexion" name="login" role="form" class="form-horizontal "
                                          method="post" accept-charset="utf-8"> -->

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label for="">E-MAIL</label>
                                                <input name="email" placeholder="Idenfiant" class="form-control"
                                                       type="email" id="UserUsername" value='${email}' autofocus
                                                       required/>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label for="">MOT DE PASSE</label>
                                                <input name="motDePasse" placeholder="Mot de passe" class="form-control"
                                                       type="password" id="UserPassword" required/>
                                            </div>
                                        </div>


                            <div class="form-group">
                                <div class="col-md-12">
                                    <label for="inscription_mdp">MOT DE PASSE</label>
                                    <input id="inscription_mdp" name="motDePasse" placeholder="Mot de passe"
                                           class="form-control" type="password" required/>
                                </div>
                            </div>
                                        <div>
                                            <div class="form-group">
                                                <div class="col-md-offset-0 col-md-8">
                                                <input id="connect" type="hidden"/>
    											<input id="disconnect" type="hidden"/>
                                                    <input id="connexionButto" class="btn btn-success btn btn-success" type="submit"
                                                           value="Se Connecter"/>
                                                </div>
                                            </div>

                            <div class="form-group" align="center">
                                <div class="col-md-8">
                                    <input id="inscription_rejoindre"
                                           class="btn btn-success btn btn-success" type="submit"
                                           value="Nous rejoindre"/>
                                </div>
                            </div>


                        </form>
                    </div>
                    <div class=" col-md-6">
                        <h3>Connexion</h3>
                        <form action="controleConnexion" name="login" role="form" class="form-horizontal "
                              method="post" accept-charset="utf-8">

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label for="email">E-MAIL</label>
                                    <input id="email" name="email" placeholder="Idenfiant" class="form-control"
                                           type="email" id="UserUsername" value='${email}' autofocus
                                           required/>
                                </div>
                            </div>
                                    <!-- </form> -->

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label for="motDePasse">MOT DE PASSE</label>
                                    <input id="motDePasse" name="motDePasse" placeholder="Mot de passe"
                                           class="form-control"
                                           type="password" required/>
                                </div>
                            </div>

                            <div class="form-group" style="margin-top:28px;" align="center">
                                <div class="col-md-12">
                                    <label style="color:white;">fdsf</label>
                                    <div>
                                        <a href="https://www.google.com">Mot de passe oublié</a>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group" >
                                <div class="col-md-8">
                                    <input class="btn btn-success form-control" type="submit"
                                           value="Se Connecter"/>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="card text-white bg-danger mb-3 d-none">
                <div class="card-header">Echec de connexion</div>
                <div class="card-body">
                    <p class="card-text">Identifiant ou mot de passe incorrecte</p>
                </div>
            </div>
            <div class="card text-white bg-danger mb-3 d-none">
                <div class="card-header">Echec d'inscription</div>
                <div class="card-body">
                    <p class="card-text">Cet e-mail est déjà utilisé, veuillez choisir un autre.</p>
                </div>
            </div>
            <div class="card text-white bg-success mb-3 d-none">
                <div class="card-header">Inscription réussie</div>
                <div class="card-body">
                    <p class="card-text">Votre compte a bien été créé.</p>
                </div>
            </div>
            <div class="card text-white bg-success mb-3 d-none">
                <div class="card-header">Connexion réussie</div>
                <div class="card-body">
                    <p class="card-text">Bienvenue sur votre espace.</p>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript"
        src="${pageContext.request.contextPath}/public/global/plugins/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/public/global/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/public/global/plugins/jquery-validation/jquery.validate.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/public/global/plugins/jquery-validation/additional-methods.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/public/global/plugins/toastr/toastr.min.js"></script>
<script src="${pageContext.request.contextPath}/public/global/plugins/starr.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/public/pages/index.js"></script>


<!-- javascript -->
<script type="text/javascript" src="${pageContext.request.contextPath}/public/global/plugins/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/global/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/global/plugins/jquery-validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/global/plugins/jquery-validation/additional-methods.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/global/plugins/toastr/toastr.min.js"></script>
<script src="${pageContext.request.contextPath}/public/global/plugins/starr.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/public/pages/index.js"></script>



>>>>>>> 317b66c7308b32c7139d7e01fb43d3c1d6407e07
