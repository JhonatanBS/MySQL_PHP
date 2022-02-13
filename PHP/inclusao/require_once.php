<?php
  require_once "require_once_teste.php";
  require_once "require_once_teste.php";// Não houve erro porque o require_once é chamado apenas uma vez
  //Se o arquivo não existe a linha de código é interrompida
  require_once "teste.php";// Não existe esse arquivo
?>

<p>Require</p>