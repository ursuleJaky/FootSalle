//Initialisation des plugins utilitaires (tooltip, nav_tabs, popover, starr ...)
var util = function (){
    //Initialise les nav tabs
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

//Partie profil utilisateur
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
        	console.log("ok");
            var request = $.ajax({
                type: "POST",
                url: '/FootSalle/ProfilUser',
                data: $('#form_profil').serialize()
            });
            request.done(function (resultat) {
                var data = $.parseJSON(resultat);
                toastr.success(data.info.Message_title, data.info.Message_content);
                $('#form_profil').find('input, textarea, select').prop('disabled', true);
            });

            request.fail(function () {
                toastr.error('La requête n\'a pas pu aboutir', 'Erreur')
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

$(document).ready(function () {
    util.init();
    user_profil.init();
});
