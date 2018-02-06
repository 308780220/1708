<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use frontend\assets\ShopLayoutAsset;
use yii\web\View;
use yii\helpers\Url;


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
<body>
<?php $this->beginBody() ?>
<!--banner start here-->
<?= $this->blocks['banner'] ?? '';?>
	<div class="banner-stripes">
		<div class="banner-strip-lft">
			 <div class="container">
				<div class="bann-head">
					<a href="<?= Url::toRoute('site/index');?>"><img src="<?= Url::to('public/images/logo.png');?>" alt=""/></a>
					<ul  class="bann-list">
						<li><a href="store.html">STORE</a></li>
						<li><a href="<?= Url::toRoute('magazine/index');?>">MAGAZINE</a></li>
					</ul>
				</div>
		   </div>
	    </div>
	    <div class="banner-strip-rit">
	    		<div class="bann-contact">
	    			<div class="search">
	    				<input type="text" value="" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '';}"/>
	    				<input type="submit" value=""/>
	    			</div>
	    			<ul>
					<?php
						if (Yii::$app->user->isGuest) {
					?>
		    			<li><a href="<?= Url::toRoute('site/signup');?>">SIGN UP</a></li>
		    			<li><a href="<?= Url::toRoute('site/login');?>">LOG IN</a></li>
					<?php
						}else{
					?>
		    			<li><a href="<?= Url::toRoute('site/logout');?>">Logout(<?=Yii::$app->user->identity->username?>)</a></li>
					<?php
						}
					?>
	    			</ul>
	    		</div>
	    </div>
	   <div class="clearfix"> </div>
	 </div>
<?= $content?>

<!--footer start here-->
<div class="footer wow bounce" data-wow-delay="0.1s">
	<div class="container">
		<div class="footer-main">
			<div class="col-md-4 ftr-grid wow bounceInLeft" data-wow-delay="0.4s">
				<h3>Featured product</h3>
				<div class="ftr-glss">
					<div class="glss-text">
					<h3>Sunglasses VI</h3>
					<p>This is Photoshop's version  of Lorem Ipsum.</p>
					<div class="ftr-gls-bwn">
						<a href="#">View</a>
					</div>
					</div>
				 </div>
			</div>
			<div class="col-md-5 ftr-grid wow bounceInLeft" data-wow-delay="0.4s">
				<h3>Featured Article</h3>
				<div class="ft-killbg">
					<h3>Killin,It</h3>
					<p>This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis.</p>
				  <div class="ftr-black-bwn">
				  	<a href="#">View Post</a>
				  </div>
				</div>
			</div>
			<div class="col-md-3 ftr-small-grid wow bounceInLeft" data-wow-delay="0.4s">
				<span class="ftr-line"> </span>
				<ul>
					<li><a href="magazine.html">Magazine</a></li>
					<li><a href="store.html">Store</a></li>
					<li><a href="newsletter.html">Newsletter</a></li>
					<li><a href="about.html">About</a><li>
					<li><a href="contact.html">Contact</a><li>
					<li><a href="press.html">Press</a><li>
				</ul>
			</div>
			<div class="clearfix"> </div>
			<div class="copyright">
				<p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a> - Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></p>
			</div>
		</div>
	</div>
</div>
<!--footer end here-->
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>


