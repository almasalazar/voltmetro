<?php
/* @var $this PersonaController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Personas',
);

?>

<h1>Personas</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
	'pager'=>array("htmlOptions"=>array("class"=>"pagination")),
	'sortableAttributes'=>array(),
)); ?>

