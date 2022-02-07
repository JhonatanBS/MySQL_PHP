<?php
  // else if=> Se não a primeira opção será a segunda e assim por diante
  $nota = 4.5;

  if( $nota >= 5.0 && $nota <= 10.0){
    echo "O aluno foi aprovado!";
  }else if($nota >= 0.0 && $nota < 5.0){
      echo "O aluno reprovou :(";
  }
?>