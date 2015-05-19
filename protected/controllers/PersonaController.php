<?php

class PersonaController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';


	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	
	public function accessRules()
	{
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','view'),
				//'users'=>array('@'),
				'roles'=>array('admin','editor','invitado')
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','update'),
				//'users'=>array('9ERCB', '9L1AM'),
				'roles'=>array('admin', 'editor'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete'),
				//'users'=>array('9ERCB'),
				'roles'=>array('admin', 'editor'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}
	

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new Persona;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Persona']))
		{
			$model->attributes=$_POST['Persona'];
			if($model->save()){
				Yii::app()->authManager->assign("invitado", $model->rpe);
				$this->redirect(array('view','id'=>$model->rpe));
			}
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Persona']))
		{
			$model->attributes=$_POST['Persona'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->rpe));
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		$this->loadModel($id)->delete();

		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		//Yii::app()->authManager->createRole("admin");
		//Yii::app()->authManager->createRole("editor");
		//Yii::app()->authManager->createRole("invitado");
		
		
		/*
		Yii::app()->authManager->assign("admin", '9ERCB');
		Yii::app()->authManager->assign("admin", '10030754');
		Yii::app()->authManager->assign("editor", '9L1AM');
		Yii::app()->authManager->assign("invitado", '9AEYJ');
		Yii::app()->authManager->assign("invitado", '9AF47');
		Yii::app()->authManager->assign("invitado", '9EBUP');
		Yii::app()->authManager->assign("invitado", '9EBYG');
		Yii::app()->authManager->assign("invitado", '9EC1D');
		Yii::app()->authManager->assign("invitado", '9EC2C');
		Yii::app()->authManager->assign("invitado", '9EC8M');
		Yii::app()->authManager->assign("invitado", '9EP54');
		Yii::app()->authManager->assign("invitado", '9EP64');
		Yii::app()->authManager->assign("invitado", '9ER3V');
		Yii::app()->authManager->assign("invitado", '9ERDP');
		Yii::app()->authManager->assign("invitado", '9L1A8');
		Yii::app()->authManager->assign("invitado", '9L1D5');
		Yii::app()->authManager->assign("invitado", '9L1F5');
		Yii::app()->authManager->assign("invitado", '9L1JA');
		Yii::app()->authManager->assign("invitado", '9L1JR');
		Yii::app()->authManager->assign("invitado", '9L1L7');
		Yii::app()->authManager->assign("invitado", '9L1NE');
		Yii::app()->authManager->assign("invitado", '9L1NN');
		Yii::app()->authManager->assign("invitado", '9M35N');
		Yii::app()->authManager->assign("invitado", '9M3AW');
		Yii::app()->authManager->assign("invitado", '9M80N');
		Yii::app()->authManager->assign("invitado", '9M8JD');
		Yii::app()->authManager->assign("invitado", 'K228J');
		Yii::app()->authManager->assign("invitado", 'K345J');
		
		if(Yii::app()->user->checkAccess("admin")){
			$dataProvider=new CActiveDataProvider('Persona');
			$this->render('index',array(
				'dataProvider'=>$dataProvider,
			));
		}
		else{
			echo "no tiene permisos";
		}
		*/
		
		//echo "hola";
		if(Yii::app()->user->checkAccess("invitado")){
			/*$dataProvider=new CActiveDataProvider('Persona');
			$this->render('index',array(
				'dataProvider'=>$dataProvider,
			));
			*/
			
			//echo Yii::app()->user->id;
			//$sql="SELECT rpe,nombre,email from persona where rpe_jefe='9L1A8'";
			$sql="SELECT p.rpe,p.nombre,a.no_serie,ar.area, ar.tipo from persona p join aparato a on p.rpe = a.rpe
				  join area ar on ar.id_area = p.id_area where rpe_jefe='".Yii::app()->user->getId()."'";
			$persona=Persona::model()->findAllBySql($sql);
			$this->render('index',array('persona'=>$persona));		

		}
		else{
			$model=new Persona('search');
			$model->unsetAttributes();  // clear any default values
			if(isset($_GET['Persona']))
				$model->attributes=$_GET['Persona'];

			$this->render('admin',array(
				'model'=>$model,
			));
		}
		/*
			$dataProvider=new CActiveDataProvider('Persona');
			$this->render('index',array(
				'dataProvider'=>$dataProvider,
			));
			*/
			
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Persona('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Persona']))
			$model->attributes=$_GET['Persona'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Persona the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Persona::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Persona $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='persona-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
