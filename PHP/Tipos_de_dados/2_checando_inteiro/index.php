<?php
  /*is_int: Verifica se o dado é inteiro, retornando true ou false*/
  if(is_int(5)){
      echo "O número é inteiro";
  }
  
  if(is_int("25")){
      echo "Não é um número inteiro";
  }

  $numero = 15;

  if(is_int($numero)){
      echo "<br> outro número inteiro";
  }

?>