<?php
/* @var $this PersonaController */
/* @var $model Persona */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'persona-form',
	'enableAjaxValidation'=>false,
	'enableClientValidation'=>true,
	'clientOptions'=>array(
		'validateOnSubmit'=>true,
		)
)); ?>

	<p class="note">Los campos con <span class="required">*</span> son requeridos.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="form-group">
		<?php echo $form->labelEx($model,'rpe*'); ?>
		<?php echo $form->textField($model,'rpe',array('size'=>60,'maxlength'=>100,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'rpe'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'nombre Completo*'); ?>
		<?php echo $form->textField($model,'nombre',array('size'=>60,'maxlength'=>150,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'nombre'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'email*'); ?>
		<?php echo $form->textField($model,'email',array("placeholder"=>"Email del Jefe de area",'size'=>60,'maxlength'=>100,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'email'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'password'); ?>
		<?php echo $form->passwordField($model,'password',array("placeholder"=>"En caso de ser jefe de area",'size'=>60,'maxlength'=>100,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'password'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'Puesto *'); ?>
		<?php echo $form->dropDownList($model,'es_jefe', array('empty'=>'Selecciona el puesto de la persona', '1'=>'Jefe de Area','2'=>'Trabajador'), array('class'=>'form-control')); ?>	
		<?php echo $form->error($model,'es_jefe'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'Rpe del Jefe *'); ?>
		<?php echo $form->textField($model,'rpe_jefe',array('size'=>60,'maxlength'=>100,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'rpe_jefe'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'Area Asignada *'); ?>
		<?php echo $form->dropDownList($model,'id_area',
		CHtml::listData(Area::model()->findAll(),'id_area','tipo','area'),
		array('empty'=>'Selecciona el area',
		  			'class'=>'form-control')); ?>
		<?php echo $form->error($model,'id_area'); ?>
	</div>

	<div class="row buttons" align="center">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Guardar' : 'Save',array("class"=>"btn btn-success btn-large" )); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->