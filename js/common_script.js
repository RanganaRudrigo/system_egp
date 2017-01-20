/**
 * Created by Rangana Rudrigo on 3/10/15.
 */


var Xmlhttp = getxmlhttlp();

function getxmlhttlp() {
    if (window.XMLHttpRequest) {
// code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    }
    else {
// code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    return xmlhttp;
}
//========================================================================================================================================================================================

function check_login() {

    var postStr = "username=" + $('#login_username').val() + "&" + "password=" + $('#login_pwd').val();
    //alert(postStr)

    var xmlhttp = Xmlhttp;

    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {


            var x = xmlhttp.responseText;
            //alert(xmlhttp.responseText);

            switch (xmlhttp.responseText) {


                case "1":

//                    location.href = "home.php";
                    location.href = "Master";

                    break;

                case "2":

                    $( "#progress" ).removeClass( "loader progress progress-striped active " ).addClass( "loader progress progress-striped active hidden" );

                    $('#login_err').css({'color': 'red', 'display': 'block'}).html('incorrect username/password');

                    document.getElementById('login_username').value = "";

                    document.getElementById('login_pwd').value = "";

                    break;

                default :

                    $( "#progress" ).removeClass( "loader progress progress-striped active " ).addClass( "loader progress progress-striped active hidden" );

                    $('#login_err').css({'color': 'red', 'display': 'block'}).html('incorrect username/password');

                    document.getElementById('login_username').value = "";

                    document.getElementById('login_pwd').value = "";

                    break;
            }

        }else{
            $( "#progress" ).removeClass( "loader progress progress-striped active hidden" ).addClass( "loader progress progress-striped active" );

        }
    }
    //alert("Welcome/login?" + postStr, true);
    //xmlhttp.open("GET", URL.base +"Welcome/login?" + postStr, true);
    xmlhttp.open("GET", "Welcome/login?" + postStr, true);


    xmlhttp.send();
}
//========================================================================================================================================================================================

function uploadImg(element,responseID,width, height,inputName) {

    var file, img;
    if ((file =document.getElementById(element).files[0] )) {
        img = new Image();
        img.onload = function () {
            if(width == this.width && height == this.height  ){
                var file = new FormData();
                file.append('userfile', document.getElementById(element).files[0]);
                var Xmlhttp = new getxmlhttlp();

                Xmlhttp.onreadystatechange = function () {

                    if (Xmlhttp.readyState === 4 && Xmlhttp.status === 200) {
                        document.getElementById(responseID).innerHTML = "";
                        var obj = $.parseJSON(Xmlhttp.responseText);
                        if( typeof obj.error == 'undefined'){
                            document.getElementById(responseID).innerHTML = "<img width='100px' src='" +URL.base + "/image/" +obj.upload_data.file_name + "'/> <input type='hidden'  name='"+inputName+"' value='" + obj.upload_data.file_name + "' > " ;
                        }else{
                            //    alert(obj.error);
                            document.getElementById(responseID).innerHTML ="<img width='100px' src='" +URL.base + "/image/whiteFlag.png'/>";
                        }
                    }
                    if (Xmlhttp.readyState < 4) {
                        document.getElementById(responseID).innerHTML = "<img width='20' src='"+URL.base+"image/indicator.gif' >";
                    }
                }

                Xmlhttp.open('POST', URL.base +"Uploader/do_upload");
                Xmlhttp.send(file);
            }else{
                customNoramalAlert('Country flag image resolution must be '+width+'X'+height);
            }
        };
        img.src = _URL.createObjectURL(file);
    }

}
//========================================================================================================================================================================================

function customNoramalAlert(message){

    bootbox.dialog({
            title: " Rainbow Travel Care",
            message: '<div class="row">  ' +
                '<div class="col-md-12"> ' +
               ' <div class="modal-body">' +
                ''+message+' ' +

               ' </div>' +
                ' </div>  </div>',
            buttons: {
                success: {
                    label: "Close",
                    className: "btn btn-default"
                }
            }
        }
    );

}

//========================================================================================================================================================================================

function deleteRecordeById(page,methodPath, did, table) {
//    alert(URL.base+methodPath+did);

    Delete_alert(function(){
        var Xmlhttp = new getxmlhttlp();

        Xmlhttp.onreadystatechange = function () {

            if (Xmlhttp.readyState === 4 && Xmlhttp.status === 200) {
                location.href =  URL.base+page;
            }
        }

        Xmlhttp.open("GET", URL.base+methodPath+did, true);

        Xmlhttp.send();
    });

/*    if (Delete_alert()) {



    }*/

}
//========================================================================================================================================================================================

function Delete_alert(c) {
    bootbox.confirm("Are you sure you would like to Delete selected recode from your Database?", function(result) {
        if(result){
            void c & c();
        }
    });

//    return confirm('Are you sure you would like to Delete selected recode from your Database?');

}
//========================================================================================================================================================================================

//========================================================================================================================================================================================

function reArrage_alert(c) {
    bootbox.confirm("Are you sure to re-arrange the record order?", function(result) {
        if(result){
            void c & c();
        }
    });

//    return confirm('Are you sure you would like to Delete selected recode from your Database?');

}


//========================================================================================================================================================================================
function searchDataLikeStatement(value,methodPath) {
    console.log('asdsadsa')
    if(value != ''){
        var Xmlhttp = new getxmlhttlp();
        Xmlhttp.onreadystatechange = function () {
            if (Xmlhttp.readyState === 4 && Xmlhttp.status === 200) {
                var x = xmlhttp.responseText;
//            alert(x);
                document.getElementById('pop_content').innerHTML =x;
                show_popup();
//                location.href =  URL.base+page;
            }
        }

       Xmlhttp.open("GET", URL.base+methodPath+value, true);
        Xmlhttp.send();
    }
}
//========================================================================================================================================================================================
function searchInvoicedItem(pID,InID,methodPath) {

//    if(value != ''){
        var Xmlhttp = new getxmlhttlp();
        Xmlhttp.onreadystatechange = function () {
            if (Xmlhttp.readyState === 4 && Xmlhttp.status === 200) {
                var x = xmlhttp.responseText;
//            alert(x);
                document.getElementById('pop_content').innerHTML =x;
                show_popup();
//                location.href =  URL.base+page;
            }
        }

        Xmlhttp.open("GET", URL.base+methodPath+pID+'/'+InID, true);
        Xmlhttp.send();
//    }
}
//========================================================================================================================================================================================

function searchInvoicedItem_return(pID,InID,methodPath,id) {


//    if(value != ''){
    var Xmlhttp = new getxmlhttlp();
    Xmlhttp.onreadystatechange = function () {
        if (Xmlhttp.readyState === 4 && Xmlhttp.status === 200) {
            var x = xmlhttp.responseText;
//            alert(x);
            document.getElementById('pop_content').innerHTML =x;
            show_popup();

            $("#key_process_return").data('id',id);
//                location.href =  URL.base+page;
        }
    }

    Xmlhttp.open("GET", URL.base+methodPath+pID+'/'+InID, true);
    Xmlhttp.send();
//    }
}




function show_popup() {
//        $('#ajax_pop').find('.modal-title').html("New Title");
//        $('#ajax_pop').find('.modal-body').html("New Body");
    $('#ajax_pop').modal('show');
//    $("#ajax_pop").draggable({
//        handle: "#modal-header"
//    });
}
function show_popup_custom() {
    $('#ajax_pop_custom').modal('show').find('input[type="text"]').val("");
//    $("#ajax_pop_custom").draggable({
//        handle: "#modal-header"
//    });
}

//========================================================================================================================================================================================
function loadModelSearchByBrandName(value,methodPath,responseID) {
//    alert(value)
    if(value != ''){
//        alert(methodPath)
        var Xmlhttp = new getxmlhttlp();
        Xmlhttp.onreadystatechange = function () {
            if (Xmlhttp.readyState === 4 && Xmlhttp.status === 200) {
                var x = xmlhttp.responseText;
//            alert(x);
                document.getElementById(responseID).innerHTML =x;
//                show_popup();
//                location.href =  URL.base+page;
            }
        }

        Xmlhttp.open("GET", URL.base+methodPath+value, true);
        Xmlhttp.send();
    }
}

//========================================================================================================================================================================================

function customMessage(msg) {
    bootbox.alert(msg, function(result) {
//        if(result){
//            void c & c();
//        }
    });

//    return confirm('Are you sure you would like to Delete selected recode from your Database?');

}


//========================================================================================================================================================================================


function NumOnly(obj,evt){
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if((charCode >= 48 && charCode <= 57) || charCode == 8 || charCode == 9 || charCode == 46 || (charCode >= 37 && charCode <= 40)){
        return true;
    }else{
        return false;
    }
}

//========================================================================================================================================================================================

function NumOnlyWithQry(cur,qty){

    var filter = /^[0-9-+]+$/;

    if (filter.test(cur)) {
//    if($.isNumeric(cur)){

        if(cur > qty){
            customMessage("entered quantity greater than abl: quantity ");
            return false;
        }else{

            return true;
        }

    }else{
        return false;
    }
}
//========================================================================================================================================================================================
function searchAllInvoiceData(invoiceid,methodPath) {

        var Xmlhttp = new getxmlhttlp();
        Xmlhttp.onreadystatechange = function () {
            if (Xmlhttp.readyState === 4 && Xmlhttp.status === 200) {
                var x = xmlhttp.responseText;
//            alert(x);
                document.getElementById('invoiceDataBody').innerHTML =x;
//                show_popup();
//                location.href =  URL.base+page;
            }
        }

        Xmlhttp.open("GET", URL.base+methodPath+invoiceid, true);
        Xmlhttp.send();
}
//========================================================================================================================================================================================

function BalanceInvoiceQty(obj,val,tot_qty,i){


    var invoice_qty = $('#item_qty'+i).val();
//    var invoice_qty = $('#bal'+i).val();

    var return_qty = $('#return_item_qty'+i).val() == '' ? 0 : $('#return_item_qty'+i).val();


    var damage_qty = $('#damage_item_qty'+i).val() == '' ? 0 : $('#damage_item_qty'+i).val();


    console.log(damage_qty)

    if(val == ''){
        obj.value = '';
//        val = 0;
    }





    if(parseFloat(tot_qty) < (parseFloat(return_qty) + parseFloat(damage_qty))){
        obj.value = '';
//        obj.className = 'validation-failed'; console.log(tot_qty)
        //	$('#item_qty'+i).val(parseFloat(qty) - parseFloat(invoice_qty));
    }
//
//    else{
////        obj.className = '';
//        //	$('#item_qty'+i).val(parseFloat(qty) - (parseFloat(val) + parseFloat(invoice_qty)));
//    }

}



function purchaseQty(obj,val,tot_qty){

   var  price = parseFloat($(obj).closest("tr").find('td:eq(3)').find('input').val()) ;
    //alert(val);
//    var invoice_qty = $('#item_qty'+i).val();
//
//    var return_qty = $('#return_item_qty'+i).val();
//
//    var damage_qty = $('#damage_item_qty'+i).val();
//
    if(val == ''){
        obj.value = '';
//        val = 0;

    }
//
    if(parseFloat(tot_qty) < parseFloat(val) ){
        obj.value = '';

    } else{
            $(obj).closest('tr').find('td').eq('5').find('input').val( val* price);
    }

}


function calTotal(obj){
    var  price = parseFloat($(obj).closest("tr").find('td:eq(3)').find('input').val()) ;
    var  qty = parseFloat($(obj).closest("tr").find('td:eq(4)').find('input').val()) ;

    $(obj).closest('tr').find('td').eq('5').find('input').val( price*qty);
    //alert(price*qty);
    //alert(price);

}
















