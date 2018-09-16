
$(document).ready(function(){


      $("#profissao").change(function(){
          if( $("#profissao").val() != "" ){
              $(".cont_img .button").css('display','block');
          }else{
              $(".cont_img .button").css('display','none');
          }

      });



});







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
