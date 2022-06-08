$(document).ready(function(){

      getClass();

      $("#profissao").change(function(){
          if( $(this).val() != "" ){
              $(".cont_img .button").css('display','block');
              showStatus($(this).val());
          }else{
              $(".cont_img .button").css('display','none');
          }

      });


      $("#cadclass_form").submit(function(e){
          e.preventDefault();

            $.ajax({
                url: "../controller/register/cadclasse.php",
                type: "POST",
                data: $(this).serialize(),
                success: function(data){
                    alert("Cadastrado com sucesso!!");
                },
                error: function(data){
                    alert("ERRO, Ulysses deve ter dado Update sem WHERE !!");
                }
            });

       });


});


function showStatus(classe){

      $.post("../controller/register/showstatus.php", {
        classe: classe
      },
      function(data){
          $("#tablestatus").html(data);
      });

}




function getClass(){

      $.post("../controller/register/getclass.php", {
      },
      function(data){
          $("#profissao").html(data);
      });

}



function change(sum){
    var prof = $("#profissao").val();
    var img_per = $("#img_per");
    var val_img = $("#val_img");

    if(prof != ""){
        var val = val_img.val();
        var sum = parseInt(sum);
        var calculo = parseInt(val)+sum;
        var url = "image/classes/"+prof+"/"+calculo+".jpg";

        if(calculo === 5){
          calculo = 0;
        }


        val_img.val(calculo);
        img_per.attr('src',url);
        /*  $.ajax({
              url: url,
              type:'HEAD',
              error: function()
              {
                  alert(url);
              },
              success: function()
              {
                  val_img.val(calculo);
                  img_per.attr('src',url);
              }
          });
          */


    }


}
