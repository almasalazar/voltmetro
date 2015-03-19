<?php
/* @var $this EstatusController */
/* @var $data Estatus */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_estatus')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_estatus), array('view', 'id'=>$data->id_estatus)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('estatus')); ?>:</b>
	<?php echo CHtml::encode($data->estatus); ?>
	<br />


</div>