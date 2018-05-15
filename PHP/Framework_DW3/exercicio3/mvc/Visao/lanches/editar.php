<div class="center-block site">
    <h1 class="text-center">Edição de Lanches</h1>
    <nav>
        <a href="<?= URL_RAIZ . 'lanches' ?>" class="btn btn-default">Voltar</a>
    </nav>
    <form action="<?= URL_RAIZ . 'lanches/' . $lanche->getId() ?>" method="post">
        <input type="hidden" name="_metodo" value="PATCH">
        <div class="form-group">
            <label class="control-label" for="nome">Nome *</label>
            <input id="nome" name="nome" class="form-control" value="<?= $lanche->getNome() ?>" autofocus>
        </div>
        <button type="submit" class="btn btn-primary center-block">Editar</button>
    </form>
</div>
