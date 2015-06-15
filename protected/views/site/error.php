
	<?php
	/*
	$sql="SELECT p.rpe,p.nombre,a.no_serie,ar.area, ar.tipo from persona p join aparato a on p.rpe = a.rpe
				  join area ar on ar.id_area = p.id_area where rpe_jefe='".Yii::app()->user->getId()."'";
			$persona=Persona::model()->findAllBySql($sql);
			*/
	//		$this->redirect('http://voltmetro.esy.es/index.php?r=persona/index',array('persona'=>$persona));
					// Cambiar la direccion del index del servidor
					$this->redirect(dirname(__FILE__).'index.php?r=persona/index');
	?>

<!-- 

<?php
/* @var $this SiteController */
/* @var $error array */

$this->pageTitle=Yii::app()->name . ' - Error';
$this->breadcrumbs=array(
	'Error',
);
?>

<h2>Error <?php echo $code; ?></h2>

<div class="error">
<?php echo CHtml::encode($message); ?>
</div>

-->