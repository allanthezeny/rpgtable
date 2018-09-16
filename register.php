<!DOCTYPE html>
<html>
<head>


    <meta charset="utf-8">

    <title>RpgTable</title>

    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

		<form id="form-cad">
	  		<div class="form-group">
	    		<label for="nome">Nome:</label>
	    		<input type="text" class="form-control" id="nome">
	  		</div>
	 		<div class="form-group">
	 			<label for="classe">Classe:</label>
	 			<select class="form-control" id="classe">
          <option value="Mago" selected>Mago</option>
          <option value="Paladino">Paladino</option>
        </select> 
	 		</div>
	 		 <button type="submit" class="btn btn-default">Criar</button>
		</form> 
        <?php
            require_once 'php/personagem.php';
            require_once 'php/mago.php';
            $m1 = new Mago();
            $p1 = new Personagem('Natanael',$m1);
            //echo"".$p1-> getClasse()->getHp();
            //echo"".$p1-> getClasse()->getMp();

        ?>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
