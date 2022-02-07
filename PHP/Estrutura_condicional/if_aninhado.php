<?php
  // if aninhado => É um if dentro de outro
  $nota = 4.5;

  if( $nota >= 5.0 && $nota <= 10.0){
    if($nota >= 9.0 ){
        echo "Espetacular!!!";
    }else if($nota >= 7.0){
        echo "Excelente!!!";
    }else{
        echo "Precisa melhorar!!!";
    }
  }else{
      echo "O aluno reprovou :(";
  }
?>