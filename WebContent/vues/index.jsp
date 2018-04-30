<%@include  file="/vues/header.jsp" %>
	
<!-- =======================Boucle globale sur les annonces============== -->					    
<c:forEach items="${listeAnnonces}" var="current">
	<div class="container_custom">
		<div class="media">
			<div class="align-self-start mr-2 mt-2">
				<img class="gallerie_a img" src="${pageContext.request.contextPath}/public/images/Users-User-Male-2-icon2.png"
					alt="logo utilisateur">
				<div class="text_color_a">Pseudo User</div>
				<div class="gallerie_b">${current.nbPersonneInscrite}/${current.nbPersonneVoulu}</div>
				&nbsp; <img class="gallerie_b" src="${pageContext.request.contextPath}/public/images/User-team.png"
					alt="logo utilisateur">
			</div>
			<div class="media-body">
				<h6 class="mt-0 mb-1">${current.activite}</h6>

				<div class="text_content ml-0 mt-0 mb-0 form-group row align-right">
					<div class="text_heure_date">${current.dateDebutEvenement}</div>
					&nbsp;&nbsp;
					<div class="text_heure_date">15:00</div>
					&nbsp;&nbsp;
					<div class="text_heure_date">${current.localisationEvenement}</div>
				</div>
				<div class="text_content">${current.description}</div>
				<div class="btn-group btn-group-sm mb-2 mt-3" role="group">
					<button type="button" class="btn btn-secondary">J'y vais</button>
					<button type="button" class="btn btn-secondary">Voir plus</button>
					<button type="button" class="btn btn-secondary">Inviter</button>
				</div>
			</div>
		</div>
	</div>
</c:forEach>

<jsp:include page="footer.jsp" />


