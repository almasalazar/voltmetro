<?php
/* @var $this BibliotecaController */
/* @var $model Biblioteca */
/* @var $form CActiveForm */
?>
<div class="row">
    <div class="col-md-5 col-md-offset-1">
    	
    	<div class="panel panel-default panel-shadow">
		  <div class="panel-heading">
		  		<h3 class="panel-title">
		    		Subir documento:
		    	</h3>
		  </div>
		  <div class="panel-body">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'biblioteca-form',
	'enableAjaxValidation'=>false,
	'htmlOptions' => array('enctype' => 'multipart/form-data'),//para subir los respaldos
)); ?>

	<p class="note">Campos con <span class="required">*</span> son requeridos.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="form-group">
		<?php echo $form->labelEx($model,'Identificador *'); ?>
		<?php echo $form->textField($model,'id_biblioteca',array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'id_biblioteca'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'nombre'); ?>
		<?php echo $form->fileField($model,'nombre',array('size'=>60,'maxlength'=>100,)); ?>
		<?php echo $form->error($model,'nombre'); ?>
	</div>

	<div class="buttons" align="center">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Subir' : 'Save',array("class"=>"btn btn-success btn-large" )); ?>
	</div>

<?php $this->endWidget(); ?>

	</div>

	</div>
</div>