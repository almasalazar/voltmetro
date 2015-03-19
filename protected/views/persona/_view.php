<?php
/* @var $this PersonaController */
/* @var $data Persona */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('rpe')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->rpe), array('view', 'id'=>$data->rpe)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nombre')); ?>:</b>
	<?php echo CHtml::encode($data->nombre); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('correo')); ?>:</b>
	<?php echo CHtml::encode($data->correo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('password')); ?>:</b>
	<?php echo CHtml::encode($data->password); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('es_jefe')); ?>:</b>
	<?php echo CHtml::encode($data->es_jefe); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('rpe_jefe')); ?>:</b>
	<?php echo CHtml::encode($data->rpe_jefe); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_area')); ?>:</b>
	<?php echo CHtml::encode($data->id_area); ?>
	<br />


</div>