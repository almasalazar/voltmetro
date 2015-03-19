<?php
/* @var $this EstatusController */
/* @var $model Estatus */

$this->breadcrumbs=array(
	'Estatuses'=>array('index'),
	$model->id_estatus=>array('view','id'=>$model->id_estatus),
	'Update',
);

$this->menu=array(
	array('label'=>'List Estatus', 'url'=>array('index')),
	array('label'=>'Create Estatus', 'url'=>array('create')),
	array('label'=>'View Estatus', 'url'=>array('view', 'id'=>$model->id_estatus)),
	array('label'=>'Manage Estatus', 'url'=>array('admin')),
);
?>

<h1>Update Estatus <?php echo $model->id_estatus; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>