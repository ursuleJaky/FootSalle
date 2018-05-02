//Implementation des actions de la page profil utilisateur

var user_profil = function () {
    var general = function (){
        $('#modal_launcher_changer_mdp').click(function (e) {
            $('#modal_changement_mdp .modal-body').load("profil_change_pwd.jsp");
        });
    };

    var info_perso = function () {
        // Click modifification
        $('#form_profil_edit').click(function () {
            $('#form_profil').find('input, textarea, select').prop('disabled', false);
            $('#form_profil_cancel').show();
            $('#form_profil_submit').show();
            $('#form_profil_edit').hide();
        });

        // Click annuler
        $('#form_profil_cancel').click(function () {
            $('#form_profil').find('input, textarea, select').prop('disabled', true);
            $('#form_profil_cancel').hide();
            $('#form_profil_submit').hide();
            $('#form_profil_edit').show();
        });

        // Click valider
        $('#form_profil_submit').click(function (e) {
            console.log("ok");
            $.ajax({
                type: "POST",
                url: '/FootSalle/ProfilUser',
                data: $('#form_profil').serialize(),
                success: function(data){
                    toastr.success('Votre modification a bien été prise en compte.', 'Succès');
                    $('#form_profil').find('input, textarea, select').prop('disabled', true);
                    $('#form_profil_cancel').hide();
                    $('#form_profil_submit').hide();
                    $('#form_profil_edit').show();
                },
                error: function(errMsg) {
                    toastr.error('La requete n\'a pas pu aboutir', 'Erreur');
                    $('#form_profil').find('input, textarea, select').prop('disabled', true);
                    $('#form_profil_cancel').hide();
                    $('#form_profil_submit').hide();
                    $('#form_profil_edit').show();
                }
            });
            e.preventDefault();
        });
    };

    return {
        //main function to initiate the module
        init: function () {
            general();
            info_perso();
        }
    };

}();

$( document ).ready(function() {
    user_profil.init();
    $("#connexion").on("click", function () {
        console.log("connexion click")
        $('#modalConnexion').load('/FootSalle/vues/connexion.jsp', function (result) {
            $('#modalConnexion').modal({backdrop: 'static', keyboard: false, show: true});
        });
        return false;
    });
    
    $("#creerAnnonce").on("click", function(){
    	$('#modalAnnonce').load('/FootSalle/vues/creer_annonce.jsp', function(result){
    		$('#modalAnnonce').modal({backdrop: 'static', keyboard: false, show :true});
    	});
    	return false;
    });
    
    $("#connexionButton").on("click", function(){   
    	$.ajax({ 
            type: "POST",
            url: '/FootSalle/controleConnexion',
            data: $("#form_connexion").serialize()+ "OK",
            success: function(data){
            	var obj = JSON.parse(data);
        		$("#connexion").attr("hidden", true);
        		$("#deconnexion").attr("hidden", false);
        		$("#monCompte").attr("hidden", false);
        		$("#monCompte").attr("href", "ProfilUser");
        		$("#creerAnnonce").attr("hidden", false);
            	console.log("connexionButton click success")
            	$("#spanTest").empty().append(obj[0] + " " + obj[1]);
            	$('#modalConnexion').modal("hide");
            },
            error: function(errMsg) {
            	console.log("connexionButton click error")
                toastr.error('La requete n\'a pas pu aboutir', 'Erreur');
            }
        });
    });

	$("#inscription_rejoindre").on("click", function(){
	    $.ajax({
	        type: "POST",
	        url: '/FootSalle/controleConnexion',
	        data: $("#form_user_inscription").serialize()+ "OK",
	        success: function(data){
	            var obj = JSON.parse(data);
	            console.log(obj);
	            $("#connexion").attr("hidden", true);
	            $("#deconnexion").attr("hidden", false);
	            $("#monCompte").attr("hidden", false);
	            $("#creerAnnonce").attr("hidden", false);
	            console.log("inscripntion click success")
	            $("#spanTest").empty().append(obj[0] + " " + obj[1]);
	            $('#modalConnexion').modal("hide");
	        },
	        error: function(errMsg) {
	            console.log("inscripntion click error")
	            toastr.error('La requete n\'a pas pu aboutir', 'Erreur');
	        }
	    });
	});

    $("#deconnexion").on("click", function(){
        $.ajax({
            type: "POST",
            url: '/FootSalle/controleConnexion',
            data: 'disconnect=' + "OK",
            success: function(data){
                var obj = JSON.parse(data);
                $("#spanTest").empty().append(obj[0]);
                $("#connexion").attr("hidden", false);
                $("#deconnexion").attr("hidden", true);
                $("#monCompte").attr("hidden", true);
                $("#creerAnnonce").attr("hidden", true);
            },
            error: function(errMsg) {
                console.log("deconnexionButton click error")
                toastr.error('La requete n\'a pas pu aboutir', 'Erreur');
            }
        });
    });
    
    $("#creerAnnonceButton").on("click", function(){
    	console.log("creerAnnonceButton")
        $.ajax({
            type: "POST",
            url: '/FootSalle/EventInfo',
            data: $("#EventInfo").serialize(),
            success: function(data){
                var obj = JSON.parse(data);
                console.log(data)
                $("#listeAnnonces").append('<div class="container_custom">'+
						                		'<div class="media">'+
						                			'<div class="align-self-start mr-2 mt-2">'+
						                				'<img class="gallerie_a img" src="../public/images/Users-User-Male-2-icon2.png" alt="logo utilisateur">'+
						                				'<div class="text_color_a"><a href="ProfilUser">'+obj[0]+'</a></div>'+
						                				'<div class="gallerie_b">'+$("#nb_joeurs_manquants").val()+'/'+$("#nb_joueurs").val()+'</div>'+
						                				'&nbsp; <img class="gallerie_b" src="../public/images/User-team.png"alt="logo utilisateur">'+
						                			'</div>'+
							                		'<div class="media-body">'+
							                			'<h6 class="mt-0 mb-1">Titre de l\'annonce</h6>'+
							                			'<div class="text_content ml-0 mt-0 mb-0 form-group row align-right">'+
							                				'<div class="text_heure_date">'+$("#date").val()+'</div>'+
							                				'&nbsp;&nbsp;'+
							                				'<div class="text_heure_date">'+$("#heure").val()+'</div>'+
							                				'&nbsp;&nbsp;'+
							                				'<div class="text_heure_date">'+$("#lieu").val()+'</div>'+
							                			'</div>'+
							                			'<div class="text_content">La description servira a  attirer'+
							                				'l\'attention sur l\'annonce et inciter à  participer. La description'+
							                				'ne dépasse pas 200 caractères. Par exemple le texte suivant, avec'+
							                				'8 lignes max en xs (mobile)'+
							                			'</div>'+
							                			'<div class="btn-group btn-group-sm mb-2 mt-3" role="group">'+
							                				'<button type="button" class="btn btn-secondary">J\'y vais</button>'+
							                				'<button type="button" class="btn btn-secondary">Voir plus</button>'+
							                				'<button type="button" class="btn btn-secondary">Inviter</button>'+
							                			'</div>'+
							                		'</div>'+
							                	'</div>'+
							                '</div>');
                
                $('#modalAnnonce').modal("hide");
            },
            error: function(errMsg) {
                toastr.error('La requete n\'a pas pu aboutir', 'Erreur');
            }
        });
    });
});