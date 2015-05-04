<?php
/* @var $this AparatoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Aparatos',
);

$this->menu=array(
	array('label'=>'Crear Aparato', 'url'=>array('create')),
	array('label'=>'Administrar Aparato', 'url'=>array('admin')),
);
?>

<h1>Aparatos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
	'pager'=>array("htmlOptions"=>array("class"=>"pagination")),

)); ?>
