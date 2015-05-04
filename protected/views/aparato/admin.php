<?php
/* @var $this AparatoController */
/* @var $model Aparato */

$this->breadcrumbs=array(
	'Aparatos'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'Listar Aparatos', 'url'=>array('index')),
	array('label'=>'Crear Aparato', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#aparato-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Aparatos</h1>

<div class="row">

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'aparato-grid',
	'itemsCssClass'=>'table table-striped',
	'pager'=>array("htmlOptions"=>array("class"=>"pagination")),
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'no_serie',
		'descripcion',
		'marca',
		'modelo',
		'ultima_calib',
		'prox_calib',
		'rpe',
		'idEstatus.estatus',
		/*
		'tipo',
		'observaciones',
		'archivo',
		*/
		array(
			'class'=>'CButtonColumn',
			'header'=>'Ver,Editar,Eliminar',
			),

		array(
			'class'=>'CLinkColumn',
			'header'=>'Email',
			'imageUrl'=>Yii::app()->baseUrl.'/img/email.png',
			#'labelExpression'=>'$data->email',
			'htmlOptions'=>array('style'=>'text-aling:center'),
			#'urlExpression'=>
			),
		),

)); ?>


</div>
