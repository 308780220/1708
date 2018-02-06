<?php

namespace frontend\controllers;

use Yii;
use common\models\Magazine;
use common\models\MagazineSearch;
use common\models\MagazineReply;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * MagazineController implements the CRUD actions for Magazine model.
 */
class MagazineController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Magazine models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new MagazineSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Magazine model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {

		//$searchModel = new MagazineReplySearch();
       // $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
		$Replymodel = new MagazineReply();
        return $this->render('view', [
            'model' => $this->findModel($id),
			'modelReply' => $Replymodel,
			//'replyDataProvider' => $dataProvider,
        ]);
    }


    /**
     * Finds the Magazine model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Magazine the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Magazine::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
