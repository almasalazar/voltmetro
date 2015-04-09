<?php
/* @var $this AparatoController */
/* @var $data Aparato */
?>

<div class="media">
	<div class="media-body">
		<div>
			<h4 class="media-heading">
				<?php echo CHtml::encode($data->getAttributeLabel('no_serie')); ?>: <?php echo CHtml::link(CHtml::encode($data->no_serie), array('view', 'id'=>$data->no_serie)); ?>
				<?php echo CHtml::encode($data->getAttributeLabel('rpe')); ?>: <?php echo CHtml::encode($data->rpe); ?>
				<?php echo CHtml::encode($data->archivo); ?>
				<small>
					<?php echo CHtml::encode($data->prox_calib); ?>
				</small>
			</h4>
		</div>
</div>
	


	 	<?php

	 /*


	 <b><?php echo CHtml::encode($data->getAttributeLabel('descripcion')); ?>:</b>
	<?php echo CHtml::encode($data->descripcion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('marca')); ?>:</b>
	<?php echo CHtml::encode($data->marca); ?> 
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('modelo')); ?>:</b>
	<?php echo CHtml::encode($data->modelo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('tipo')); ?>:</b>
	<?php echo CHtml::encode($data->tipo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ultima_calib')); ?>:</b>
	<?php echo CHtml::encode($data->ultima_calib); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('prox_calib')); ?>:</b>
	<?php echo CHtml::encode($data->prox_calib); ?>
	<br />


	<b><?php echo CHtml::encode($data->getAttributeLabel('observaciones')); ?>:</b>
	<?php echo CHtml::encode($data->observaciones); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('archivo')); ?>:</b>
	<?php echo CHtml::encode($data->archivo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('rpe')); ?>:</b>
	<?php echo CHtml::encode($data->rpe); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_estatus')); ?>:</b>
	<?php echo CHtml::encode($data->id_estatus); ?>
	<br />

	*/ ?>

</div>