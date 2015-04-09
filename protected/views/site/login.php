<?php
/* @var $this SiteController */
/* @var $model LoginForm */
/* @var $form CActiveForm  */

$this->pageTitle=Yii::app()->name . ' - Login';
$this->breadcrumbs=array(
	'Login',
);
?>

<h1>Entrar al voltmetroWeb</h1>

<p>Por favor introduce tu rpe y contraseña</p>

<div class="form">
<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'login-form',
	'enableClientValidation'=>true,
	'clientOptions'=>array(
		'validateOnSubmit'=>true,
	),
)); ?>

	<p class="note">Campos requeridos<span class="required">*</span></p>

	<div class="col-md-4" >
	<div class="panel panel-success">

	<div class="form-group">
		<?php echo $form->labelEx($model,'rpe*'); ?>
		<?php echo $form->textField($model,'username', array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'username'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'password'); ?>
		<?php echo $form->passwordField($model,'password', array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'password'); ?>
	</div>

	<div class="row rememberMe">
		<?php echo $form->checkBox($model,'rememberMe'); ?>
		<?php echo $form->label($model,'rememberMe'); ?>
		<?php echo $form->error($model,'rememberMe'); ?>
	</div>

	<div class="buttons">
		<?php echo CHtml::submitButton('Login',array("class"=>"btn btn-success btn-large" )); ?>
	</div>

	 <a href="<?php echo Yii::app()->createUrl('site/recuperarpassword'); ?> "> 
 		Recuperar password
 	</a>
		</div>
	</div>


<?php $this->endWidget(); ?>
</div><!-- form -->
 
