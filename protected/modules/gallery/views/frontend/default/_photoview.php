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
?>

<div class="image-block">
	<?php echo CHtml::link(CHtml::image('/upload/gallery/small/'.$data->file),array('/upload/gallery/' . $data->file), array('class' => 'photo-gallery-item fancybox', 'data-title' => $data->alt_text,'rel'=>'group'));?>
</div>