<?php

// This is the database connection configuration.
return array(
	//'connectionString' => 'sqlite:'.dirname(__FILE__).'/../data/testdrive.db',
	// uncomment the following lines to use a MySQL database
	
	'connectionString' => 'mysql:host=localhost;dbname=voltmetro',
	'emulatePrepare' => true,
	'username' => 'root',
	'password' => '',
	'charset' => 'utf8',

	/*'connectionString' => 'mysql:host=10.12.71.220;dbname=voltmetro',
	'emulatePrepare' => true,
	'username' => 'uservolmetro',
	'password' => 'passvolmetro',
	'charset' => 'utf8',*/
	
);