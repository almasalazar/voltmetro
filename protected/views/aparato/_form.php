<?php
/* @var $this AparatoController */
/* @var $model Aparato */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'aparato-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="form-group">
		<?php echo $form->labelEx($model,'no_serie'); ?>
		<?php echo $form->textField($model,'no_serie',array('size'=>50,'maxlength'=>50,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'no_serie'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'descripcion'); ?>
		<?php echo $form->textArea($model,'descripcion',array('rows'=>6, 'cols'=>50,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'descripcion'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'marca'); ?>
		<?php echo $form->textArea($model,'marca',array('rows'=>6, 'cols'=>50,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'marca'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'modelo'); ?>
		<?php echo $form->textArea($model,'modelo',array('rows'=>6, 'cols'=>50,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'modelo'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'tipo'); ?>
		<?php echo $form->textArea($model,'tipo',array('rows'=>6, 'cols'=>50,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'tipo'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'ultima Calibracion'); ?>
		<?php echo $this->widget('zii.widgets.jui.CJuiDatePicker',
				array('model'=>$model, 
					'attribute'=>'ultima_calib',
					'language'=>'es', 
					#'date_format(YY-MM-DD)',
					'options'=>array('showAnim'=>'slide'),
					'htmlOptions'=>array('class'=>'form-control')),
				true);
		?>
		<?php echo $form->error($model,'ultima_calib'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'prox_calib'); ?>
		<?php echo $this->widget('zii.widgets.jui.CJuiDatePicker',
				array('model'=>$model, 
					'attribute'=>'prox_calib',
					'language'=>'es', 
					'options'=>array('showAnim'=>'fold'),
					'htmlOptions'=>array('class'=>'form-control')),
				true);
		?>
		<?php echo $form->error($model,'prox_calib'); ?>
		
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'observaciones'); ?>
		<?php echo $form->textArea($model,'observaciones',array('rows'=>6, 'cols'=>50,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'observaciones'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'Subir archivo'); ?>
		<?php echo CHtml::activeFileField($model,'archivo'); ?>
		<?php echo $form->error($model,'archivo'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'rpe'); ?>
		<?php echo $form->textField($model,'rpe',array('size'=>60,'maxlength'=>100,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'rpe'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'Estatus'); ?>
		<?php echo $form->dropDownList($model,'id_estatus',CHtml::listData(Estatus::model()->findAll(),'id_estatus','estatus'),
			array('empty'=>'Selecciona un estatus...','class'=>'form-control')); ?>
		<?php echo $form->error($model,'id_estatus'); ?>
	</div>

	<div class="buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save',array("class"=>"btn btn-success btn-large" )); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->