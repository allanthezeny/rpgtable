<?php

  require_once("../../model/connect.php");


  try{
    $query = $db->query("SELECT ID_CLASSE, NOME_CLASSE FROM TB_CLASSE");
    $result = $query->fetchAll(PDO::FETCH_ASSOC);

    ?><option value="" hidden selected>Classe</option>

    <?php foreach($result as $class){ ?>

        <option value="<?= $class['NOME_CLASSE']; ?>"><?= $class['NOME_CLASSE']; ?></option>

    <?php }

  }catch(PDOException $e){
    echo $e;
  }





?>
