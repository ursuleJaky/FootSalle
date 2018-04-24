<!--  Ajout du header Menu + CSS -->


<div class="modal-dialog" role="document">
 
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                    aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="ConnexionLabel"></h4>
        </div>
        <div class="modal-body">
            <div class="panel panel-danger">
                <div class="panel-heading">Panel with panel-danger class</div>
                <div class="panel-body">Panel Content</div>
            </div>

            <div class="container delete_space">
                <div class="row">
                    <div class="col-md-12 foot">
                        <div class="main space1">
                            <div class="">
                                <div class=" col-md-6 gauche cadre">
                                    <h3>Inscription</h3>
                                    <form id="form_user_inscription" action="controleInscription" role="form"
                                          class="form-horizontal" method="post" accept-charset="utf-8">
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label for="">PSEUDO</label>
                                                <input name="inscription_pseudo" placeholder="Pseudo"
                                                       class="form-control" type="text" id="inscription_pseudo"
                                                       required/>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label for="inscription_am">E-MAIL</label>
                                                <input name="email" placeholder="email" class="form-control" type="text"
                                                       id="inscription_am" required/>
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label for="inscription_mdp">MOT DE PASSE</label>
                                                <input id="motDePasse" name="motDePasse" placeholder="Mot de passe"
                                                       class="form-control" type="password" required/>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="form-group">
                                                <div class="col-md-offset-0 col-md-8">
                                                    <input id="inscription_rejoindre"
                                                           class="btn btn-success btn btn-success" type="submit"
                                                           value="Nous rejoindre"/>
                                                </div>

                                            </div>

                                        </div>

                                    </form>
                                </div>

                                <div class=" col-md-6 droite cadre">

                                    <h3>Connexion</h3>

                                    <form action="controleConnexion" name="login" role="form" class="form-horizontal "
                                          method="post" accept-charset="utf-8">

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

                                        <div class="form-group col-md-12">
                                            <div class="space_new"><a href="
														https://www.google.com" target="_blanck">Mot de passe oublié</a>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="form-group">
                                                <div class="col-md-offset-0 col-md-8">
                                                    <input class="btn btn-success btn btn-success" type="submit"
                                                           value="Se Connecter"/>
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
		<div class="card text-white bg-danger mb-3">
  			<div class="card-header">Echec de connexion</div>
  			<div class="card-body">
    			<p class="card-text">Identifiant ou mot de passe incorrecte</p>
  		</div>
  		</div>
  		<div class="card text-white bg-danger mb-3">
  			<div class="card-header">Echec d'inscription</div>
  			<div class="card-body">
    			<p class="card-text">Cet e-mail est déjà utilisé, veuillez choisir un autre.</p>
  		</div>
  		</div>
  		<div class="card text-white bg-success mb-3">
  			<div class="card-header">Inscription réussie</div>
  			<div class="card-body">
    			<p class="card-text">Votre compte a bien été créé.</p>
  		</div>
  		</div>
  		<div class="card text-white bg-success mb-3">
  			<div class="card-header">Connexion réussie</div>
  			<div class="card-body">
    			<p class="card-text">Bienvenue sur votre espace.</p>
  		</div>
  		</div>
</div>

        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
        </div>
    </div>
</div>



