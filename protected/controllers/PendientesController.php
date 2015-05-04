<?php

class PendientesController extends Controller
{

	public $layout='//layouts/column2';


	
	public function actionIndex()
	{

	$sql="SELECT a.no_serie, a.prox_calib, a.marca, a.modelo, p.rpe, p.nombre, r.tipo, r.area FROM `aparato` a join persona p on a.rpe = p.rpe join area r on r.id_area= p.id_area where id_estatus = 7";
$aparato=Aparato::model()->findAllBySql($sql);


	#$aparato=Aparato::model()->findAll("id_estatus = 7");

		$this->render('index',array('aparato'=>$aparato));		
	}
}
