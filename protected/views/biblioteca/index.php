<?php
/* @var $this BibliotecaController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Bibliotecas',
);

$this->menu=array(
	array('label'=>'Subir documentos', 'url'=>array('create')),
	array('label'=>'Administrar documentos', 'url'=>array('admin')),
);
?>

<h1>Bibliotecas</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
	 'sortableAttributes'=>array(
	    ),
)); ?>



// investigar programacion para mostrar documentos y poder descargar

 <?php
/*
	$this->widget('zii.widgets.CListView', array(
    	'dataProvider'=>$dataProvider,
    	'itemView'=>'_biblioteca',
    	'sortableAttributes'=>array(
    	),
	));

	$this->widget('zii.widgets.CListView', array(
    	'dataProvider'=>$data,
    	'itemView'=>'_nombre',
    	'sortableAttributes'=>array(
    	),
	));
*/
	?>
