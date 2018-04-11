// Starrr plugin (https://github.com/dobtco/starrr)
var __slice = [].slice;

(function ($, window) {
    var Starrr;

    Starrr = (function () {
        Starrr.prototype.defaults = {
            rating: void 0,
            numStars: 5,
            change: function (e, value) {
            }
        };

        function Starrr($el, options) {
            var i, _, _ref,
                _this = this;

            this.options = $.extend({}, this.defaults, options);
            this.$el = $el;
            _ref = this.defaults;
            for (i in _ref) {
                _ = _ref[i];
                if (this.$el.data(i) != null) {
                    this.options[i] = this.$el.data(i);
                }
            }
            this.createStars();
            this.syncRating();
            this.$el.on('mouseover.starrr', 'span', function (e) {
                return _this.syncRating(_this.$el.find('span').index(e.currentTarget) + 1);
            });
            this.$el.on('mouseout.starrr', function () {
                return _this.syncRating();
            });
            this.$el.on('click.starrr', 'span', function (e) {
                return _this.setRating(_this.$el.find('span').index(e.currentTarget) + 1);
            });
            this.$el.on('starrr:change', this.options.change);
        }

        Starrr.prototype.createStars = function () {
            var _i, _ref, _results;

            _results = [];
            for (_i = 1, _ref = this.options.numStars; 1 <= _ref ? _i <= _ref : _i >= _ref; 1 <= _ref ? _i++ : _i--) {
                _results.push(this.$el.append("<span class='glyphicon .glyphicon-star-empty'></span>"));
            }
            return _results;
        };

        Starrr.prototype.setRating = function (rating) {
            if (this.options.rating === rating) {
                rating = void 0;
            }
            this.options.rating = rating;
            this.syncRating();
            return this.$el.trigger('starrr:change', rating);
        };

        Starrr.prototype.syncRating = function (rating) {
            var i, _i, _j, _ref;

            rating || (rating = this.options.rating);
            if (rating) {
                for (i = _i = 0, _ref = rating - 1; 0 <= _ref ? _i <= _ref : _i >= _ref; i = 0 <= _ref ? ++_i : --_i) {
                    this.$el.find('span').eq(i).removeClass('glyphicon-star-empty').addClass('glyphicon-star');
                }
            }
            if (rating && rating < 5) {
                for (i = _j = rating; rating <= 4 ? _j <= 4 : _j >= 4; i = rating <= 4 ? ++_j : --_j) {
                    this.$el.find('span').eq(i).removeClass('glyphicon-star').addClass('glyphicon-star-empty');
                }
            }
            if (!rating) {
                return this.$el.find('span').removeClass('glyphicon-star').addClass('glyphicon-star-empty');
            }
        };

        return Starrr;

    })();
    return $.fn.extend({
        starrr: function () {
            var args, option;

            option = arguments[0], args = 2 <= arguments.length ? __slice.call(arguments, 1) : [];
            return this.each(function () {
                var data;

                data = $(this).data('star-rating');
                if (!data) {
                    $(this).data('star-rating', (data = new Starrr($(this), option)));
                }
                if (typeof option === 'string') {
                    return data[option].apply(data, args);
                }
            });
        }
    });
})(window.jQuery, window);

$(function () {
    return $(".starrr").starrr();
});

$(document).ready(function () {
    // General vars
    var form_edit_user_profil = $('#form_profil');

    // Form - click modificaiton
    $('#form_profil_edit').click(function () {
        form_edit_user_profil.find('input, textarea, select').prop('disabled', false);
        $('#form_profil_cancel').show();
        $('#form_profil_submit').show();
        $('#form_profil_edit').hide();
    });

    // Form - click annuler
    $('#form_profil_cancel').click(function () {
        form_edit_user_profil.find('input, textarea, select').prop('disabled', true);
        $('#form_profil_cancel').hide();
        $('#form_profil_submit').hide();
        $('#form_profil_edit').show();
    });

    // Form - click valider
    $('#form_profil_submit').click(function (e) {
        //Préparation de la requête
        var request = $.ajax({
            type: "POST",
            url: 'chemin/vers/le/controlleur',
            data: $('#form_profil').serialize(),
        });
        //Une fois terminé
        request.done(function (msg) {
            $("#log").html(msg);
        });
        //En cas d'échec
        request.fail(function (jqXHR, textStatus) {
            alert(" La requête a échouée: " + textStatus);
        });
        //Eviter le submit
        e.preventDefault();
    });


    // Star system
    $('#stars').on('starrr:change', function (e, value) {
        $('#count').html(value);
    });

    $('#stars-existing').on('starrr:change', function (e, value) {
        $('#count-existing').html(value);
    });

    // Panel
    $(".nav-tabs a").click(function () {
        $(this).tab('show');
    });
    var panels = $('.user-infos');
    var panelsButton = $('.dropdown-user');
    panels.hide();

    // Tooltip
    $('[data-toggle="tooltip"]').tooltip();

    $('#modal_launcher_changer_mdp').click(function (e) {
        $('#modal_changement_mdp .modal-body').load("modal.html");
    });


});
