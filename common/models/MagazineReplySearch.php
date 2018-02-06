<?php

namespace common\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\MagazineReply;

/**
 * MagazineReplySearch represents the model behind the search form about `common\models\MagazineReply`.
 */
class MagazineReplySearch extends MagazineReply
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'magazine_id', 'user_id'], 'integer'],
            [['title', 'email', 'content', 'ctime'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = MagazineReply::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => [
                'pageSize' => 10,
            ],
            'sort' => [
                'defaultOrder' => ['id' => SORT_DESC],
            ],
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'magazine_id' => $this->magazine_id,
        ]);
        $query->andFilterWhere(['like', 'title', $this->title]);


        return $dataProvider;
    }
}
