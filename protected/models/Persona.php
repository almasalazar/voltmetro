<?php

/**
 * This is the model class for table "persona".
 *
 * The followings are the available columns in table 'persona':
 * @property string $rpe
 * @property string $nombre
 * @property string $email
 * @property string $password
 * @property integer $es_jefe
 * @property string $rpe_jefe
 * @property integer $id_area
 *
 * The followings are the available model relations:
 * @property Aparato[] $aparatos
 * @property Area $idArea
 */
class Persona extends CActiveRecord
{
	public $area;
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Persona the static model class
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
		return 'persona';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('rpe, nombre, email, es_jefe, rpe_jefe, id_area', 'required', 'message'=> 'El campo : {attribute} debes ingresarlo '),
			array('es_jefe, id_area', 'numerical', 'integerOnly'=>true),
			array('rpe','unique', 'attributeName'=>'rpe','className'=>'Persona','allowEmpty'=>false,'message'=> 'El rpe ya se encuentra en la base de datos.'),
			array('rpe, email, password, rpe_jefe', 'length', 'max'=>100),
			array('nombre', 'length', 'max'=>150),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('rpe, nombre, email, password, es_jefe, rpe_jefe, id_area', 'safe', 'on'=>'search'),
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
			'aparatos' => array(self::HAS_MANY, 'Aparato', 'rpe'),
			'idArea' => array(self::BELONGS_TO, 'Area', 'id_area'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'rpe' => 'Rpe',
			'nombre' => 'Nombre',
			'email' => 'email',
			'password' => 'Password',
			'es_jefe' => 'Es Jefe',
			'rpe_jefe' => 'Rpe Jefe',
			'id_area' => 'Area',
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

		$criteria->compare('rpe',$this->rpe,true);
		$criteria->compare('nombre',$this->nombre,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('password',$this->password,true);
		$criteria->compare('es_jefe',$this->es_jefe);
		$criteria->compare('rpe_jefe',$this->rpe_jefe,true);
		$criteria->compare('id_area',$this->id_area);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}