<html>
	<head>
		<title>Atualizar Imagem</title>
	</head>
	<body>

	
	<pre>
<?php
	if (isset($_FILES["imagem"])) {
		$tamanho = getimagesize($_FILES["imagem"]["tmp_name"]);
		if ($tamanho[0] != 800 || $tamanho[1] != 600 || $_FILES["imagem"]["type"] != "image/jpeg") {
            echo 'Imagem Inválida <br/>';
		} else {
            move_uploaded_file($_FILES["imagem"]["tmp_name"], "quebracabeca.jpg");
            include "gerar_quebracabeca.php";
            echo '<br>Imagem alterada com sucesso';
		}
	}
	
?>
    </pre>

        <form action="atualizar_imagem.php" method="POST" enctype="multipart/form-data">
			Enviar nova imagem para atualizar (Tamanho válido 800x600):
			<br />
			<input name="imagem" type="file" />
			<br />
			<input type="submit" />
		</form>
	</body>
</html>
