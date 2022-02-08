<?php
  // Loop aninhado => Um loop dentro de outro loop.
  $vetor[3][3] = 0;

  for($i = 0; $i < 3; $i++){
    for($j = 0; $j < 3; $j++){
        $vetor[$i][$j] = 10;
    }
  }

  for($i = 0; $i < 3; $i++){
    for($j = 0; $j < 3; $j++){
       echo $vetor[$i][$j] . " ";
    }
    echo "<br>";
  }
?>