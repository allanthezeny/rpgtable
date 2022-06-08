<?php
  header('Content-Type: text/html; charset=utf-8');// para formatar corretamente os acentos

  require_once("../../model/connect.php");

  if( !empty( $_POST ) ){

        try{
            $db->exec(" INSERT INTO img_resultado_evento VALUES(
                ".$last_id.",
                '".$img."',
                3)  ");
        }catch(PDOException $e){
            echo $e;
        }


  }

?>
