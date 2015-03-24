<?php
/* @var $this PersonaController */
/* @var $model Persona */

$this->breadcrumbs=array(
	'Personas'=>array('index'),
	'Create',
);

/*$this->menu=array(
	array('label'=>'List Persona', 'url'=>array('index')),
	array('label'=>'Manage Persona', 'url'=>array('admin')),
);*/

?>


<div class="col-md-9" >
	<div class="panel panel-success">
			<div class="panel panel-heading">
				<h3 class="panel-title">Agregar Persona</h3>
			</div>
			<div class="panel-body">
		<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>	

		</div>
	</div>
</div>

