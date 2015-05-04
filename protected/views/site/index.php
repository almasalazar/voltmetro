 <!DOCTYPE html>
<html lang="en">
  <head>
     <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="img/CFE.ico">

        <title>Zona Celaya I.S.C</title>
    
    <!-- Bootstrap -->
    <link href="<?php echo Yii::app()->request->baseUrl; ?>/css/bootstrap.min.css" rel="stylesheet">
      <!-- Custom styles for this template -->
    <link href="<?php echo Yii::app()->request->baseUrl; ?>/css/offcanvas.css" rel="stylesheet">
    
  <title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>

<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div id="navbar" class="navbar-collapse collapse">

          <form class="navbar-form navbar-right">
                  
              <?php $form=$this->beginWidget('CActiveForm', array(
                    'id'=>'login-form',
                    'action'=>$this->createUrl("site/login"),
                    'enableClientValidation'=>true,
                    'clientOptions'=>array(
                      'validateOnSubmit'=>true,
                    ),
              )); ?>

             <div class="form-group">
                  <?php echo $form->textField($model,'username', array( "placeholder"=>"Rpe",'class'=>'form-control')); ?>
                  <?php echo $form->error($model,'username'); ?>
            </div>
            <div class="form-group">
                <?php echo $form->passwordField($model,'password', array( "placeholder"=>"Contraseña",'class'=>'form-control')); ?>
                <?php echo $form->error($model,'password'); ?>
            </div>
                <?php echo CHtml::submitButton('Login',array("class"=>"btn btn-success" )); ?>
        <?php $this->endWidget(); ?>
        
          </form>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>

    <?php /*
  $this->widget('zii.widgets.CMenu',array(
    'items'=>array(
      array('label'=>'Home', 'url'=>array('/site/index')),
      array('label'=>'About', 'url'=>array('/site/page', 'view'=>'about')),
      array('label'=>'Contact', 'url'=>array('/site/contact')),
      array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
      array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
    ),
  ));*/
   ?>
  <?php if(isset($this->breadcrumbs)):?>
    <?php $this->widget('zii.widgets.CBreadcrumbs', array(
      'links'=>$this->breadcrumbs,
    )); ?><!-- breadcrumbs -->
  <?php endif?>
  
<body>
 

    <div class="container">
      <div class="row row-offcanvas row-offcanvas-right">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-success btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
          
          <div class="jumbotron">
      <div class="container" >
        <h1 align="center">Welcom to Metrology Lab!</h1>
        <br><br><br>
        <p>Sistema desarrollado por la oficina de aseguramiento de la mediciòn para el monitoreo de los voltmetros y patrones a cargo de las diferentes àreas que abarca la Zona Celaya </p>
        <div class="buttons" class="btn btn-success" align="center"> <a href="?r=persona/create">Login</a></div>
      </div>
       </div>
          <div class="row">

          </div><!--/row-->

    </div><!--/.container-->
    <footer>
        <p align="center">&copy; CFE Zona Distribuciòn Celaya</p>
      </footer>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
    <script src="offcanvas.js"></script>
 
  </body>
</html>

