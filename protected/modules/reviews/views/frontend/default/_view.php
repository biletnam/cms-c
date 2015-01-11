<?php
global $inc; /*инкремент для попеременного отображения акулок slider-shark 1,2,3 */
?>
<div class="feedback-item">
    <img src="/images/slider-shark<?php echo ($inc++ % 3) + 1 ?>.png">

    <h2><?php echo $data->name; ?></h2>
    <span class="feedback-item-date"><?php echo date('d.m.Y', strtotime($data->date_create)) . '<br>'; ?></span>

    <p><?php echo $data->text; ?></p>
</div>
