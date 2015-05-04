<?php
/* @var $this BibliotecaController */
/* @var $model Biblioteca */

$this->breadcrumbs=array(
	'Bibliotecas'=>array('index'),
	$model->id_biblioteca=>array('view','id'=>$model->id_biblioteca),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar documentos', 'url'=>array('index')),
	array('label'=>'Subir documento', 'url'=>array('create')),
	array('label'=>'Ver documento', 'url'=>array('view', 'id'=>$model->id_biblioteca)),
	array('label'=>'Administrar Biblioteca', 'url'=>array('admin')),
);
?>

<h1>Update Biblioteca <?php echo $model->id_biblioteca; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>