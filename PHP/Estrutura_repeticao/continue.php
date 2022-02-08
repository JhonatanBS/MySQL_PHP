<?php
  // Continue => Pula para a próxima execução ou comando.
  $number = 0;

  while($number < 10){
      if($number === 5){
        echo $number . " foi pulado. <br>";  
        $number++;
        continue;
      }
      echo $number . "<br>";
      $number++; 
  }
?>