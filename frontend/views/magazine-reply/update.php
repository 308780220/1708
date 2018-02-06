<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\MagazineReply */

$this->title = 'Update Magazine Reply: ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Magazine Replies', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="magazine-reply-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
