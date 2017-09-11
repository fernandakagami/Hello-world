<html>
	<head>
		<style>
			*{padding:0; margin:0; border:0;}
			table {border:0; border-spacing: 10px;}
			table tr td{padding:0; margin:0}
		</style>
	</head>
	<body>
		<table>
			<?php 
			
			$figuras = [];
			
			for($i=1; $i<=48; $i++){
                $figuras[] = $i;                 
			}
			shuffle($figuras); 
			
			for($linha=0; $linha<=5; $linha++) : ?>
			<tr>
				<?php for($coluna=0; $coluna<=7; $coluna++) : 
				$posicao = ($linha*8)+$coluna;
				?>
				<td><img src="imagens/<?php echo $figuras[$posicao] ?>.jpg" /></td>
				<?php endfor; ?>
			</tr>
			<?php endfor; ?>
		</table>
	</body>
</html>
