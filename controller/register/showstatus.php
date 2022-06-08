<?php

  require_once("../../model/connect.php");


  if( !empty($_POST['classe']) ){
      try{
        $query = $db->query("SELECT * FROM TB_CLASSE WHERE NOME_CLASSE = '".$_POST['classe']  ."'  ");
        $result = $query->fetchAll(PDO::FETCH_ASSOC);

        foreach($result as $class){ ?>
          <table class="table animated fadeIn">
            <tr>
              <th>HP</th>
              <th id="hp"><?= $class['HP_CLASSE']; ?></th>
            </tr>
            <tr>
              <th>MP</th>
              <th id="mp"><?= $class['MP_CLASSE']; ?></th>
            </tr>
            <tr>
              <th>Força</th>
              <th id="for"><?= $class['FORCA_CLASSE']; ?></th>
            </tr>
            <tr>
              <th>Agilidade</th>
              <th id="agi"><?= $class['AGILIDADE_CLASSE']; ?></th>
            </tr>
            <tr>
              <th>Inteligencia</th>
              <th id="int"><?= $class['INTELIGENCIA_CLASSE']; ?></th>
            </tr>
            <tr>
              <th>Vitalidade</th>
              <th id="vit"><?= $class['VITALIDADE_CLASSE']; ?></th>
            </tr>
            <tr>
              <th>Destreza</th>
              <th id="des"><?= $class['DESTREZA_CLASSE']; ?></th>
            </tr>
            <tr>
              <th>Sorte</th>
              <th id="sor"><?= $class['SORTE_CLASSE']; ?></th>
            </tr>
            <table>
        <?php
        }

      }catch(PDOException $e){
        echo $e;
      }
  }

?>
