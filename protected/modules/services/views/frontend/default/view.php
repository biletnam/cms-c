<?php
$cs=Yii::app()->clientScript;

// Подключаем фанси-бокс
$cs->registerScriptFile('/js/fancybox/jquery.fancybox.pack.js', CClientScript::POS_HEAD);
$cs->registerCssFile('/js/fancybox/jquery.fancybox.css');
$cs->registerScript('images', "
  $('.fancybox').fancybox({
		overlayShow: true,
		overlayOpacity: 0.5,
		zoomSpeedIn: 300,
		zoomSpeedOut:300
	});
", CClientScript::POS_READY);


$this->breadcrumbs = array(
    'Услуги' => $this->createAbsoluteUrl('/services'),
    $model->short_title,
);
?>
<h1><?php echo $model->short_title; ?></h1>
<p><?php echo $this->description; ?></p>
<?php if ($this->photo): ?>
    <?php echo CHtml::link(CHtml::image('/upload/catalog/service/' . $this->photo, $this->title,array('class'=>'service-img')),'/upload/catalog/service/' . $this->photo,array('class'=>'fancybox','rel'=>'group')); ?>
<?php else: ?>
    <img style="float: left; margin-top: 15px;" width="260" height="260"
         src="/images/no-image.png">
<?php endif ?>
<h2><?php echo $this->long_title; ?></h2>
<p><?php echo $this->text; ?></p>

