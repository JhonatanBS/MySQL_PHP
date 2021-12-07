<?php
  /*is_float: Verifica se o dado é float, retornando true ou false*/
  if(is_float(5.5)){
      echo "O número é float";
  }
  
  if(is_float("25")){
      echo "Não é um número float";
  }

  $numero = 15.4;

  if(is_float($numero)){
      echo "<br> outro número float";
  }

?>