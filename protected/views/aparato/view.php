<?php
/* @var $this AparatoController */
/* @var $model Aparato */

$this->breadcrumbs=array(
	'Aparatos'=>array('index'),
	$model->no_serie,
);

$this->menu=array(
	array('label'=>'List Aparato', 'url'=>array('index')),
	array('label'=>'Create Aparato', 'url'=>array('create')),
	array('label'=>'Update Aparato', 'url'=>array('update', 'id'=>$model->no_serie)),
	array('label'=>'Delete Aparato', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->no_serie),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Aparato', 'url'=>array('admin')),
);
?>

<h1>View Aparato #<?php echo $model->no_serie; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'no_serie',
		'descripcion',
		'marca',
		'modelo',
		#'tipo',
		'ultima_calib',
		'prox_calib',
		'observaciones',
		'archivo',
		'rpe',
		'id_estatus',
	),
)); ?>
