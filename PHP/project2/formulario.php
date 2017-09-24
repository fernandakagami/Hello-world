<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Cadastro de usuário</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/estilo.css">
    <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
  </head>
  <body>
    <main class="container largura-site">
      <h1>Cadastro de usuário</h1>
      <form action="formulario.php" method="post" id="formulario">
        <div class="form-group">
          <label>Nome:</label>
          <input class="form-control" type="text" name="nome" id="nome">
        </div>
        <div class="form-group">
          <label>Email:</label>
          <input class="form-control" type="email" name="email" id="email">
        </div>
        <div class="form-group">
          <label>Telefone:</label>
          <input class="form-control" type="text" name="telefone" id="telefone">
        </div>
        <div class="form-group">
          <input class="btn btn-primary btn-block" type="submit" value="Enviar" id="enviar">
        </div>
      </form>
    </main>
  <script>
  $("#formulario").submit(function(e) {

      var url = "cadastro.php"; // the script where you handle the form input.

      $.ajax({
             type: "POST",
             url: url,
             data: $("#formulario").serialize(), // serializes the form's elements.
             success: function(data)
             {
                alert(data); // show response from the php script.
                if (data == "Cadastro realizado com sucesso.") {
                  $('.form-control').val("");
                }
             }
           });

      e.preventDefault(); // avoid to execute the actual submit of the form.
  });
  </script>
  </body>
</html>
