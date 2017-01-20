/**
 * Created by Gowthamaravi on 3/3/14.
 */
$.fn.enterKey = function (fnc) {

    return this.each(function () {

        $(this).keypress(function (ev) {

            var keycode = (ev.keyCode ? ev.keyCode : ev.which);

            if (keycode == '13') {

                fnc.call(this, ev);

            }

        })

    })

}

$(document).enterKey(function () {

    check_login();

});

$(document).ready(function(){

    document.getElementById('login_username').value = "";

    document.getElementById('login_pwd').value = "";

});
