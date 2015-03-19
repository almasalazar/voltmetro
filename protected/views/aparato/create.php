<?php
/* @var $this AparatoController */
/* @var $model Aparato */

$this->breadcrumbs=array(
	'Aparatos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Aparato', 'url'=>array('index')),
	array('label'=>'Manage Aparato', 'url'=>array('admin')),
);
?>

<h1>Create Aparato</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>