<?php

    try{

        $db = new PDO('mysql:host=localhost;dbname=rpgtable','root','');
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $db->query("SET NAMES 'utf8' ");
        $db->query('SET character_set_connection=utf8');
        $db->query('SET character_set_client=utf8');
        $db->query('SET character_set_results=utf8');
    }
    catch(PDOException $e)
    {
        echo $e;
    }

?>
