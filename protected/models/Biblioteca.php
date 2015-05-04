<?php

/**
 * This is the model class for table "biblioteca".
 *
 * The followings are the available columns in table 'biblioteca':
 * @property integer $id_biblioteca
 * @property string $nombre
 */
class Biblioteca extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Biblioteca the static model class
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
		return 'biblioteca';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('id_biblioteca, nombre', 'required'),
			array('id_biblioteca', 'numerical', 'integerOnly'=>true),
			array('nombre', 'length', 'max'=>100),
			array('nombre', 'file','types'=>'pdf, docx', 'allowEmpty'=>true),
			array('id_biblioteca','unique', 'attributeName'=>'id_biblioteca','className'=>'Biblioteca','allowEmpty'=>false,'message'=> 'El identificador del archivo ya se encuentra registrado.'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id_biblioteca, nombre', 'safe', 'on'=>'search'),
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
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id_biblioteca' => 'Id Biblioteca',
			'nombre' => 'Nombre',
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

		$criteria->compare('id_biblioteca',$this->id_biblioteca);
		$criteria->compare('nombre',$this->nombre,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}