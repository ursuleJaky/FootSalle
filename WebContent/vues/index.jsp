<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />

<link rel="stylesheet" type="text/css" href="../css/pages.css" />

<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/css?family=Lato:400,700,300" />
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<!-- javascript -->
<script type="text/javascript" src="../js/bootstrap.min.js"></script>

<script type="text/javascript" src="../js/page.js"></script>

<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDNDFsPWL9fW9OFIzR0QQs_H8pCsmlP4DU&callback=myMap"></script>

</head>

<body class="pace-black">

	<jsp:include page="header.jsp" />


	<div class="container_custom">
		<div class="media">
			<div class="align-self-start mr-2 mt-2">
				<img class="gallerie_a img" src="../public/images/Users-User-Male-2-icon2.png"
					alt="logo utilisateur">
				<div class="text_color_a">Pseudo User</div>
				<div class="gallerie_b">2/10</div>
				&nbsp; <img class="gallerie_b" src="../public/images/User-team.png"
					alt="logo utilisateur">
			</div>
			<div class="media-body">
				<h6 class="mt-0 mb-1">Titre de l'annonce</h6>

				<div class="text_content ml-0 mt-0 mb-0 form-group row align-right">
					<div class="text_heure_date">01/01/1990</div>
					&nbsp;&nbsp;
					<div class="text_heure_date">15:00</div>
					&nbsp;&nbsp;
					<div class="text_heure_date">Mergignac</div>
				</div>
				<div class="text_content">La description servira a  attirer
					l'attention sur l'annonce et inciter à  participer. La description
					ne dépasse pas 200 caractères. Par exemple le texte suivant, avec
					8 lignes max en xs (mobile)</div>
				<div class="btn-group btn-group-sm mb-2 mt-3" role="group">
					<button type="button" class="btn btn-secondary">J'y vais</button>
					<button type="button" class="btn btn-secondary">Voir plus</button>
					<button type="button" class="btn btn-secondary">Inviter</button>
				</div>
			</div>
		</div>
	</div>



</body>



<footer>

	<jsp:include page="footer.jsp" />
</footer>




</html>