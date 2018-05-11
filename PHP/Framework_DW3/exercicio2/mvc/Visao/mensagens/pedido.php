<h2>Pedido</h2>
<?php foreach ($mensagens as $mensagem) : ?>
    <ul>
        <li><strong>Mesa: <?= $mensagem->getMesa() ?></strong></li>
        <li>Quantidade de lanches: <?= $mensagem->getQuantidade() ?></li>
        <br>
    </ul>
<?php endforeach ?>
</div>
