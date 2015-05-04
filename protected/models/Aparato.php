<?php

/**
 * This is the model class for table "aparato".
 *
 * The followings are the available columns in table 'aparato':
 * @property string $no_serie
 * @property string $descripcion
 * @property string $marca
 * @property string $modelo
 * @property string $tipo
 * @property string $ultima_calib
 * @property string $prox_calib
 * @property string $observaciones
 * @property string $archivo
 * @property string $rpe
 * @property integer $id_estatus
 *
 * The followings are the available model relations:
 * @property Persona $rpe0
 * @property Estatus $idEstatus
 */
class Aparato extends CActiveRecord
{

	public $nombre;
	public $estatus;
	public $area;

	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Aparato the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'aparato';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('no_serie, descripcion, marca, modelo, tipo, rpe, id_estatus', 'required', 'message'=> 'El campo : {attribute} debes ingresarlo '),
			array('archivo', 'file','types'=>'jpg, gif, png', 'allowEmpty'=>true),
			array('no_serie','unique', 'attributeName'=>'no_serie','className'=>'Aparato','allowEmpty'=>false,'message'=> 'El No. Serie que usted ingreso ya fue asignado a otro aparato.'),
			array('id_estatus', 'numerical', 'integerOnly'=>true),
			array('no_serie', 'length', 'max'=>50),
			array('rpe', 'length', 'max'=>100),
			array('observaciones, archivo, ultima_calib, prox_calib','safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('no_serie, descripcion, marca, modelo, tipo, ultima_calib, prox_calib, observaciones, archivo, rpe, id_estatus', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'rpe0' => array(self::BELONGS_TO, 'Persona', 'rpe'),
			'idEstatus' => array(self::BELONGS_TO, 'Estatus', 'id_estatus'),
			
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'no_serie' => 'No Serie',
			'descripcion' => 'Descripcion',
			'marca' => 'Marca',
			'modelo' => 'Modelo',
			'tipo' => 'Tipo',
			'ultima_calib' => 'Ultima Calibracion',
			'prox_calib' => 'Proxima Calibracion',
			'observaciones' => 'Observaciones',
			'archivo' => 'Archivo',
			'rpe' => 'Rpe',
			'id_estatus' => 'Estatus',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('no_serie',$this->no_serie,true);
		$criteria->compare('descripcion',$this->descripcion,true);
		$criteria->compare('marca',$this->marca,true);
		$criteria->compare('modelo',$this->modelo,true);
		$criteria->compare('tipo',$this->tipo,true);
		$criteria->compare('ultima_calib',$this->ultima_calib,true);
		$criteria->compare('prox_calib',$this->prox_calib,true);
		$criteria->compare('observaciones',$this->observaciones,true);
		$criteria->compare('archivo',$this->archivo,true);
		$criteria->compare('rpe',$this->rpe,true);
		$criteria->compare('id_estatus',$this->id_estatus);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}