<?php
/* @var $this PersonaController */
/* @var $data Persona */
?>

<div>
<table class="table table-striped">

	<b><?php echo CHtml::encode($data->getAttributeLabel('rpe')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->rpe), array('view', 'id'=>$data->rpe)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nombre')); ?>:</b>
	<?php echo CHtml::encode($data->nombre); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('email')); ?>:</b>
	<?php echo CHtml::encode($data->email); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('password')); ?>:</b>
	<?php echo CHtml::encode($data->password); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('rpe_jefe')); ?>:</b>
	<?php echo CHtml::encode($data->rpe_jefe); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_area')); ?>:</b>
	<?php echo CHtml::encode($data->idArea->area); ?>
	<br />
	
</table>
</div>