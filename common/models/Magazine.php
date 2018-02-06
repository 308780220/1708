<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "magazine".
 *
 * @property integer $id
 * @property string $title
 * @property string $content
 * @property string $ctime
 * @property string $author
 * @property integer $user_backend_id
 * @property integer $category_id
 */
class Magazine extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'magazine';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'ctime', 'author', 'user_backend_id'], 'required'],
            [['content'], 'string'],
            [['ctime'], 'safe'],
            [['user_backend_id', 'category_id'], 'integer'],
            [['title'], 'string', 'max' => 50],
            [['author'], 'string', 'max' => 20],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'content' => 'Content',
            'ctime' => 'Ctime',
            'author' => 'Author',
            'user_backend_id' => 'User Backend ID',
            'category_id' => 'Category ID',
        ];
    }
}
