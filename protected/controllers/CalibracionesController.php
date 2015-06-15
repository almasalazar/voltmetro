<?php

class CalibracionesController extends Controller
{

	public $layout='//layouts/column2';


	
	public function actionIndex()
	{

	$sql="SELECT a.no_serie, a.prox_calib, p.rpe, p.nombre, e.estatus, r.tipo, r.area FROM `aparato` a join persona p on a.rpe = p.rpe join area r on r.id_area= p.id_area join estatus e on e.id_estatus = a.id_estatus where prox_calib between (select now()) and (select now() +  INTERVAL 8 DAY)";
	$aparato=Aparato::model()->findAllBySql($sql);

		$this->render('index',array('aparato'=>$aparato));		
	}


	public function accessRules()
	{
		return array(

			array('deny',  // denegar a todos los usuarios.
				'users'=>array('*'),
			),
			array('allow',  //Se podran acceder a las acciones de index y a la vista
				'actions'=>array('index','view'),
				'users'=>array('9ERCB', '9L1AM'),
			),
						
		);
	}

	/**/
	public function actionEnviarcorreo(){
		
		//echo 'Para enviar correo';
		$email = new EnviarEmail;
						
	 	$subject = "Notificacion aparatos proximos a calibrar";
	 	$subject .= Yii::app()->name;

	 	$sql="SELECT a.no_serie, a.prox_calib, p.rpe, p.nombre, e.estatus, r.tipo, r.area FROM `aparato` a join persona p on a.rpe = p.rpe join area r on r.id_area= p.id_area join estatus e on e.id_estatus = a.id_estatus where prox_calib between (select now()) and (select now() +  INTERVAL 15 DAY)";
		$aparato=Aparato::model()->findAllBySql($sql);

		$text = $this->renderPartial('email',array('aparato'=>$aparato), true);	

	 	$message = $text;
	 	$message .= "<br /> <br />";

	 	// Lista de correos y nombre 
	 	$sql="SELECT p.nombre, p.email FROM `aparato` a join persona p on a.rpe = p.rpe  where prox_calib between (select now()) and (select now() +  INTERVAL 15 DAY) group by p.email";
		$listaCorreos=Aparato::model()->findAllBySql($sql);

	 	
	 	$email->Enviar_Email_Lista
	 	(
	 		//array(Yii::app()->params['adminEmail'], Yii::app()->name),
	 		//array($model->email, $model->rpe),
	 		//$to,
	 		$subject,
	 		$message
	 		);
	 


	 	//echo 'Se han notificado a todos los jefes';
	 	$this->render('feedback', true);	
	}

}
