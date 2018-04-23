//Initialisation des plugins utilitaires (tooltip, nav_tabs, popover, starr ...)
var util = function (){
     var nav_tabs = function () {
        // Panel
        $(".nav-tabs a").click(function () {
            $(this).tab('show');
        });
    };

    //Initialise starr plugins
    var starr = function (){
        $(".starrr").starrr();
    };

    return {
        //main function to initiate the module
        init: function () {
            nav_tabs();
            starr();
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

$( document ).ready(function() {
	util.init();
    user_profil.init();
    
    $("#connexion").on("click", function(){
    	$('#modalConnexion').load('/FootSalle/vues/connexion.jsp', function(result){
    		$('#modalConnexion').modal({backdrop: 'static', keyboard: false, show :true});
    	});
    	return false;
    });
});