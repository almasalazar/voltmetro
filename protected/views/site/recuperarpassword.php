<?php
/* @var $this SiteController */
/* @var $error array */

$this->pageTitle=Yii::app()->name . ' - Recuperar password';
$this->breadcrumbs=array('Recuperar password',);
echo $msg ;
?>

<div class="form">
	<?php $form = $this->beginWidget('CActiveForm',
		array(
			'method'=>'POST',
			'action'=> Yii::app()->createUrl('site/recuperarpassword'),
			'enableClientValidation'=> true,
			'clientOptions'=>array(
				'validateOnSubmit'=> true,
				),
			))
	?>




<div class="col-md-4" >
	<div class="panel panel-success">		

<div class="form-group">
		<?php echo $form->labelEx($model,'username'); ?>
		<?php echo $form->textField($model,'username', array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'username'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'email'); ?>
		<?php echo $form->textField($model,'email', array('class'=>'form-control')); ?>
 		<?php echo $form->error($model,'email', array('class'=>'text-error')); ?>
	</div>

<div class="form-group">
	<?php 
		echo $form->labelEx($model, 'captcha');
		$this->widget('CCaptcha', array('buttonLabel'=> 'Actualizar Codigo'));
		echo $form->textField($model, 'captcha', array('class'=>'form-control')); ?>

	 <div class="text-info">
		Por favor introduce el texto que ves en la imagen. 
	</div>
	<?php echo $form->error($model, 'captcha', array('class'=> 'text-error')); ?>
</div>

<div class="form-group" align="center">
	<?php echo Chtml::submitButton('Recuperar password', array('class'=> 'btn btn-success')); ?>

</div>
	<?php $this->endWidget();?>
</div>


	</div>
</div>
