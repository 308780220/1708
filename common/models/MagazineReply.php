<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "magazine_reply".
 *
 * @property integer $id
 * @property integer $magazine_id
 * @property integer $user_id
 * @property string $title
 * @property string $email
 * @property string $content
 * @property string $ctime
 */
class MagazineReply extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'magazine_reply';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'email', 'content'], 'required'],
            [['user_id','magazine_id'], 'integer'],
            [['content'], 'string'],
            [['title', 'email'], 'string', 'max' => 50],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'magazine_id' => 'Magazine ID',
            'user_id' => 'User ID',
            'title' => 'Title',
            'email' => 'Email',
            'content' => 'Content',
            'ctime' => 'Ctime',
        ];
    }
}
