<?php
/* @var $this EstatusController */
/* @var $model Estatus */

$this->breadcrumbs=array(
	'Estatuses'=>array('index'),
	$model->id_estatus,
);

$this->menu=array(
	array('label'=>'List Estatus', 'url'=>array('index')),
	array('label'=>'Create Estatus', 'url'=>array('create')),
	array('label'=>'Update Estatus', 'url'=>array('update', 'id'=>$model->id_estatus)),
	array('label'=>'Delete Estatus', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_estatus),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Estatus', 'url'=>array('admin')),
);
?>

<h1>View Estatus #<?php echo $model->id_estatus; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_estatus',
		'estatus',
	),
)); ?>
