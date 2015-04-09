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

	
	public function rules()
	{
		
	}

	
}
