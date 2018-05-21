<div class="container">
    <div class="clearfix margin-bottom">
      <form action="<?= URL_RAIZ ?>" method="post" class="form-signin">
        <h4>Sistema de Pedido de Lanches/Garçom</h4>
        <br>
        <div class="form-group">
            Mesa:
            <input id="mesa" name="mesa" class="form-control campo-form">
        </div>
        <br>
        <div class="form-group">
            Tipo do lanche:
            <select id="lanches_id" name="lanche" class="form-control campo-form">
              <?php foreach ($lanches as $lanche) : ?>
                <option value="<?= $lanche->getId() ?>"><?= $lanche->getNome() ?></option>
              <?php endforeach ?>
            </select>
        </div>
        <br>
        <div class="form-group">
            Quantidade de lanche:
            <input id="quantidade" name="quantidade" class="form-control campo-form">
        </div>
        <br>
        <button type="submit" class="btn btn-default">Enviar pedido</button>
      </form>
    </div>
</div>
