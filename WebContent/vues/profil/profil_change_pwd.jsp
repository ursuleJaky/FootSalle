<form id="form_account_change_pwd" action="post" style="padding: 10px;">
    <div class="row">
        <div class="form-group col-md-12">
            <label for="current_pwd">Mot de passe actuel</label>
            <input type="text" class="form-control" id="current_pwd" name="current_pwd">
        </div>
        <div class="form-group col-md-12">
            <label for="new_pwd">Nouveau mot de passe</label>
            <input type="text" class="form-control" id="new_pwd" name="new_pwd">
        </div>
        <div class="form-group col-md-12">
            <label for="new_pwd_confirmation">Confirmation du nouveau mot de passe</label>
            <input type="text" class="form-control" id="new_pwd_confirmation" name="new_pwd_confirmation">
        </div>
        <div class="col-md-12" align="center">
            <button type="submit" id="form_account_change_pwd_submit"
                    class="btn btn-sm btn-success"><i
                    class="glyphicon glyphicon-check"></i>
                Valider
            </button>
        </div>

    </div>
</form>

<script>
    $(document).ready(function () {
        // Form - click valider
        $('#form_account_change_pwd_submit').click(function (e) {
            //Préparation de la requête
            var request = $.ajax({
                type: "POST",
                url: 'chemin/vers/le/controlleur',
                data: $('#form_profil').serialize()
            });
            //En cas de succès
            request.done(function (resultat) {
                var data = $.parseJSON(resultat);
                //Notification
                toastr.success(data.info.Message_title, data.info.Message_content);
            });

            //En cas d'échec
            request.fail(function () {
                toastr.error('La requête n\'a pas pu aboutir', 'Erreur')
            });
            //Eviter le submit
            e.preventDefault();
        });
    });
</script>

