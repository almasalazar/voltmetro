<?php
/* @var $this BibliotecaController */
/* @var $model Biblioteca */

$this->breadcrumbs=array(
	'Bibliotecas'=>array('index'),
	$model->id_biblioteca,
);

$this->menu=array(
	array('label'=>'Listar documentos', 'url'=>array('index')),
	array('label'=>'Subir documentos', 'url'=>array('create')),
	array('label'=>'Actualizar Biblioteca', 'url'=>array('update', 'id'=>$model->id_biblioteca)),
	array('label'=>'Eliminar Documento', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_biblioteca),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Administrar Biblioteca', 'url'=>array('admin')),
);
?>

<h1>View Biblioteca #<?php echo $model->id_biblioteca; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_biblioteca',
		'nombre',
	),
)); ?>
