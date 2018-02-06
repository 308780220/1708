<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use frontend\assets\ShopLayoutAsset;
use yii\web\View;
use yii\helpers\Url;
use yii\widgets\LinkPager;
use frontend\components\MyLinkPager;

ShopLayoutAsset::register($this);
?>
<?php $this->beginPage() ?>

<!DOCTYPE HTML>
<html>
<head>
<title><?= Html::encode($this->title) ?></title>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="public/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Kick flips Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndriodCompatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<meta charset="<?= Yii::$app->charset ?>">
<?= Html::csrfMetaTags() ?>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }></script>
<?php
$JS = <<<JSSTR
		 new WOW().init();
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
JSSTR;
$this->registerJs($JS,View::POS_LOAD);
?>

<!-- //end-smoth-scrolling -->
<!---- animated-css ---->
<!---- animated-css ---->
<?php $this->head() ?>
</head>
<body  style="background: rgba(87, 91, 92, 0.13);">
<?php $this->beginBody() ?>

<?php
	if(!empty($dataProvider->getModels())){
		foreach($dataProvider->getModels() AS $v){
?>
<div style="background: rgba(87, 91, 92, 0.13);">
	<div class="magsingle-commemts" style="margin: 0px 0px 20px;">
		<div class="col-md-2 user">
			<img src="public/images/user.png" alt=""/>
		</div>
		<div class="col-md-10 user-comment">
			<h4><?= Html::encode($v['title']);?></h4>
			<?= Html::encode($v['content']);?>
			<a class="comme" href="#"><?= Html::encode($v['ctime']);?></a>
			<div class="user-bwn">
				<a href="#"> Relay</a>
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>
</div>
<?php
		}
	}
?>
<?php
echo LinkPager::widget([
	'pagination' => $dataProvider->getPagination(),
]);
?>
<?php
echo MyLinkPager::widget([
	'pagination' => $dataProvider->getPagination(),
]);
?>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>




