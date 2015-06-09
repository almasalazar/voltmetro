<?php
/* @var $this SiteController */
/* @var $error array */

$this->pageTitle=Yii::app()->name . ' - Configuracion';

?>
	<?php $form = $this->beginWidget('CActiveForm',
		array(
			'method'=>'POST',
			'action'=> Yii::app()->createUrl('site/configuracion'),
			'enableClientValidation'=> true,
			'clientOptions'=>array(
				'validateOnSubmit'=> true,
				),
			))
	?>

		<hr>		
	<div class="row">
    <div class="col-md-4 col-md-offset-4">

    	<div class="panel panel-default panel-shadow">
		  <div class="panel-heading text-center">
		  	Cambiar contraseña
		  </div>
		  <div class="panel-body">
					<div class="form">
				<form id="logon-form" action="" method="post">

<div class="form-group">
<span class="glyphicon glyphicon-user"></span>
		<?php echo $form->labelEx($model,'rpe'); ?>
		<?php echo $form->textField($model,'rpe', array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'rpe'); ?>
	</div>

	<div class="form-group">
	<span class="glyphicon glyphicon-gmail"></span>
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
		</div><!--panel -->
	</div><!-- col-md-4 -->
</div><!-- row -->