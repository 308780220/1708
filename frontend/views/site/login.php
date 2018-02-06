<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \common\models\LoginForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\helpers\Url;

$this->title = 'Login';
?>
<!--login start here-->
<div class="login">
	<div class="container">
		<div class="login-main">
			<div class="login-top">
				<h3><?= Html::encode($this->title) ?></h3>
				<img src="<?= Url::to('public/images/lock.png');?>" alt=""/>
			</div>
			<div class="col-lg-10">
			<?php $form = ActiveForm::begin(['id' => 'login-form']); ?>
				<?= $form->field($model, 'username')->textInput(['autofocus' => true]) ?>
				<?= $form->field($model, 'password')->passwordInput() ?>
				<?= $form->field($model, 'rememberMe')->checkbox() ?>
				<?= Html::submitButton('Login', ['class' => 'btn btn-primary', 'name' => 'login-button']) ?>
            <?php ActiveForm::end(); ?>
			</div>
		  <div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--login end here-->