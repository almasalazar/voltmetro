<?php
/* @var $this BibliotecaController */
/* @var $model Biblioteca */

$this->breadcrumbs=array(
	'Bibliotecas'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar Biblioteca', 'url'=>array('index')),
	array('label'=>'Administrar Biblioteca', 'url'=>array('admin')),
);
?>

<h1>Subir documentos a la Biblioteca</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>