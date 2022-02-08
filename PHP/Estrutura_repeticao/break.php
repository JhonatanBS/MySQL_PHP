<?php
  $numero = 0;
  //Enquanto(condição){código e incremento ou decremento}
  while($numero < 100){
      if($numero % 2 === 0)
        echo $numero . "<br>";
      $numero++;
      if($numero > 50)
        break;// Sai do while
  }
?>