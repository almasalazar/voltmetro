<?php
/* @var $this PersonaController */
/* @var $model Persona */

$this->breadcrumbs=array(
	'Personas'=>array('index'),
	$model->rpe,
);

$this->menu=array(
	array('label'=>'Listar Persona', 'url'=>array('index')),
	array('label'=>'Crear Persona', 'url'=>array('create')),
	array('label'=>'Actualizar Persona', 'url'=>array('update', 'id'=>$model->rpe)),
	array('label'=>'Eliminar Persona', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->rpe),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar Persona', 'url'=>array('admin')),
);
?>

<h1>Registro de la persona con RPE: <?php echo $model->rpe; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'rpe',
		'nombre',
		'email',
		'password',
		'es_jefe',
		'rpe_jefe',
		'idArea.area',
	),
)); ?>
