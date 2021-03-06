<?php
/* @var $this AparatoController */
/* @var $model Aparato */

$this->breadcrumbs=array(
	'Aparatos'=>array('index'),
	$model->no_serie=>array('view','id'=>$model->no_serie),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar Aparatos', 'url'=>array('index')),
	array('label'=>'Crear Aparato', 'url'=>array('create')),
	array('label'=>'Ver Aparato', 'url'=>array('view', 'id'=>$model->no_serie)),
	array('label'=>'Administrar Aparato', 'url'=>array('admin')),
);
?>

<h1>Actualizar Aparatos <?php echo $model->no_serie; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>