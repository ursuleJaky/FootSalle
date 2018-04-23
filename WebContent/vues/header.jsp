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
    	
		<style>

			body {
			background: #FFFFFF;
			margin: 10;
			font-family: 'Open Sans', Arial, Helvetica, sans-serif;
			}
			
			.topnav {
			overflow: hidden;
			background-color: #333;
			}
			
			.topnav a {
			float: left;
			color: #f2f2f2;
			text-align: center;
			padding: 14px 16px;
			text-decoration: none;
			font-size: 17px;
			}
			
			.topnav a:hover {
			background-color: #ddd;
			color: black;
			}
			
			.topnav a.active {
			background-color: #4CAF50;
			color: white;
			}
			
			.topnav-right {
			float: right;
			}
			
			
			.main {
			background: white url(machine_a_ecrire.jpg) right top no-repeat;
			background-size: contain;
			padding: 80px 20px 20px;
			margin-top: 120px;
			}
			
			@media only screen and (max-width : 992px) {
			.main {
			background: white;
			margin-top: 30px;
			}
			}
			
			.space1{
			padding-top: 0px;
			margin-top: 0px;
			margin-bottom: 0px;
			}
			
			.space2{
			padding-top: 40px;
			margin-top:  0px;
			margin-bottom: 0px;
			}
			
			h1 {
			font-family: 'Lato', sans-serif;
			font-weight: 300;
			color: #555;
			margin-bottom: 0;
			}
			
			h2 {
			font-family: 'Lato', sans-serif;
			font-weight: 300;
			color: #999;
			font-size: 18px;
			margin-top: 5px;
			}
			
			.b{
			font-size:123px;
			font-family: arial, sans-serif;
			color: aqua;
			}
			
			form {
			margin-top: 60px;
			}
			
			input.form-control , input[type="submit"] , .btn {
			border-radius: 0px;
			}
			
			.btn {
			transition: all ease-in-out 0.2s;
			}
			
			.credits {
			margin-top: 100px;
			color: #999;
			font-size: 12px;
			}
			
			.credits a {
			color: inherit;
			}
		
		</style>
		
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
