<?php
/* @var $this BibliotecaController */
/* @var $data Biblioteca */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_biblioteca')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_biblioteca), array('view', 'id'=>$data->id_biblioteca)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nombre')); ?>:</b>
	<?php echo CHtml::encode($data->nombre); ?>
	<br />


</div>