<?php
  $nome = "John";
  $sobrenome = "Wesley"
  // Modo exibição usando o sinal de = e string
?>

<form action="#">
    <div>
        <input type="text" value="<?= $nome; ?>">
    </div>
    <div>
        <input type="text" value="<?= $sobrenome; ?>">
    </div>
    <div>
        <input type="submit" value="Enviar">
    </div>
</form>