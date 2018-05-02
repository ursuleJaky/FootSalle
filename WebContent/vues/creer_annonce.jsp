<div class="modal-dialog" role="document">
	<div class="modal-content modale">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			<h4 class="modal-title" id="CreationAnnonceLabel"></h4>
		</div>
		<div class="modal-body ">
			<div class="container">
				<div class="col-md-12">
					<h1>Créer une annonce</h1>
					<form id="EventInfo" role="form" class="form-horizontal" method="post" accept-charset="utf-8">
						<div class="form-group row">
							<label class="col-md-4" for="lieu">Lieu</label>
							<div class="col-md-8">
								<input id="lieu" name="lieu" placeholder="Ex : Talence" class="form-control" id="lieu" />
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-4" for="complexe">Complexe sportif</label>
							<div class="col-md-8">
								<input name="complexe" placeholder="Ex : Urban soccer" class="form-control" id="complexe" />
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-4" for="sport">Sport</label>
							<div class="col-md-8">
								<select name="sport" class="form-control" id="sport">
									<option selected>Football</option>
									<option value="1">Basketball</option>
									<option value="2">Tennis</option>
									<option value="3">Handball</option>
									<option value="3">Volleyball</option>
									<option value="3">Pétanque</option>
								</select>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-4" for="Prix">Prix</label>
							<div class="col-md-8">
								<input name="prix" placeholder="5" class="form-control"type="number" step="0.1" min="0" id="prix" />
							</div>
						</div>

						<div class="form-group row">
							<label class="col-md-4" for="nb_joueurs">Nombre maximum </label>
							<div class="col-md-8">
								<input id="nb_joueurs" name="nb_joueurs" placeholder="Nombre de joueurs maximum" type="number" class="form-control" id="nb_joueurs" />
							</div>
						</div>

						<div class="form-group row">
							<label class="col-md-4" for="nb_joeurs_manquants">Nombre de joueurs manquants</label>
							<div class="col-md-8">
								<input id="nb_joeurs_manquants" name="nb_joeurs_manquants" placeholder="joueurs manquants" type="number"
									class="form-control" id="nb_joeurs_manquants" />
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-4" for="participants">Participants</label>
							<div class="col-md-8">
								<input class="form-control" type="text" value="Jean Bosco">
							</div>
						</div>
						<div class="form-group row ">
							<div class="form-group col-md-6">
								<label for="Date">Date</label>
								 <input id ="date" name="date" type="Date" class="form-control" type="date" id="Date">
							</div>
							<div class="form-group col-md-6">
								<label for="Heure">Heure</label> 
								<input id="heure" name="heure" id="Heure" class="form-control" type="time" id="Heure">
							</div>
						</div>
					</form>
					<div class="form-group row ">
						<div class="col-md-12">
                 	  	<input id="creerAnnonceButton" class="btn btn-success" type="submit" value="Créer"/>
                      	<button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
					  </div>
					</div>
				</div>
			</div>	
		</div>
	</div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/public/pages/index.js"></script>