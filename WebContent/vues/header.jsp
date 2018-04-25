<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%
	//Variables globales du header
	String page_title = (String) request.getAttribute("page_title");
	String message_user = (String) request.getAttribute("message_user");
%>

<!DOCTYPE html>
<!--  Début du html -->
<html>
	<!--  Début du head -->
	<head>
		<title>${page_title}</title>
		<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
		<!-- stylesheet -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/global/bootstrap/css/bootstrap.min.css" />
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/pages/index.css">
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/global/plugins/toastr/toastr.min.css">
	</head>
	<!--  Fin du head -->
	<!--  Début du head -->
	<body>		
		<div 
		style = "width: 100%;height: 100%;margin: 0;padding: 0;"
		class="modal fade" id="modalConnexion" tabindex="-1" role="dialog" aria-labelledby="modalConnexionLabel" aria-hidden="true">
		</div>
		<div class="topnav" >
			<a class="active" href="#home">Accueil</a>
			<div class="topnav-right">
				<a href="annonces.java"> Annonce</a>
				<a id="connexion" href="#" >Connexion</a>
			</div>
		</div>
		<!--  Début du conteneur du body -->
		<div class="container" style="margin-top:30px;margin-bottom:30px;">
		<%if(message_user != null){ %>
		<div class="card text-white ${message_user_bg_color} mb-3">
                <div class="card-header">${message_user_titre}</div>
                <div class="card-body">
                    <p class="card-text">${message_user_contenu}</p>
                </div>
            </div>
        <%} %>
