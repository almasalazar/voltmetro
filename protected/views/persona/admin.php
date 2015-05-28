<?php
/* @var $this PersonaController */
/* @var $model Persona */

$this->breadcrumbs=array(
	'Personas'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'Listar Persona', 'url'=>array('index')),
	array('label'=>'Crear Persona', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#persona-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Personas</h1>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'persona-grid',
	'itemsCssClass'=>'table table-striped',
	'pager'=>array("htmlOptions"=>array("class"=>"pagination")),
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'rpe',
		'nombre',
		'email',
		'password',
		'rpe_jefe',
		'idArea.area', 
		'idArea.tipo',
		/*
		'es_jefe',
		'id_area',
		*/
		array(
			'name'=>'id_area',
			'header'=>'Areas',
			'filter'=>CHtml::listData(Area::model()->findAll(),'id_area','tipo','area'),
		),
		array(
			'class'=>'CButtonColumn',
			'header'=>'Ver,Editar,Eliminar',
		),
		/*array(
			'class'=>'CLinkColumn',
			'header'=>'Email',
			'imageUrl'=>Yii::app()->baseUrl.'/img/email.png',
			#'labelExpression'=>'$data->email',
			'htmlOptions'=>array('style'=>'text-aling:center'),
			#'urlExpression'=>
			),
		*/
	),
)); ?>
