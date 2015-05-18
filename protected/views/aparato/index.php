<?php
/* @var $this AparatoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Aparatos',
);

?>

<h1>Aparatos</h1>


<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
	'itemsCssClass'=>'table table-striped',
	'pager'=>array("htmlOptions"=>array("class"=>"pagination")),

));

 ?>
