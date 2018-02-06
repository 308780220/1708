<?php

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class ShopIndexAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'public/css/popuo-box.css',
    ];
    public $js = [
		'public/js/modernizr.custom.53451.js',
		'public/js/jquery.magnific-popup.js',
    ];

    public $depends = [
        'frontend\assets\ShopLayoutAsset',
    ];
}
