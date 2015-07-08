

    $(document).ready(function(){
        $("#note").click(function(){
            $("#textArea").toggle();
            $("#datetimepicker1").toggle();
        });
    });
    $(document).ready(function(){
        $("#meeting").click(function(){
            $("#textArea").toggle();
            $("#datetimepicker1").toggle();
        });
    });
    $(document).ready(function(){
        $("#reminder").click(function(){
            $("#textArea").toggle();
            $("#datetimepicker6").toggle();
            $("#datetimepicker7").toggle();
                $('#datetimepicker6').datetimepicker();
                $('#datetimepicker7').datetimepicker();
                $("#datetimepicker6").on("dp.change", function (e) {
                    $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
                });
                $("#datetimepicker7").on("dp.change", function (e) {
                    $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
                });
        });
    });
    $(document).ready(function() {

    });

    (function(jQuery){var isLS=typeof window.localStorage!=="undefined";function wls(n,v){var c;if(typeof n==="string"&&typeof v==="string"){localStorage[n]=v;return true}else if(typeof n==="object"&&typeof v==="undefined"){for(c in n)if(n.hasOwnProperty(c))localStorage[c]=n[c];return true}return false}function wc(n,v){var dt,e,c;dt=new Date;dt.setTime(dt.getTime()+31536E6);e="; expires="+dt.toGMTString();if(typeof n==="string"&&typeof v==="string"){document.cookie=n+"="+v+e+"; path=/";return true}else if(typeof n===
        "object"&&typeof v==="undefined"){for(c in n)if(n.hasOwnProperty(c))document.cookie=c+"="+n[c]+e+"; path=/";return true}return false}function rls(n){return localStorage[n]}function rc(n){var nn,ca,i,c;nn=n+"=";ca=document.cookie.split(";");for(i=0;i<ca.length;i++){c=ca[i];while(c.charAt(0)===" ")c=c.substring(1,c.length);if(c.indexOf(nn)===0)return c.substring(nn.length,c.length)}return null}function dls(n){return delete localStorage[n]}function dc(n){return wc(n,"",-1)}jQuery.extend({Storage:{set:isLS?
        wls:wc,get:isLS?rls:rc,remove:isLS?dls:dc}})})(jQuery);

    (function ntSaveForms() {
        var text, cl;
        $("#textArea").each(function(i) {
            cl = "ntSaveForms"+i;
            $(this).addClass(cl); // add new class
            text = $.Storage.get(cl);
            if (text && text.length > 0 && !$(this).val()) {
                $(this).val(text); // set field data
            }
        });
    })();
    function deleteRow () {
        confirm("Do you want to delete this note?");
    };

    $(document).ready(function(){
    var countChecked = function() {
        var n = $( "input:checked" ).length;
        $( "#checkboxDone" ).text( n + (n === 1 ? " is" : " are") + " done" );
    };
    countChecked();

    $( "input[type=checkbox]" ).on( "click", countChecked ); });

    $(document).ready(function() {
        $(function () {
            $('#datetimepicker1').datetimepicker();
        });
    });
    function Logout() {
        confirm("Do you want to logout?");
    };
    function DeleteAccount() {
        confirm("Do you want to DELETE you account?");
    };