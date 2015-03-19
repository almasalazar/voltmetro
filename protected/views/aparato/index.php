<?php
/* @var $this AparatoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Aparatos',
);

$this->menu=array(
	array('label'=>'Create Aparato', 'url'=>array('create')),
	array('label'=>'Manage Aparato', 'url'=>array('admin')),
);
?>

<h1>Aparatos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
