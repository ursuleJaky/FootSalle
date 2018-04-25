//Initialisation des plugins utilitaires (tooltip, nav_tabs, popover, starr ...)
var util = function (){
     var nav_tabs = function () {
        // Panel
        $(".nav-tabs a").click(function () {
            $(this).tab('show');
        });
    };

    //Initialise starr plugins
   /* var starr = function (){
        $(".starrr").starrr();
    };*/

    return {
        //main function to initiate the module
        init: function () {
            nav_tabs();
            /*starr();*/
        }
    };
}();

//Actions profil utilisateur
var user_profil = function () {
    var general = function (){
        $('#modal_launcher_changer_mdp').click(function (e) {
            $('#modal_changement_mdp .modal-body').load("/FootSalle/vues/profil/profil_change_pwd.jsp");
        });
    };

    var info_perso = function () {
        // Form - click modificaiton
        $('#form_profil_edit').click(function () {
            $('#form_profil').find('input, textarea, select').prop('disabled', false);
            $('#form_profil_cancel').show();
            $('#form_profil_submit').show();
            $('#form_profil_edit').hide();
        });

        // Form - click annuler
        $('#form_profil_cancel').click(function () {
            $('#form_profil').find('input, textarea, select').prop('disabled', true);
            $('#form_profil_cancel').hide();
            $('#form_profil_submit').hide();
            $('#form_profil_edit').show();
        });

        // Form - click valider
        $('#form_profil_submit').click(function (e) {
        	$.ajax({ 
                type: "POST",
                url: '/FootSalle/ProfilUser',
                data: $('#form_profil').serialize(),
                success: function(data){
                    toastr.success('Votre profil a bien été modifié.', 'Succès');
                	$('#form_profil').find('input, textarea, select').prop('disabled', true);
                	$('#form_profil_cancel').hide();
                    $('#form_profil_submit').hide();
                    $('#form_profil_edit').show();
                },
                error: function(errMsg) {
                    toastr.error('La requete n\'a pas pu aboutir', 'Erreur');
                }
            });
            e.preventDefault();
        });
    };

    var avis = function (){
    	
    };
    
    var participations = function () {
    	
    };
    
    var invitations = function () {
    	
    };
    
    return {
        //main function to initiate the module
        init: function () {
            general();
            info_perso();
            avis();
            participations();
            invitations();
        }
    };

}();

//Page user connexion
var user_connexion = function () {
	var form_validation = function () {
		$("#form_user_connexion").validate({
			rules: {
				inscription_pseudo: "required",
			}
		});
    };
    
    return {
        //main function to initiate the module
        init: function () {
        	form_validation();
        }
    };

}();

$( document ).ready(function() {
	util.init();
    user_profil.init();
    $("#connexion").on("click", function(){
    	console.log("connexion click")
    	$('#modalConnexion').load('/FootSalle/vues/connexion.jsp', function(result){
    		$('#modalConnexion').modal({backdrop: 'static', keyboard: false, show :true});
    	});
    	return false;
    });
    
    $("#connexionButton").on("click", function(){   
    	console.log("connexionButton")
    	$.ajax({ 
            type: "POST",
            url: '/FootSalle/controleConnexion',
            data: $("#form_connexion").serialize()+ "OK",
            success: function(data){
            	var obj = JSON.parse(data);
            	console.log(obj[0])
            	if("connected" == obj[1]){
            		$("#connexion").attr("hidden", true);
            		$("#deconnexion").attr("hidden", false);
            		$("#monCompte").attr("hidden", false);
            	}
            	console.log("connexionButton click success")
            	$("#spanTest").empty().append(obj[0]);
            	$('#modalConnexion').modal("hide");
            },
            error: function(errMsg) {
            	console.log("connexionButton click error")
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
            	if("disconnected" == obj[0]){
            		$("#connexion").attr("hidden", false);
            		$("#deconnexion").attr("hidden", true);
            		$("#monCompte").attr("hidden", true);
            	}
            },
            error: function(errMsg) {
            	console.log("deconnexionButton click error")
                toastr.error('La requete n\'a pas pu aboutir', 'Erreur');
            }
        });
    });
});