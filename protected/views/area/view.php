<?php
/* @var $this AreaController */
/* @var $model Area */

$this->breadcrumbs=array(
	'Areas'=>array('index'),
	$model->id_area,
);

$this->menu=array(
	array('label'=>'Listar Area', 'url'=>array('index')),
	array('label'=>'Crear Area', 'url'=>array('create')),
	array('label'=>'Actualizar Area', 'url'=>array('update', 'id'=>$model->id_area)),
	array('label'=>'Eliminar Area', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_area),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar Area', 'url'=>array('admin')),
);
?>

<h1>Ver Area #<?php echo $model->id_area; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_area',
		'area',
		'tipo',
	),
)); ?>
