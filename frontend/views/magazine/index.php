<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\LinkPager;


$this->title = 'Magazines';
?>

<!--magzine start here-->
<div class="magzine">
	<div class="container">
		<div class="magzine-main">
			<div class="col-md-9 magzin-left">
			  <div class="magazin-top">
				<?php

					foreach($dataProvider->getModels() AS $v){
				?>
				<div class="magazin-grid">
					<h3><?=$v['title']?></h3>
					<p><?=mb_substr($v['content'],0,200)?><?= strlen($v['content']) > 200 ? ' ...' : ''?></p>
				  <div class="magazin-bwn">
					<a href="<?= Url::toRoute(['magazine/view','id' => $v['id']]);?>.html">Read More</a>
				  </div>
				</div>
				<?php
					}

				?>
				<?php
				echo LinkPager::widget([
					'pagination' => $dataProvider->getPagination(),
				]);
				?>
				<div class="clearfix" > </div>
			 </div>
			</div>
			<div class="col-md-3 magzin-right">
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
		  <div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--magzine end here-->
