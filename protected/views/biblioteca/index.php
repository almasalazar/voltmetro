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


<!-- Start Descargables Section -->
<div id="descargables">
<div class=" section pricing-section">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <!-- Start Big Heading -->
        <div class="big-title text-center">
          <h1><strong>Formatos</strong> Descargables</h1>
        </div>
        <!-- End Big Heading -->

        <!-- Text -->
	 <?php $this->widget('zii.widgets.CListView', array(
					'dataProvider'=>$dataProvider,
					'itemView'=>'_view',
					 'sortableAttributes'=>array(
					    ),
				)); ?>


	 </div>

</div>
</div>
</div>
</div>
</center>
<!-- End Descargables Section -->





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
