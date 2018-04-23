<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//Variables globales du header
	String page_title = (String) request.getAttribute("page_title");
%>
<!DOCTYPE html>
	<html>
	
	<head>
		<title><% out.println(page_title);%></title>
		<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
		<!-- stylesheet -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/global/bootstrap/css/bootstrap.min.css" />
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/pages/index.css">
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/public/global/plugins/toastr/toastr.min.css">
	</head>
	
	<body>
	
		<div class="modal fade" id=modalConnexion tabindex="-1" role="dialog" aria-labelledby="modalConnexionLabel" aria-hidden="true">
		</div>
		<div class="topnav">
			<a class="active" href="#home">Accueil</a>
			<div class="topnav-right">
				<a href="annonces.java"> Annonce</a>
				<a id="connexion" href="#" >Connexion</a>
			</div>
		</div>
