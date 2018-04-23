<!--  Ajout du header Menu + CSS -->
<%@include  file="/vues/header.jsp" %>

<% 
String prenom = (String)request.getAttribute("prenom");
String nom = (String)request.getAttribute("nom");
String dateNaissance = (String) request.getAttribute("dateNaissance");
String email = (String) request.getAttribute("email");
String adresse = (String) request.getAttribute("adresse");
String descriptionUtilisateur = (String) request.getAttribute("descriptionUtilisateur");


%>
<!-- DEBUT DU CONTENEUR -->
<div class="container" id="user_profil">
    <!-- DEBUT PANEL-->
    <div class="card">
        <!-- DEBUT PANEL HEADER-->
        <div class="card-header">
            <h3><% 
                
                out.println(nom + " " + prenom);%></h3>
        </div>
        <!-- FIN PANEL HEADER-->
        
        <!-- DEBUT PANEL BODY-->
        <div class="card-body">
            <div class="form-row">
                <!-- DEBUT COTE GAUCHE DU BODY-->
                <div class="col-md-3" align="center">
                    <img alt="User Pic"
                    	 style="width:250px;"
                         src="${pageContext.request.contextPath}/public/images/yinyang.jpg"
                         class="img-circle img-responsive">
                    <h3><%out.println(nom + " " + prenom);%></h3>
                    <button id="modal_launcher_changer_mdp" type="button" class="btn btn-success" data-toggle="modal" data-target="#modal_changement_mdp">Changer de mot de passe</button>
                </div>
                <!-- FIN COTE GAUCHE DU BODY-->

                <!-- DEBUT COTE DROIT DU BODY-->
                <div class="col-md-9">
                    <!-- DEBUT TABS-->
                    <div>
                        <!-- DEBUT TABS NAV-->
                        <ul class="nav nav-tabs" role="tablist">
                            <li class=nav-item>
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="info_perso" role="tab" aria-controls="info_perso" aria-selected="true">Informations personnelles</a>
                            </li>
                            <!--<li><a href="#avis">Avis</a></li>-->
                            <!--<li><a href="#events">Participations</a></li>-->
                            <!--<li><a href="#invit">Invitations</a></li>-->
                        </ul>
                        <!-- FIN TABS NAV-->

                        <!-- DEBUT TABS CONTENT-->
                        <div class="tab-content">
                            <!-- DEBUT TAB INFO PERSO-->
                            <div id="info_perso" class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="info_perso">                  
                                <!-- DEBUT FORM PROFIL-->
                                <form id="form_profil" method="post" class="form-row">
                                    <div class="form-group col-md-4">
                                        <label for="civilite">Civilité</label>
                                        <select name="civilite" id="civilite" class="form-control" disabled>
                                            <option value="mme">Madame</option>
                                            <option value="mlle">Mademoiselle</option>
                                            <option value="m">Monsieur</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="nom">Nom</label>
                                        <input type="text" class="form-control" id="nom" name="nom" value="<%out.println(nom);%>"
                                               disabled>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="prenom">Prénom</label>
                                        <input type="text" class="form-control" id="prenom" name="prenom" value="<%out.println(prenom);%>"
                                               disabled>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="date_naissance">Date de naissance</label>
                                        <input type="date" class="form-control" id="date_naissance"
                                               name="date_naissance" value="<% 
                                        out.println(dateNaissance);%>"
                                        disabled>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <label for="email">E-mail</label>
                                        <input href="mailto:info@support.com" class="form-control" id="email"
                                               name="email"
                                               value="<%
                                        out.println(email);%>" disabled>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <label for="ville">Ville</label>
                                        <input type="text" class="form-control" id="ville" name="ville"
                                               value="<%out.println(adresse);%>" disabled>
                                    </div>
                                    <div class="form-group col-md-8">
                                        <label for="adresse">Adresse</label>
                                        <input type="text" class="form-control" id="adresse" name="adresse"
                                               value="<%out.println(adresse);%>" disabled>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="a_propos">A propos de moi</label>
                                        <textarea class="form-control" rows="5" id="a_propos" name="a_propos" disabled><% 
                                               out.println(descriptionUtilisateur);%></textarea>
                                    </div>
                                </form>
                                <!-- DEBUT FORM PROFIL-->
                                <div class="text-center">
                                    <button type="button" id="form_profil_edit"
                                            class="btn btn-sm btn-success "><i
                                            class="glyphicon glyphicon-edit"></i>
                                        Modifier
                                    </button>
                                    <button type="submit" id="form_profil_submit" style="display: none;"
                                            class="btn btn-sm btn-success"><i
                                            class="glyphicon glyphicon-check"></i>
                                        Valider
                                    </button>
                                    <button type="button" id="form_profil_cancel" style="display: none;"
                                            class="btn btn-sm btn-danger "><i
                                            class="glyphicon glyphicon-times"></i>
                                        Annuler
                                    </button>
                                </div>
                            </div>
                            <!-- FIN TAB INFO PERSO-->

                            <!-- DEBUT TAB AVIS-->
                            <div id="avis" class="tab-pane fade">
                                <ul class="nav nav-tabs">
                                    <li class="active">
                                        <a href="#avis_recu">Avis reçus</a></li>
                                    <li>
                                        <a href="#avis_donne">Avis donnés</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div id="avis_recu" class="tab-pane fade in active">
                                        <div style="margin-bottom: 20px;border: black solid 1px;padding: 5px;">
                                            <div>
                                                <div style="float: left;">
                                                    <div class="starrr" data-rating='4'></div>
                                                </div>
                                                <div style="float: right;">
                                                    <a href="#">DE LA BARQUETTE François</a>
                                                </div>
                                            </div>
                                            <br>
                                            <div style="border-top: black solid 1px;margin-top: 20px;">
                                                Le Lorem Ipsum est simplement du faux texte employé dans la composition
                                                et la mise en page avant impression. Le Lorem Ipsum est le faux texte
                                                standard de l'imprimerie depuis les années 1500, quand un peintre
                                                anonyme assembla ensemble des morceaux de texte pour réaliser un livre
                                                spécimen de polices de texte. Il n'a pas fait que survivre cinq siècles,
                                                mais s'est aussi adapté à la bureautique informatique, sans que son
                                                contenu n'en soit modifié. Il a été popularisé dans les années 1960
                                                grâce à la vente de feuilles Letraset contenant des passages du Lorem
                                                Ipsum, et, plus récemment, par son inclusion dans des applications de
                                                mise en page de texte, comme Aldus PageMaker.
                                            </div>
                                        </div>
                                        <div style="margin-bottom: 20px;border: black solid 1px;">
                                            <div>
                                                <div style="float: left;">
                                                    <div class="starrr" data-rating='4'></div>
                                                </div>
                                                <div style="float: right;">
                                                    <a href="#">DE LA BARQUETTE François</a>
                                                </div>
                                            </div>
                                            <br>
                                            <div style="border-top: black solid 1px;margin-top: 20px;">
                                                Le Lorem Ipsum est simplement du faux texte employé dans la composition
                                                et la mise en page avant impression. Le Lorem Ipsum est le faux texte
                                                standard de l'imprimerie depuis les années 1500, quand un peintre
                                                anonyme assembla ensemble des morceaux de texte pour réaliser un livre
                                                spécimen de polices de texte. Il n'a pas fait que survivre cinq siècles,
                                                mais s'est aussi adapté à la bureautique informatique, sans que son
                                                contenu n'en soit modifié. Il a été popularisé dans les années 1960
                                                grâce à la vente de feuilles Letraset contenant des passages du Lorem
                                                Ipsum, et, plus récemment, par son inclusion dans des applications de
                                                mise en page de texte, comme Aldus PageMaker.
                                            </div>
                                        </div>
                                    </div>
                                    <div id="avis_donne" class="tab-pane fade">
                                        <div style="margin-bottom: 20px;border: black solid 1px;padding: 5px;">
                                            <div>
                                                <div style="float: left;">
                                                    <div class="starrr" data-rating='4'></div>
                                                </div>
                                                <div style="float: right;">
                                                    <a href="#">DE LA BARQUETTE François</a>
                                                </div>
                                            </div>
                                            <br>
                                            <div style="border-top: black solid 1px;margin-top: 20px;">
                                                Le Lorem Ipsum est simplement du faux texte employé dans la composition
                                                et la mise en page avant impression. Le Lorem Ipsum est le faux texte
                                                standard de l'imprimerie depuis les années 1500, quand un peintre
                                                anonyme assembla ensemble des morceaux de texte pour réaliser un livre
                                                spécimen de polices de texte. Il n'a pas fait que survivre cinq siècles,
                                                mais s'est aussi adapté à la bureautique informatique, sans que son
                                                contenu n'en soit modifié. Il a été popularisé dans les années 1960
                                                grâce à la vente de feuilles Letraset contenant des passages du Lorem
                                                Ipsum, et, plus récemment, par son inclusion dans des applications de
                                                mise en page de texte, comme Aldus PageMaker.
                                            </div>
                                        </div>
                                        <div style="margin-bottom: 20px;border: black solid 1px;padding: 5px;">
                                            <div>
                                                <div style="float: left;">
                                                    <div class="starrr" data-rating='4'></div>
                                                </div>
                                                <div style="float: right;">
                                                    <a href="#">DE LA BARQUETTE François</a>
                                                </div>
                                            </div>
                                            <br>
                                            <div style="border-top: black solid 1px;margin-top: 20px;">
                                                Le Lorem Ipsum est simplement du faux texte employé dans la composition
                                                et la mise en page avant impression. Le Lorem Ipsum est le faux texte
                                                standard de l'imprimerie depuis les années 1500, quand un peintre
                                                anonyme assembla ensemble des morceaux de texte pour réaliser un livre
                                                spécimen de polices de texte. Il n'a pas fait que survivre cinq siècles,
                                                mais s'est aussi adapté à la bureautique informatique, sans que son
                                                contenu n'en soit modifié. Il a été popularisé dans les années 1960
                                                grâce à la vente de feuilles Letraset contenant des passages du Lorem
                                                Ipsum, et, plus récemment, par son inclusion dans des applications de
                                                mise en page de texte, comme Aldus PageMaker.
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- FIN TAB AVIS-->

                            <!-- DEBUT TAB EVENTS-->
                            <div id="events" class="tab-pane fade">
                                <ul class="nav nav-tabs">
                                    <li class="active">
                                        <a href="#en_cours">En cours</a></li>
                                    <li>
                                        <a href="#deja_joue">Déjà joué</a></li>
                                </ul>
                                <div class="tab-content" style="margin: 10px;">
                                    <div id="en_cours" class="tab-pane fade in active">
                                        <div class="col-sm-4">
                                            <div class="thumbnail">
                                                <div class="overlay">
                                                    <i class="fa fa-share md"></i>
                                                </div>
                                                <img style="height: 100px;" src="${pageContext.request.contextPath}/public/images/yinyang.jpg">
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <h4>
                                                        <span class="label label-info">18 avr.</span>
                                                        <span class="label label-info">2018</span>
                                                    </h4>
                                                </div>
                                                <div class="col-md-9">
                                                    <strong>Organisé par SEKPA Mamadou</strong><br>
                                                    <em>à <a href="#">Terrain de pessac</a></em><br>
                                                    <span class="small">Durée: 10h - 12h</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="thumbnail">
                                                <div class="overlay">
                                                    <i class="fa fa-share md"></i>
                                                </div>
                                                <img style="height: 100px;" src="images/yinyang.jpg">
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <h4>
                                                        <span class="label label-info">18 avr.</span>
                                                        <span class="label label-info">2018</span>
                                                    </h4>
                                                </div>
                                                <div class="col-md-9">
                                                    <strong>Organisé par SEKPA Mamadou</strong><br>
                                                    <em>à <a href="#">Terrain de pessac</a></em><br>
                                                    <span class="small">Durée: 10h - 12h</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="thumbnail">
                                                <div class="overlay">
                                                    <i class="fa fa-share md"></i>
                                                </div>
                                                <img style="height: 100px;" src="images/yinyang.jpg">
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <h4>
                                                        <span class="label label-info">18 avr.</span>
                                                        <span class="label label-info">2018</span>
                                                    </h4>
                                                </div>
                                                <div class="col-md-9">
                                                    <strong>Organisé par SEKPA Mamadou</strong><br>
                                                    <em>à <a href="#">Terrain de pessac</a></em><br>
                                                    <span class="small">Durée: 10h - 12h</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="thumbnail">
                                                <div class="overlay">
                                                    <i class="fa fa-share md"></i>
                                                </div>
                                                <img style="height: 100px;" src="images/yinyang.jpg">
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <h4>
                                                        <span class="label label-info">18 avr.</span>
                                                        <span class="label label-info">2018</span>
                                                    </h4>
                                                </div>
                                                <div class="col-md-9">
                                                    <strong>Organisé par SEKPA Mamadou</strong><br>
                                                    <em>à <a href="#">Terrain de pessac</a></em><br>
                                                    <span class="small">Durée: 10h - 12h</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="thumbnail">
                                                <div class="overlay">
                                                    <i class="fa fa-share md"></i>
                                                </div>
                                                <img style="height: 100px;" src="images/yinyang.jpg">
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <h4>
                                                        <span class="label label-info">18 avr.</span>
                                                        <span class="label label-info">2018</span>
                                                    </h4>
                                                </div>
                                                <div class="col-md-9">
                                                    <strong>Organisé par SEKPA Mamadou</strong><br>
                                                    <em>à <a href="#">Terrain de pessac</a></em><br>
                                                    <span class="small">Durée: 10h - 12h</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="thumbnail">
                                                <div class="overlay">
                                                    <i class="fa fa-share md"></i>
                                                </div>
                                                <img style="height: 100px;" src="images/yinyang.jpg">
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <h4>
                                                        <span class="label label-info">18 avr.</span>
                                                        <span class="label label-info">2018</span>
                                                    </h4>
                                                </div>
                                                <div class="col-md-9">
                                                    <strong>Organisé par SEKPA Mamadou</strong><br>
                                                    <em>à <a href="#">Terrain de pessac</a></em><br>
                                                    <span class="small">Durée: 10h - 12h</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="deja_joue" class="tab-pane fade">

                                    </div>
                                </div>
                            </div>
                            <!-- FIN TAB EVENTS-->

                            <!-- DEBUT TAB INVITATIONS-->
                            <div id="invit" class="tab-pane fade">
                                <div class="col-md-4">
                                    <div class="thumbnail">
                                        <div class="overlay">
                                            <i class="fa fa-share md"></i>
                                        </div>
                                        <img style="height: 100px;" src="images/yinyang.jpg">
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h4>
                                                <span class="label label-info">18 avr.</span>
                                                <span class="label label-info">2018</span>
                                            </h4>
                                        </div>
                                        <div class="col-md-9">
                                            <strong>Organisé par SEKPA Mamadou</strong><br>
                                            <em>à <a href="#">Terrain de pessac</a></em><br>
                                            <span class="small">Durée: 10h - 12h</span>
                                        </div>
                                        <div class="col-md-12">
                                            <button class="col-md-6 btn-success">Accepter</button>
                                            <button class="col-md-6 btn-danger">Refuser</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="thumbnail">
                                        <div class="overlay">
                                            <i class="fa fa-share md"></i>
                                        </div>
                                        <img style="height: 100px;" src="images/yinyang.jpg">
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h4>
                                                <span class="label label-info">18 avr.</span>
                                                <span class="label label-info">2018</span>
                                            </h4>
                                        </div>
                                        <div class="col-md-9">
                                            <strong>Organisé par SEKPA Mamadou</strong><br>
                                            <em>à <a href="#">Terrain de pessac</a></em><br>
                                            <span class="small">Durée: 10h - 12h</span>
                                        </div>
                                        <div class="col-md-12">
                                            <button class="col-md-6 btn-success">Accepter</button>
                                            <button class="col-md-6 btn-danger">Refuser</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="thumbnail">
                                        <div class="overlay">
                                            <i class="fa fa-share md"></i>
                                        </div>
                                        <img style="height: 100px;" src="images/yinyang.jpg">
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h4>
                                                <span class="label label-info">18 avr.</span>
                                                <span class="label label-info">2018</span>
                                            </h4>
                                        </div>
                                        <div class="col-md-9">
                                            <strong>Organisé par SEKPA Mamadou</strong><br>
                                            <em>à <a href="#">Terrain de pessac</a></em><br>
                                            <span class="small">Durée: 10h - 12h</span>
                                        </div>
                                        <div class="col-md-12">
                                            <button class="col-md-6 btn-success">Accepter</button>
                                            <button class="col-md-6 btn-danger">Refuser</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="thumbnail">
                                        <div class="overlay">
                                            <i class="fa fa-share md"></i>
                                        </div>
                                        <img style="height: 100px;" src="images/yinyang.jpg">
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h4>
                                                <span class="label label-info">18 avr.</span>
                                                <span class="label label-info">2018</span>
                                            </h4>
                                        </div>
                                        <div class="col-md-9">
                                            <strong>Organisé par SEKPA Mamadou</strong><br>
                                            <em>à <a href="#">Terrain de pessac</a></em><br>
                                            <span class="small">Durée: 10h - 12h</span>
                                        </div>
                                        <div class="col-md-12">
                                            <button class="col-md-6 btn-success">Accepter</button>
                                            <button class="col-md-6 btn-danger">Refuser</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="thumbnail">
                                        <div class="overlay">
                                            <i class="fa fa-share md"></i>
                                        </div>
                                        <img style="height: 100px;" src="images/yinyang.jpg">
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h4>
                                                <span class="label label-info">18 avr.</span>
                                                <span class="label label-info">2018</span>
                                            </h4>
                                        </div>
                                        <div class="col-md-9">
                                            <strong>Organisé par SEKPA Mamadou</strong><br>
                                            <em>à <a href="#">Terrain de pessac</a></em><br>
                                            <span class="small">Durée: 10h - 12h</span>
                                        </div>
                                        <div class="col-md-12">
                                            <button class="col-md-6 btn-success">Accepter</button>
                                            <button class="col-md-6 btn-danger">Refuser</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="thumbnail">
                                        <div class="overlay">
                                            <i class="fa fa-share md"></i>
                                        </div>
                                        <img style="height: 100px;" src="images/yinyang.jpg">
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <h4>
                                                <span class="label label-info">18 avr.</span>
                                                <span class="label label-info">2018</span>
                                            </h4>
                                        </div>
                                        <div class="col-md-9">
                                            <strong>Organisé par SEKPA Mamadou</strong><br>
                                            <em>à <a href="#">Terrain de pessac</a></em><br>
                                            <span class="small">Durée: 10h - 12h</span>
                                        </div>
                                        <div class="col-md-12">
                                            <button class="col-md-6 btn-success">Accepter</button>
                                            <button class="col-md-6 btn-danger">Refuser</button>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <!-- FIN TAB INVITATIONS-->
                        </div>
                        <!-- FIN TABS CONTENT-->
                    </div>
                    <!-- FIN TABS-->
                </div>
                <!-- FIN COTE GAUCHE DU BODY-->
            </div>
        </div>
        <!-- FIN PANEL BODY-->
    </div>
    <!-- FIN PANEL-->

    <div class="panel panel-info">
        <div class="panel-heading">A SAVOIR</div>
        <div class="panel-body">
            <p>
                <strong>Profil privé: en tant que propriétaire du "profil" que je visualise, je pourrai voir toutes les tab & info présentes sur cette page.</strong>
            </p>
            <p>
                <strong>Profil public: si je visualise un autre profil qui n'est pas le mien, les élements suivants seront cachés:
                    <ul>
                        <li>Changement de mdp qui sera remplacer par un bouton "laisser un avis"</li>
                        <li>Dans le formulaire "info perso": faudra cacher date de naissance, e-mail, adresse, ville & bouton modifier</li>
                        <li>NAV TAB invitation (à voirrrr)</li>
                    </ul>
                </strong>
            </p>

        </div>
    </div>
</div>
<!-- FIN DU CONTENEUR -->

<!-- Modal -->
<div id="modal_changement_mdp" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Changement de mot de passe</h4>
            </div>
            <div class="modal-body">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
            </div>
        </div>
    </div>
</div>

<!--  Ajout du footer: JS -->
<jsp:include page="/vues/footer.jsp"/>



