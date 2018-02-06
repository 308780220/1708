<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\SignupForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title = 'Signup';
?>
<div class="signup">
	<div class="container">
		<div class="signup-main">
			<div class="sign-top">
					<h3><?= Html::encode($this->title) ?></h3>
					<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form</p>
			</div>
			<div class="register-top">
				<h3>PERSONAL INFORMATION</h3>
				<?php $form = ActiveForm::begin(['id' => 'form-signup']); ?>
				<?= $form->field($model, 'username')->textInput(['autofocus' => true]) ?>

                <?= $form->field($model, 'email') ?>

                <?= $form->field($model, 'password')->passwordInput() ?>

				<?= Html::submitButton('Signup', ['class' => 'btn btn-primary', 'name' => 'signup-button']) ?>
			  <div class="clearfix"> </div>
				<?php ActiveForm::end(); ?>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>