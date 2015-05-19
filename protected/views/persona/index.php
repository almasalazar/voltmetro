
<?php
/* @var $this PersonaController */
/* @var $dataProvider CActiveDataProvider */
/*
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
)); */?>

<?php if ($persona!==null) { ?>


<div class="table-responsive"> 

		<h3 class="panel-title" align="center">
		    		Lista de todas las personas a cargo
		  </h3>
<br>

<table class="table table-striped">	
	
	<tr>
		<th></th>
		<th>Rpe</th>
		<th>Nombre</th>
		<th>Aparato</th>
		<th>Area</th>
		<th>Tipo</th>
	</tr>
	<?php foreach ($persona as $data ) {?>
		
	
	<tr>
		<td><?php echo '<input type="checkbox" name="your-group" value="unit-in-group" />'?></td>
		<td><?php echo $data->rpe;?></td>
		<td><?php echo $data->nombre;?></td>
		<td><?php echo $data->no_serie;?></td>
		<td><?php echo $data->area;?></td>
		<td><?php echo $data->tipo;?></td>



	</tr>



	<?php } ?>

</table>

<?php } else {
echo "No hay aparatos pendientes en la base de datos";
	}  ?>


</div>

