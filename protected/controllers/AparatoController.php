<?php

class AparatoController extends Controller
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
		$model=new Aparato;
		$path_picture = realpath( Yii::app( )->getBasePath( )."/../img/respaldos" )."/";//ruta final de la imagen
 
        if(isset($_POST['Aparato']))
        {
             
            $model->attributes=$_POST['Aparato'];
 
        ////////////////////////////////////////////////////////////////////
            $rnd = rand(0,9999);  // generate random number between 0-9999
            $uploadedFile=CUploadedFile::getInstance($model,'archivo'); 
            $fileName = "{$rnd}-{$uploadedFile}";  // random number + file name or puedes usar: $fileName=$uploadedFile->getName();
             
            if(!empty($uploadedFile))  // check if uploaded file is set or not
            {
                //$uploadedFile->saveAs(Yii::app()->basePath.'/../banner/'.$fileName);  // image will uplode to rootDirectory/banner/
                $uploadedFile->saveAs($path_picture.$fileName);
                $model->archivo= $fileName;
            }
        ////////////////////////////////////////////////////////////////////
  
            if($model->save())
            {
                 $this->redirect(array('view','id'=>$model->no_serie));
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
   		$model=new Aparato;
		$path_picture = realpath( Yii::app( )->getBasePath( )."/../img/respaldos" )."/";//ruta final de la imagen
 
    // Uncomment the following line if AJAX validation is needed
    // $this->performAjaxValidation($model);
 
 		if(isset($_POST['Aparato']))
        {            
            $model->attributes=$_POST['Aparato'];
             
        ////////////////////////////////////////////////////////////////////
        $rnd = rand(0,9999);  // generate random number between 0-9999
        $uploadedFile=CUploadedFile::getInstance($model,'archivo');
 
        if($model->save())
            {
                if(!empty($uploadedFile))  // checkeamos si el archivo subido esta seteado o no
                {
                    $uploadedFile->saveAs($path_picture.$fileName);
                	$model->archivo= $fileName;
                }
                $this->redirect(array('admin'));
            }
        ////////////////////////////////////////////////////////////////////
        if($model->save())
				 $this->redirect(array('admin'));
				//$this->redirect(array('view','id'=>$model->no_serie));
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
		/*
			$dataProvider=new CActiveDataProvider('Aparato');
			$this->render('index',array(
				'dataProvider'=>$dataProvider,
			));
		*/
		if(Yii::app()->user->checkAccess("invitado")){

			$sql="SELECT p.rpe,p.nombre,a.prox_calib,a.no_serie,e.estatus, ar.area, ar.tipo from aparato a join persona p on p.rpe = a.rpe
				  join area ar on ar.id_area = p.id_area join estatus e on e.id_estatus = a.id_estatus where rpe_jefe='".Yii::app()->user->getId()."'";

			$aparato=Aparato::model()->findAllBySql($sql);
			$this->render('index',array('aparato'=>$aparato));
		}
		else{
			$model=new Aparato('search');
			$model->unsetAttributes();  // clear any default values
			if(isset($_GET['Aparato']))
				$model->attributes=$_GET['Aparato'];

			$this->render('admin',array(
				'model'=>$model,
			));
		}

		/*  para hacerlo en excel

		Yii::app()->request->sendFile('infovoltme.xls',
			$this->render(index, array(
				'dataProvider'=>$dataProvider,
				)) 

		 */
	}

	/**
	 * Manages all models.
	 */
		public function actionAdmin()
	{
		$model=new Aparato('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Aparato']))
			$model->attributes=$_GET['Aparato'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}
	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Aparato the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Aparato::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'La pagina que solicito no existe.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Aparato $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='aparato-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
