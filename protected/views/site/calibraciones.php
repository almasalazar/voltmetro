<?php
/* @var $this SiteController */
/* @var $model CalibracionesForm */
/* @var $form CActiveForm */

$this->pageTitle=Yii::app()->name . ' - Calibraciones';
$this->breadcrumbs=array(	'Calibraciones',); ?>

<div class="form">
	<?php $form = $this->beginWidget('CActiveForm',
		array(
			'action'=> Yii::app()->createUrl('site/calibraciones'),
			'enableClientValidation'=> true,
			'clientOptions'=>array(
				'validateOnSubmit'=> true,
				),
			))
	?>

<h1>Proximas Calibracioes del Mes</h1>




