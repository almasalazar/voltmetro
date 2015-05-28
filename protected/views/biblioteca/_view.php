<?php
/* @var $this BibliotecaController */
/* @var $data Biblioteca */
?>

<div class="table">
	<b><?php echo CHtml::encode($data->getAttributeLabel('nombre')); ?>:</b>
	 <?php echo CHtml::link(CHtml::encode($data->nombre)); ?>
	<br />		


</div>