<?php
  /*is_string: Verifica se o dado é string, retornando true ou false*/
  if(is_string("ola")){
      echo "É uma string";
  }
  
  if(is_string(10)){
      echo "Não é uma string";
  }

  $numero = 15.4;
  $str = "Bom dia";

  if(is_string($str)){
      echo "<br> outra string";
  }

?>