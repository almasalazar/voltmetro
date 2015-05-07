<?php
/* @var $this BibliotecaController */
/* @var $data Biblioteca */
?>

<div class="view">

		  <div class="col-sm-3 col-md-2">
		    <div class="thumbnail">
		      <img src="img/doc.png" alt="...">
		      <div class="caption">
		      <b></b>
				<?php echo CHtml::encode($data->nombre); ?>
				<p><a href="<?php echo CHtml::encode($data->getAttributeLabel('nombre')); ?>:" class="btn btn-success" role="button">Descargar</a></p>
				<br />
		      </div>
		    </div>
		  </div>
	

</div>