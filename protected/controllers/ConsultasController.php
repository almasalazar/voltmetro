<?php

class ConsultasController extends Controller
{

	public $layout='//layouts/column2';


	
	public function actionIndex()
	{

	#$aparato=Aparato::model()->findAll("id_estatus = 7");

	$sql="SELECT a.no_serie, a.ultima_calib, p.rpe, p.nombre, e.estatus FROM `aparato` a join persona p on a.rpe = p.rpe join estatus e on e.id_estatus = a.id_estatus where prox_calib between (select now()) and (select now() +  INTERVAL 15 DAY)";
$aparato=Aparato::model()->findAllBySql($sql);



		$this->render('index',array('aparato'=>$aparato));		
	}
}
