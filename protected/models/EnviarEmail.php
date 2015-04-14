<?php


 Yii::import('application.extensions.phpmailer.JPhpMailer');
class EnviarEmail {
	
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