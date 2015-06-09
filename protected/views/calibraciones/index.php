<?php if ($aparato!==null) { ?>


<div class="table-responsive"> 

		<h3 class="panel-title" align="center">
		    		Lista de todos los aparatos proximos a calibrar en el periodo de 15 dias a partir de la fecha actual.
		  </h3>
<br>

<table class="table table-striped">	
	
	<tr>
		<th>No. serie</th>
		<th>Proxima Calibracion</th>
		<th>Rpe</th>
		<th>Responsable</th>
		<th>Estatus</th>
		<th>Area</th>
		<th>Tipo</th>
	</tr>
	<?php foreach ($aparato as $data ) {?>
		
	
	<tr>
		<td><?php echo $data->no_serie;?></td>
		<td><?php echo $data->prox_calib;?></td>
		<td><?php echo $data->rpe;?></td>
		<td><?php echo $data->nombre;?></td>
		<td><?php echo $data->estatus;?></td>
		<td><?php echo $data->area;?></td>
		<td><?php echo $data->tipo;?></td>

	</tr>



	<?php } ?>

</table>

<a href="?r=calibraciones/enviarcorreo" class="btn btn-success btn-lg" role="button">Enviar correo</a>


<?php } else {
echo "No hay aparatos pendientes en la base de datos";
	}  ?>


</div>