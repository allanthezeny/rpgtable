<?php
	
	class Personagem{

		private $nome;
		private $level;
		private $gold;
		private $item;
		private $classe;

		public function __construct($n,$c){

			$this-> nome = $n;
			$this-> level = 1;
			$this-> gold = 10;
			$this-> item = null;
			$this-> classe = $c;
		}

		public function getNome(){

			return $this-> nome;
		}

		public function getLevel(){

			return $this-> level;
		}

		public function getGold(){

			return $this-> gold;
		}

		public function getClasse(){

			return $this-> classe;
		}
}