<?php
/* @var $this AparatoController */
/* @var $model Aparato */

$this->breadcrumbs=array(
	'Aparatos'=>array('index'),
	'Manage',
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
		'rpe0.nombre',
		'rpe0.idArea.area', 
		'rpe0.idArea.tipo',
		'idEstatus.estatus',

		array(
			'name'=>'id_estatus',
			'header'=>'Listar',
			'filter'=>CHtml::listData(Estatus::model()->findAll(),'id_estatus','estatus'),
		),

		array(
			'class'=>'CButtonColumn',
			'header'=>'Ver,Editar,Eliminar',
			),

		),

)); ?>


</div>
