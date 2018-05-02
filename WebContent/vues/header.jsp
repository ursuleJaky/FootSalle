<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%
	//Variables globales du header
	String page_title = (String) request.getAttribute("page_title");
%>

<!DOCTYPE html>
<html>
	<head>
		<title>${page_title}</title>
		<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/global/bootstrap/css/bootstrap.min.css" />
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/pages/index.css">
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/global/plugins/toastr/toastr.min.css">
	</head>
	<body>		
		<div class="modal fade" id="modalAnnonce" tabindex="-1" role="dialog" 
		aria-labelledby="modalAnnonceLabel" aria-hidden="true">
		</div>
		<div class="modal fade" id="modalConnexion" tabindex="-1" role="dialog" 
		aria-labelledby="modalConnexionLabel" aria-hidden="true">
		</div>
		<div class="topnav" >
			<a class="active" href="Accueil">Accueil</a>
		<% String userConnected = (String) session.getAttribute("userConnected"); %>
    	<% if(userConnected == null){%>
    		<a id="creerAnnonce" href="#" hidden="true">Créer une annonce</a>
    	<%} else {%>
    		<a id="creerAnnonce" href="#">Créer une annonce</a>
		<%}%>
			<div class="topnav-right">
	    	<% if(userConnected == null){%>
    			<a id="connexion" href="#" >Connexion</a>
    			<a id="monCompte" href="ProfilUser" hidden="true">Mon Compte</a>
				<a id="deconnexion" href="#" hidden="true">Déconnexion</a>
	    	<%} else {%>
    			<a id="connexion" href="#" hidden="true">Connexion</a>
    			<a id="monCompte" href="ProfilUser">Mon Compte</a>
				<a id="deconnexion" href="#">Déconnexion</a>
			<%}%>
				<input id="disconnect" name="disconnect" type="hidden"/> 		
			</div>
		</div>
		<!--  Début du conteneur du body -->
		<div class="container" style="margin-top:30px;margin-bottom:30px;">