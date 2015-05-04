<?php
/* @var $this BibliotecaController */
/* @var $model Biblioteca */

$this->breadcrumbs=array(
	'Bibliotecas'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Biblioteca', 'url'=>array('index')),
	array('label'=>'Create Biblioteca', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#biblioteca-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Administrar Biblioteca</h1>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'biblioteca-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id_biblioteca',
		'nombre',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
