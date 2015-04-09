<?php

/**
 * LoginForm class.
 * LoginForm is the data structure for keeping
 * user login form data. It is used by the 'login' action of 'SiteController'.
 */
class RecuperarPassword extends CFormModel
{
	public $rpe;
	public $email;
	public $captcha;

	
	public function rules()
	{
		return array(
			// username and password are required
			array('rpe, email, captcha', 'required'),

			array(
				'email',
				'email',
				'message'=> 'Formato de email incorrecto'
				),

			array(
				'captcha',
				'captcha',
				'message'=> 'Error el codigo captcha es incorrecto'
				),
		);
	}

	
}
