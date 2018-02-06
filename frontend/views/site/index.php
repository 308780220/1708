<?php

use frontend\assets\ShopIndexAsset;
use yii\web\View;
use yii\helpers\Url;

$this->title = 'My Yii 商城';

ShopIndexAsset::register($this);
?>
<?php
	$this->beginBlock('banner');
?>
<div class="banner">
<?php
	$this->endBlock('banner');
?>
<div class="banner-grid">
	  		<div class="bann-info">
	  			<h1>We are kickflips</h1>
	  			<p>Kickflips is a fresh new brand selling some of the dopest gear out there, and writing about the lifestyle they complement.</p>
	  			<div class="bann-bwn">
	  				<a href="#">Read More</a>
	  			</div>
	  		</div>
	  </div>
	 <div class="clearfix"> </div>
</div>
<!--banner end here-->
<!--product start here-->
<div class="products">
	<div class="container">
		<div class="products-main">
			<h3>FEATURED PRODUCTS</h3>
			<div class="produ">
				<a href="#">Visit Store</a>
			</div>
		</div>
	</div>
</div>
<!--products end here-->
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >手机网站模板</a></div>
<!--store start here-->
<div class="store wow bounce" data-wow-delay="0.1s">
	<div class="container">
		<div class="store-main">
			<div class="col-md-4 store-grid  wow bounceIn" data-wow-delay="0.4s">
				<div class="glass">
					<div class="img-bg">
					<h3>Sunglasses VI</h3>
					<p>This is Photoshop's version  of Lorem Ipsum.</p>
					<div class="store-bwn">
						<a href="#">View</a>
					</div>
				</div>
				</div>
			</div>
			<div class="col-md-4 store-grid  wow bounceIn" data-wow-delay="0.4s">
				<div class="cam">
					<div class="img-bg">
					<h3>Camera IX</h3>
					<p>This is Photoshop's version  of Lorem Ipsum.</p>
					<div class="store-bwn">
						<a href="#">View</a>
					</div>
				</div>
				</div>
			</div>
			<div class="col-md-4 store-grid  wow bounceIn" data-wow-delay="0.4s">
				<div class="clk">
					<div class="img-bg">
					<h3>Clock II</h3>
					<p>This is Photoshop's version  of Lorem Ipsum.</p>
					<div class="store-bwn">
						<a href="#">View</a>
					</div>
				</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--store end here-->
<!--articals start here-->
<div class="articals wow bounce" data-wow-delay="0.1s">
	<div class="container">
		<div class="articals-main">
		    <div class="art-top">
				<h3>FEATURED ARTICLES</h3>
				<a href="#">Visit Magazine</a>
			</div>
			<div class="art-bottom">
				<div class="col-md-4 art-grid1  wow bounceIn" data-wow-delay="0.4s">
					<h3>Killin'It</h3>
					<p>This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non  mauris vitae erat consequat auctor eu in elit. Class aptent...</p>
					<div class="art-bt-bwn">
						<a href="#">View Post</a>
					</div>
				</div>
				<div class="col-md-4 art-grid2  wow bounceIn" data-wow-delay="0.4s">
					<h3>Your guide to Skate</h3>
					<h4> park ettiquite</h4>
					<p>This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor Sed non  mauris vitae erat consequat auctor. </p>
				    <div class="art-bt-bwn">
						<a href="#">View Post</a>
					</div>
				</div>
				<div class="col-md-4 art-grid3  wow bounceIn" data-wow-delay="0.4s">
					<h3>Top 20 board designs</h3>
					<p>This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non  mauris vitae erat consequat auctor eu in elit. Class aptent...</p>
				    <div class="art-bt-bwn">
						<a href="#">View Post</a>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</div>
<!--artical end here-->
<!--video start here-->
<!--pop-up-box-->

<!--pop-up-box-->
<div class="video">
	<div class="container">
		<div class="video-main">
				<div class="col-md-8 video-left wow bounceInLeft" data-wow-delay="0.4s">
					<img src="<?= Url::to('public/images/video-img.png');?>" alt=""/>
					 <div class="video-play-bwn">
					 	<a href="#small-dialog5" class="thickbox play-icon popup-with-zoom-anim"><img src="<?= Url::to('public/images/play.png');?>" alt="" /></a>
					 </div>
					 <div id="small-dialog5" class="mfp-hide">
						<iframe src="#" width="500" height="275" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen> </iframe>
					</div>


				</div>
				<div class="col-md-4 video-right wow bounceInRight" data-wow-delay="0.4s">
					<h3>Watch the video about how it all started.</h3>
					<a class="face-book" href="#"> Share on Facebook</a>
				   <div class="tweet">
					<a href="#"> Tweet this</a>
				  </div>
				</div>
		<div class="clearfix"> </div>
	  </div>
  </div>
</div>
<!--video end here-->
<!--contact start here-->
<div class="contact wow bounceInLeft" data-wow-delay="0.4s">
	<div class="container">
		<div class="contact-main">
			<h3>Sign up for our newsletter:</h3>
			<form>
				<input type="text" value="Enter email here..."/ onfocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Enter email here...';}"/>
				<input type="submit"  value="Submit"/>
			</form>
		</div>
	</div>
</div>
<?php
$JS = <<<JSSTR
	$(document).ready(function() {
		$('.popup-with-zoom-anim').magnificPopup({
			type: 'inline',
			fixedContentPos: false,
			fixedBgPos: true,
			overflowY: 'auto',
			closeBtnInside: true,
			preloader: false,
			midClick: true,
			removalDelay: 300,
			mainClass: 'my-mfp-zoom-in'
		});

		});
JSSTR;
$this->registerJs($JS,View::POS_LOAD);
?>