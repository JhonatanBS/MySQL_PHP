<?php
  
  class Pessoa{

     function falar(){
         echo "Bom dia!";
     }

  }
 
  $lucas = new Pessoa();

  $lucas->nome = "Lucas";

  echo $lucas->nome;

  echo "<br>";

  $lucas->falar();

?>