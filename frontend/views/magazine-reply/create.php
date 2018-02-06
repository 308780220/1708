<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\MagazineReply */

$this->title = 'Create Magazine Reply';
$this->params['breadcrumbs'][] = ['label' => 'Magazine Replies', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="magazine-reply-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
