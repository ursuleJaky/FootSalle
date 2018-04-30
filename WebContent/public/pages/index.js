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
    $("#connexion").on("click", function () {
        console.log("connexion click")
        $('#modalConnexion').load('/FootSalle/vues/connexion.jsp', function (result) {
            $('#modalConnexion').modal({backdrop: 'static', keyboard: false, show: true});
        });
        return false;
    });

    $("#creer_annonce").on("click", function () {
        $('#modalCreationAnnonce').load('/FootSalle/vues/annonces.jsp', function (result) {
            $('#modalCreationAnnonce').modal({backdrop: 'static', keyboard: false, show: true});
        });
        return false;
    });
<<<<<<< HEAD
    
    $("#creer_annonce").on("click", function(){
    	$('#modalCreationAnnonce').load('/FootSalle/vues/annonces.jsp', function(result){
    		$('#modalCreationAnnonce').modal({backdrop: 'static', keyboard: false, show :true});
    	});
    	return false;
=======
    $("#connexionButton").on("click", function(){
        console.log("connexionButton")
        $.ajax({
            type: "POST",
            url: '/FootSalle/controleConnexion',
            data: $("#form_connexion").serialize()+ "OK",
            success: function(data){
                var obj = JSON.parse(data);
                $("#connexion").attr("hidden", true);
                $("#deconnexion").attr("hidden", false);
                $("#monCompte").attr("hidden", false);
                console.log("connexionButton click success")
                $("#spanTest").empty().append(obj[0] + " " + obj[1]);
                $('#modalConnexion').modal("hide");
            },
            error: function(errMsg) {
                console.log("connexionButton click error")
                toastr.error('La requete n\'a pas pu aboutir', 'Erreur');
            }
        });
>>>>>>> b2017774063a6e88441854db00ac8a471e27a594
    });

<<<<<<< HEAD
    $("#connexionButton").on("click", function(){
    	console.log("connexionButton click")
    	$("#disconnect").val("OK");
    	$("#connect").val("KO");
=======
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
                console.log("inscripntion click success")
                $("#spanTest").empty().append(obj[0] + " " + obj[1]);
                $('#modalConnexion').modal("hide");
            },
            error: function(errMsg) {
                console.log("inscripntion click error")
                toastr.error('La requete n\'a pas pu aboutir', 'Erreur');
            }
        });
>>>>>>> b2017774063a6e88441854db00ac8a471e27a594
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
            },
            error: function(errMsg) {
                console.log("deconnexionButton click error")
                toastr.error('La requete n\'a pas pu aboutir', 'Erreur');
            }
        });
    });
<<<<<<< HEAD



$(".button_connexion").on("click", function(){
	$('#modalConnexion').load('${pageContext.request.contextPath}/vues/connexion.jsp', function(result){
		$('#modalConnexion').modal({backdrop: 'static', keyboard: false, show :true});
	});
});
=======
});





//map
function myMap() {
	var myCenter = new google.maps.LatLng(51.508742,-0.120850);
	var mapCanvas = document.getElementById("map");
	var mapOptions = {center: myCenter, zoom: 5};
	var map = new google.maps.Map(mapCanvas, mapOptions);
	var marker = new google.maps.Marker({position:myCenter});
	marker.setMap(map);
}

//Set the date we're counting down to
//var countDownDate = new Date("Sep 5, 2018 15:37:25").getTime();

//Update the count down every 1 second
var x = setInterval(function() {

	// Get todays date and time
	var now = new Date().getTime();

	// Find the distance between now an the count down date
	var distance = countDownDate - now;

	// Time calculations for days, hours, minutes and seconds
	var days = Math.floor(distance / (1000 * 60 * 60 * 24));
	var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
	var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
	var seconds = Math.floor((distance % (1000 * 60)) / 1000);

	// Display the result in the element with id="demo"
	document.getElementById("demo").innerHTML = days + "j " + hours + "h "
		+ minutes + "m " + seconds + "s ";

	// If the count down is finished, write some text 
	if (distance < 0) {
		clearInterval(x);
		document.getElementById("demo").innerHTML = "EXPIRED";
	}
}, 1000);


	// When the user scrolls the page, execute myFunction 
	window.onscroll = function() {myFunction()};

function myFunction() {
	var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
	var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
	var scrolled = (winScroll / height) * 100;
	document.getElementById("myBar").style.width = scrolled + "%";
}

>>>>>>> b2017774063a6e88441854db00ac8a471e27a594
