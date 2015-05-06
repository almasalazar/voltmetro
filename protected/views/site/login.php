<?php
/* @var $this SiteController */
/* @var $model LoginForm */
/* @var $form CActiveForm  */

$this->pageTitle=Yii::app()->name . ' - Login';

?>

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'login-form',
	'enableClientValidation'=>true,
	'clientOptions'=>array(
		'validateOnSubmit'=>true,
	),
)); ?>

<div class="container" >

	<img src="img/banner-cfe.png" width="100%" id="banner-cfe">
	
	<div class="container" >
		<hr>
		
	<div class="row">
    <div class="col-md-4 col-md-offset-4">

    	<div class="panel panel-default panel-shadow">
		  <div class="panel-heading text-center">
		  	Sistema Integral de Información del Laboratorio de Metrologia.
		  </div>
		  <div class="panel-body">
			<div class="form">
				<form id="logon-form" action="" method="post">	
					<div class="form-group">
					<span class="glyphicon glyphicon-user"></span> 
						<?php echo $form->labelEx($model,'rpe*'); ?>
						<?php echo $form->textField($model,'username', array('class'=>'form-control')); ?>
						<?php echo $form->error($model,'username'); ?>
					</div>

					<div class="form-group">
					<span class="glyphicon glyphicon-lock"></span> 
						<?php echo $form->labelEx($model,'password'); ?>
						<?php echo $form->passwordField($model,'password', array('class'=>'form-control')); ?>
						<?php echo $form->error($model,'password'); ?>
					</div>
					<div class="buttons">
						<?php echo CHtml::submitButton('Login',array("class"=>"btn btn-success btn-large" )); ?>
					</div>
					<br>
					<div class="form- pull-right">
						<a href="<?php echo Yii::app()->createUrl('site/recuperarpassword'); ?> ">¿Olvidaste tu contraseña?</a>
					</div>
				</form>		
			</div><!-- form -->
		  </div>
		</div>
	</div><!-- col-md-4 -->
</div><!-- row -->
		<hr>
</div>

	<div class="clear"> </div>
		<div id="footer">
			<div class="row">
	            <p class="text-center">Copyright & copy; 2015 CFE Zona Celaya.<br/>
				Todos los derechos reservados.<br/>
				Ingenieria de Servicios al Cliente.
				<!-- Todo esta bien -->
				</p>
			</div>
		</div><!-- footer -->
</div><!-- page -->

<?php $this->endWidget(); ?>

 
