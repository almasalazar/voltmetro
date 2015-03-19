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
                  <?php echo $form->textField($model,'username', array("class"=>"input-block-level", "placeholder"=>"Rpe",'class'=>'form-control')); ?>
                  <?php echo $form->error($model,'username'); ?>
            </div>
            <div class="form-group">
                <?php echo $form->passwordField($model,'password', array("class"=>"input-block-level", "placeholder"=>"Contraseña",'class'=>'form-control')); ?>
                <?php echo $form->error($model,'password'); ?>
            </div>
                <?php echo CHtml::submitButton('Login',array("class"=>"btn btn-success" )); ?>
        <?php $this->endWidget(); ?>
        
          </form>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>