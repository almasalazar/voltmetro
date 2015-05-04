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
    <link href="<?php echo Yii::app()->request->baseUrl; ?>/css/dashboard.css" rel="stylesheet">
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>	
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
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">VoltmetroWeb Zona Celaya</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
          <li><a href="?r=configuraciones/admin">Configuraciones</a></li>
            <?php if(Yii::app()->user->isGuest): ?>
            <li class="active"><a href="?r=site/login">Login</a></li>
           <?php else: ?>
            <li><a href="?r=site/logout">Logout</a></li>
          <?php endif;?>
              
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Buscar por No. de Serie">
          </form>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
      <div class="col-sm-3 col-md-2 sidebar">
                    <ul class="nav nav-sidebar">   
                      <li class="active"><a href="?r=site/index"><span class="glyphicon glyphicon-home"></span>   Inicio</a></li>
                      <li><a href="?r=persona/admin"><span class="glyphicon glyphicon-user"></span>   Personas </a></li>
                      <li><a href="?r=aparato/admin"><span class="glyphicon glyphicon-phone"></span>   Aparatos</a></li>
                      <li><a href="?r=area/admin"><span class="glyphicon glyphicon-list-alt"></span>   Areas</a></li>
                      <li><a href="?r=calibraciones/index"><span class="glyphicon glyphicon-time"></span>  Proximos a Calibrar</a></li>
                      <li><a href="?r=pendientes/index"><span class="glyphicon glyphicon-search"></span>  Pendientes a Calibrar</a></li>
                      <li><a href="?r=biblioteca/index"><span class="glyphicon glyphicon-book"></span>   Biblioteca Virtual</a></li>
                      <li><a href="?r=biblioteca/create"><span class="glyphicon glyphicon-upload"></span>   Subir Documento</a></li>
                      </ul>         
                  </div>
       <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                    <div class="row placeholders"> 

                        <div class="col-xs-6 col-sm-3 placeholder">
                            <a href="?r=persona/create">
                              <img src="img/img1.jpg" class="img-responsive" alt="Generic placeholder thumbnail">
                              <h4>Agregar personal</h4>
                              <span class="text-muted">Registrar un nuevo usuario a la base de datos</span>
                            </a>
                        </div>
                        
                        <div class="col-xs-6 col-sm-3 placeholder">
                        <a href="">
                            <img src="img/img2.jpg" class="img-responsive" alt="Generic placeholder thumbnail">
                            <h4>Enviar aviso</h4>
                            <span class="text-muted">Enviar a los seleccionados</span>
                          </a>
                        </div>

                        <div class="col-xs-6 col-sm-3 placeholder">
                        <a href="?r=persona/admin">
                            <img  src="img/img4.jpg" class="img-responsive" alt="Generic placeholder thumbnail">                       
                            <h4>Actualizar Registros</h4>
                            <span class="text-muted">Modificaciòn de datos personales</span>
                        </a>
                        </div>

                        <div class="col-xs-6 col-sm-3 placeholder">
                        <a href="?r=aparato/create">
                           <img  src="img/img9.jpg" class="img-responsive" alt="Generic placeholder thumbnail">
                            <h4>Registrar Aparatos</h4>
                            <span class="text-muted">Agregar un nuevo aparato a la base de datos</span>
                            </a>
                        </div>

                    </div>
                    <?php echo $content; ?>
        </div>
      </div>
    </div>
    
  </body>
</html>