<?php if ($aparato!==null) { ?>

<div class="table-responsive"> 
	<h3 class="panel-title" align="center">
			   Lista de todos los aparatos que no se enviaron y estan pendientes a calibrar.
			  </h3>
	<br>

<table class="table table-striped">	

	<tr>
		<th>No. serie</th>
		<th>Proxima Calibracion</th>
		<th>Marca</th>
		<th>Modelo</th>
		<th>Rpe</th>
		<th>Responsable</th>
		<th>Area</th>
		<th>Tipo</th>
	</tr>
	<?php foreach ($aparato as $data ) {?>
	
	<tr>
		<td><?php echo $data->no_serie;?></td>
		<td><?php echo $data->prox_calib;?></td>
		<td><?php echo $data->marca;?></td>
		<td><?php echo $data->modelo;?></td>
		<td><?php echo $data->rpe;?></td>
		<td><?php echo $data->nombre;?></td>
		<td><?php echo $data->area;?></td>
		<td><?php echo $data->tipo;?></td>

		
	</tr>

	<?php } ?>

</table>

<?php } else {
echo "No hay aparatos pendientes en la base de datos";
	}  ?>

</div>


