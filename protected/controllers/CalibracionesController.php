<?php

class CalibracionesController extends Controller
{

	public $layout='//layouts/column2';


	
	public function actionIndex()
	{
	if(Yii::app()->user->getId()!=null){
				if(Yii::app()->user->checkAccess("invitado")){
					$this->redirect('index.php?r=persona/index');
				}else{
					$sql="SELECT a.no_serie, a.prox_calib, p.rpe, p.nombre, e.estatus, r.tipo, r.area FROM `aparato` a join persona p on a.rpe = p.rpe join area r on r.id_area= p.id_area join estatus e on e.id_estatus = a.id_estatus where prox_calib between (select now()) and (select now() +  INTERVAL 15 DAY)";
					$aparato=Aparato::model()->findAllBySql($sql);
					$this->render('index',array('aparato'=>$aparato));
				}	
			}else{
				$this->redirect('index.php?r=site/login');
			}
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

	 	echo 'Se han notificado a todos los jefes';
	}

}
