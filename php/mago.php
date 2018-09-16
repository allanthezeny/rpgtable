<?php
	
	class Mago{

		private $Hp;
		private $Mp;

		public function __construct(){

			$this-> setHp();
			$this-> setMp();
		}

		public function getHp(){

			return $this-> Hp;
		}
		public function getMp(){

			return $this-> Mp;
		}
		public function setHp(){

			$this-> Hp = 100 ;
		}
		public function setMp(){

		 	$this-> Mp = 100;
		}

}