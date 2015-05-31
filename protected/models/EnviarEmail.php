<?php


 Yii::import('application.extensions.phpmailer.JPhpMailer');
class EnviarEmail {
	
	//public function Enviar_Email_Lista(array $to, $subject, $message)
	public function Enviar_Email_Lista($subject, $message)
	{


		$mail = new JPhpMailer;
		$mail->IsSMTP();
		$mail->Host = 'smtp.gmail.com';
		$mail->Port = 465;
		$mail->SMTPSecure = "ssl";
		$mail->SMTPAuth = true;
		$mail->Username = Yii::app()->params['adminEmail'];
		$mail->Password = 'voltmetro_web1';
		$mail->SetFrom( Yii::app()->params['adminEmail'], Yii::app()->name);
		$mail->Subject = $subject;
		$mail->AltBody = 'To view the message, please use an HTML compatible email viewer!';
		$mail->MsgHTML($message);
		//$mail->AddAddress($to, $user);
		// Lista de correos y nombre 
	 	$sql="SELECT p.nombre, p.email FROM `aparato` a join persona p on a.rpe = p.rpe  where prox_calib between (select now()) and (select now() +  INTERVAL 15 DAY) group by p.email";
		$listaCorreos=Aparato::model()->findAllBySql($sql);
		foreach($listaCorreos as $data)
		{
		   $mail->AddCC($data->email, $data->nombre);
		}
		/*
		foreach($to as $email => $name)
		{
		   $mail->AddCC($email, $name);
		}
		*/
		
		$mail->Send();
	}

	public function Enviar_Email($user, $to, $subject, $message)
	{


		$mail = new JPhpMailer;
		$mail->IsSMTP();
		$mail->Host = 'smtp.gmail.com';
		$mail->Port = 465;
		$mail->SMTPSecure = "ssl";
		$mail->SMTPAuth = true;
		$mail->Username = Yii::app()->params['adminEmail'];
		$mail->Password = 'voltmetro_web1';
		$mail->SetFrom( Yii::app()->params['adminEmail'], Yii::app()->name);
		$mail->Subject = 'Recuperar password';
		$mail->AltBody = 'To view the message, please use an HTML compatible email viewer!';
		$mail->MsgHTML($message);
		$mail->AddAddress($to, $user);
		$mail->Send();
	}

}