<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\widgets\ActiveForm;
use yii\web\View;

use yii\helpers\Url;
/* @var $this yii\web\View */
/* @var $model frontend\models\Magazine */

$this->title = $model->title;
?>

<!--magsingle start here-->
<div class="magzine">
	<div class="container">
		<div class="magzine-main">
			<div class="col-md-8 mag-single">
				<h3><?=$model->title?></h3>
				<?=$model->content?>
			    <div class="data-line">
			    	<ul>
			    		<li><a href="#"><small class="calen"> </small><span class="calen"><?=$model->ctime?></span></a></li>
			    		<li><a href="#"><small class="admin"> </small><span class="calen"><?=$model->author?></span></a></li>
			    		<li><a href="#"><small class="comme"> </small><span class="calen">No comments</span></a></li>
			    		<li><a href="#"><small class="post"> </small><span class="calen">View Posts</span></a></li>
			    		<li><a href="#"><small class="link"> </small><span class="calen">Premalink</span></a></li>
			    	</ul>
			    </div>

			   <!-- <iframe src="<?= Url::toRoute(['magazine-reply/index','MagazineReplySearch[magazine_id]'=>$model->id])?>" width="100%" height="1000" frameborder="0"></iframe> -->
				<div id='replyList'></div>
<?php
$JSAjax = <<<JSA
	$(function(){
		var replyUrl = './index.php?r=magazine-reply/index&MagazineReplySearch[magazine_id]=$model->id';
		var divStr = '';
		$.ajax({
			url:replyUrl,
			dataType:'json',
			success:function(msg){
				$.each( msg, function(index, cont){
					divStr += '<div class="magsingle-commemts"><div class="col-md-2 user"><img src="public/images/user.png" alt=""/></div><div class="col-md-10 user-comment"><h4>'+cont.title+'</h4><p>'+cont.content+'</p><a class="comme" href="#">'+cont.ctime+'</a><div class="user-bwn"><a href="#"> Relay</a></div></div><div class="clearfix"> </div></div>';
				});
				$('#replyList').append(divStr);
			}
		});
	});
JSA;
$this->registerJs($JSAjax,View::POS_LOAD);
?>
			<div class="magsingle-contact">
			<h3>Reply</h3>
			<?php $form = ActiveForm::begin([
				'method' => 'post',
				'action' => Url::toRoute('magazine-reply/create'),
				'options' => ['class' => 'form-inline'],
				'fieldConfig'=>[
					'template'=> "<div class=\"col-sm-8\">{input}</div>",
				]

			]); ?>
			<div class="form-group">
				<?= $form->field($modelReply, 'title')->textInput(['placeholder'=>'Title','style'=>'width:347.5px','maxlength' => true]) -> label(false) ?>
				<?= $form->field($modelReply, 'email')->textInput(['placeholder'=>'Email','style'=>'width:347.5px','maxlength' => true]) -> label(false) ?>

				<?= $form->field($modelReply, 'content')->textarea(['placeholder'=>'Content','style'=>'width:730px','rows' => 6]) ?>

				<?= $form->field($modelReply, 'magazine_id')->hiddenInput(['value'=>$model->id]);?>
				<?php
				$user_id = Yii::$app->user->isGuest ? 0 : Yii::$app->user->getId();

				echo $form->field($modelReply, 'user_id')->hiddenInput(['value'=>$user_id]);
				?>
				<?= Html::submitButton('Create', ['class' => $modelReply->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>

			</div>
			<?php ActiveForm::end(); ?>
			</div>
			</div>
		  <div class="col-md-4 magzin-right">
				<h3>RECENT POST</h3>
				<ul class="magzin-post">
					<li><a href="#">labore dolore magna</a></li>
					<li><a href="#">Lorem ipsum dolor</a></li>
					<li><a href="#">Excepteur occaecat</a></li>
					<li><a href="#">dignissimos ducimus</a></li>
					<li><a href="#">Nam libero tempore</a></li>
				</ul>
				<h3>CATEGORIES</h3>
				<ul class="magzine-arc">
					<li><a href="#">simply random text</a></li>
					<li><a href="#">remaining essentially</a></li>
					<li><a href="#">many web sites</a></li>
					<li><a href="#">repetition injected</a></li>
					<li><a href="#">Temporibus quibusdam</a></li>
				</ul>
				<h3>Archives</h3>
				<ul class="magzine-arc">
					<li><a href="#">June 2014</a></li>
					<li><a href="#">May 2014</a></li>
					<li><a href="#">April 2014</a></li>
					<li><a href="#">January 2014</a></li>
					<li><a href="#">December 2013</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<!--magsingle end here-->
