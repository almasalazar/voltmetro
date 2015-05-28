<?php

/**
 * LoginForm class.
 * LoginForm is the data structure for keeping
 * user login form data. It is used by the 'login' action of 'SiteController'.
 */
class Calibraciones extends CFormModel
{
	public $rpe;
	public $email;
	public $nombre;
	public $no_serie;
	public $rpe_jefe;
	public $ultima_calib;
	public $prox_calib;

	
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

	
}
