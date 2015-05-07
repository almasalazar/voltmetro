<?php

class CalibracionesController extends Controller
{

	public $layout='//layouts/column2';


	
	public function actionIndex()
	{

	$sql="SELECT a.no_serie, a.prox_calib, p.rpe, p.nombre, e.estatus, r.tipo, r.area FROM `aparato` a join persona p on a.rpe = p.rpe join area r on r.id_area= p.id_area join estatus e on e.id_estatus = a.id_estatus where prox_calib between (select now()) and (select now() +  INTERVAL 15 DAY)";
	$aparato=Aparato::model()->findAllBySql($sql);

		$this->render('index',array('aparato'=>$aparato));		
	}


	public function accessRules()
	{
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','view'),
				'users'=>array('9ERCB', '9L1AM'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','update'),
				'users'=>array('9ERCB', '9L1AM'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete'),
				'users'=>array('9ERCB'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}
}
