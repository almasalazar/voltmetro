<?php
/* @var $this AparatoController */
/* @var $model Aparato */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'aparato-form',
	'enableAjaxValidation'=>false,
	'htmlOptions' => array('enctype' => 'multipart/form-data'),//para subir los respaldos
	'enableClientValidation'=>true,
	'clientOptions'=>array(
		'validateOnSubmit'=>true,
		)

)); ?>

	<p class="note">Los Campos con <span class="required">*</span> son requeridos</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="form-group">
		<?php echo $form->labelEx($model,'Numero de Serie *'); ?>
		<?php echo $form->textField($model,'no_serie',array('size'=>50,'maxlength'=>50,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'no_serie'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'Descripcion *'); ?>
		<?php echo $form->textArea($model,'descripcion',array("placeholder"=>"Voltmetro o Patron",'rows'=>6, 'cols'=>50,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'descripcion'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'Marca *'); ?>
		<?php echo $form->textArea($model,'marca',array('rows'=>6, 'cols'=>50,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'marca'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'modelo *'); ?>
		<?php echo $form->textArea($model,'modelo',array('rows'=>6, 'cols'=>50,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'modelo'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'tipo *'); ?>
		<?php echo $form->textArea($model,'tipo',array("placeholder"=>"Digital o Analogico", 'rows'=>6, 'cols'=>50,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'tipo'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'ultima Calibracion *' ); ?>
		<?php echo $this->widget('zii.widgets.jui.CJuiDatePicker',
				array('model'=>$model, 
					'attribute'=>'ultima_calib',
					'language'=>'es', 
					'options'=>array(
						'showAnim'=>'fold',
						'dateFormat'=>'yy-mm-dd',
						'showButtonPanel' => true,
						'changeYear'=> true,
						),

					'htmlOptions'=>array('class'=>'form-control')),
				true);
		?>
		<?php echo $form->error($model,'ultima_calib'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'proxima Calibracion *'); ?>
		<?php echo $this->widget('zii.widgets.jui.CJuiDatePicker',
				array('model'=>$model, 
					'attribute'=>'prox_calib',
					'language'=>'es', 
					'options'=>array(
						'showAnim'=>'fold',
						'dateFormat'=>'yy-mm-dd',
						'showButtonPanel' => true,
						'changeYear'=> true,
						),
					'htmlOptions'=>array('class'=>'form-control')),
				true);
		?>
		<?php echo $form->error($model,'prox_calib'); ?>
		
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'observaciones'); ?>
		<?php echo $form->textArea($model,'observaciones',array('rows'=>6, 'cols'=>50,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'observaciones'); ?>
	</div>

    <?php 
        echo $form->labelEx($model, 'archivo');
        echo $form->fileField($model, 'archivo');
        echo $form->error($model, 'archivo');
    ?>
 
    <?php if(!$model->isNewRecord){ //mostramos la imagen?>
    <div class="container">
            
            <?php echo CHtml::image('../../img/respaldos'.$model->archivo,"archivo",array("width"=>200, 'title'=>$model->archivo)); ?>
    </div>
    <?php } ?>

	<div class="form-group">
		<?php echo $form->labelEx($model,'rpe *'); ?>
		<?php echo $form->textField($model,'rpe',array("placeholder"=>"Rpe de la persona responsable del Aparato",'size'=>60,'maxlength'=>100,'class'=>'form-control')); ?>
		<?php echo $form->error($model,'rpe'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'Estatus del aparato *'); ?>
		<?php echo $form->dropDownList($model,'id_estatus',CHtml::listData(Estatus::model()->findAll(),'id_estatus','estatus'),
			array('empty'=>'Selecciona un estatus...','class'=>'form-control')); ?>
		<?php echo $form->error($model,'id_estatus'); ?>
	</div>

	<div class="buttons" align="center">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Guardar' : 'Save',array("class"=>"btn btn-success btn-large" )); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->