<?php
/* @var $this AreaController */
/* @var $model Area */

$this->breadcrumbs=array(
	'Areas'=>array('index'),
	$model->id_area=>array('view','id'=>$model->id_area),
	'Update',
);

$this->menu=array(
	array('label'=>'List Area', 'url'=>array('index')),
	array('label'=>'Create Area', 'url'=>array('create')),
	array('label'=>'View Area', 'url'=>array('view', 'id'=>$model->id_area)),
	array('label'=>'Manage Area', 'url'=>array('admin')),
);
?>

<h1>Actualizar Area <?php echo $model->id_area; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>