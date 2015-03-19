<?php
/* @var $this AparatoController */
/* @var $model Aparato */

$this->breadcrumbs=array(
	'Aparatos'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Aparato', 'url'=>array('index')),
	array('label'=>'Create Aparato', 'url'=>array('create')),
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
	<div class="col-md-7">

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'aparato-grid',
	'dataProvider'=>$modelGrid->search(),
	'filter'=>$modelGrid,
	'columns'=>array(
		'no_serie',
		'descripcion',
		'marca',
		'modelo',
		'ultima_calib',
		'prox_calib',
		'rpe',
		/*
		'tipo',
		'observaciones',
		'archivo',
		'id_estatus',
		*/
		array(
			'class'=>'CButtonColumn',
			),
		),
)); ?>
	</div>

<div class="col-md-5">
	<div class="panel panel-success">
			<div class="panel panel-heading">
				<h3 class="panel-title">Nuevo Voltmetro</h3>
			</div>
			<div class="panel-body">
				<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
			</div>
		</div>
	</div>
</div>
