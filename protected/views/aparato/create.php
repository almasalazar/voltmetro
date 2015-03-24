<?php
/* @var $this AparatoController */
/* @var $model Aparato */

$this->breadcrumbs=array(
	'Aparatos'=>array('index'),
	'Create',
);

/*$this->menu=array(
	array('label'=>'List Aparato', 'url'=>array('index')),
	array('label'=>'Manage Aparato', 'url'=>array('admin')),
);*/
?>

<div class="col-md-9" >
	<div class="panel panel-success">
			<div class="panel panel-heading">
				<h3 class="panel-title">Agregar Aparato</h3>
			</div>
			<div class="panel-body">
		<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>	

		</div>
	</div>
</div>
