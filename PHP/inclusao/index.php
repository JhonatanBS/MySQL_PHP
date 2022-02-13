<?php
  include_once "backend.php";
?>

<h1>Seja bem vindo ao nosso Site</h1>
<h2><?= $nome; ?> veja nossos produtos</h2>
<h3>Veja nossos produtos:</h3>
<ul>
    <?php foreach($produtos as $produto): ?>
    <li><?= $produto; ?></li>
    <?php endforeach; ?>    
</ul>