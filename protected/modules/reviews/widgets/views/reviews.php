<?php
Yii::app()->clientScript->registerScript('jcarousel', "
    $(function(){
        $('.jcarousel').jcarouselAutoscroll({
                interval: 5000
				});
			});
", CClientScript::POS_READY);
?>

<div class="jcarousel-wrapper">
    <div class="jcarousel">
        <ul>
            <?php $i = 1;?>
            <?php foreach ($dataProvider as $review):?>
                <li>
                    <div class ="feedback-item review<?php echo $i % 3?>">
                        <h2><?php echo $review->name; ?></h2>
                        <p class="feedback-text"><?php echo $review->text; ?></p>
                        <p class="feedback-date"><?php echo date("d.m.Y", strtotime($review->date_create)); ?></p>
                        <a href="/reviews" class = "review"></a>
                    </div>
                </li>
                <?php $i++;?>
            <?php endforeach;?>
        </ul>
    </div>
    <a href="#" class="jcarousel-btns_nav prev">&lsaquo;</a>
    <a href="#" class="jcarousel-btns_nav next">&rsaquo;</a>
    <p class="jcarousel-pagination">
</div>



