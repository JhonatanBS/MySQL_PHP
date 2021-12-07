<?php
  /*is_string: Verifica se o dado é string, retornando true ou false*/
  if(is_bool(10 > 5)){
      echo "É um booleano <br>";
  }
  
  if(is_bool(true)){
      echo "Outro booleano <br>";
  }

  $falso = false;
  $verdadeiro = true;

  if($falso == 0){
      echo "0 é booleano <br>";
  }
  if($verdadeiro == 1){
    echo "1 é booleano";
}

?>