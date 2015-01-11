<?php
Yii::app()->clientScript->registerScript('reviews', "
	$(document).on('click','.publish',function(){
        $.fn.yiiGridView.update('reviews-grid', {
            type: 'POST',
            url: $(this).attr('href'),
            success:function(data) {
            $.fn.yiiGridView.update('reviews-grid');
            }
        })
        return false;
    });
//    $('body').on('click','#delete_checked',function(){
//        if(!confirm('Вы уверенны, что хотите удалить выбранные элементы?'))return false;
//    });


", CClientScript::POS_READY);

$this->breadcrumbs = array(
    'Отзывы',
);
?>

<h1><?php echo 'Отзывы'?></h1>


<?php echo CHtml::beginForm(); ?>
<?php
$this->widget('zii.widgets.grid.CGridView', array(
    'id'=>'reviews-grid',
    'dataProvider'=>$dataProvider,
    'cssFile'=>Yii::app()->getBaseUrl(true).'/css/admin/gridstyles.css',
    'columns'=>array(
        array(
            'class'=>'CCheckBoxColumn',
            'id'=>'check_boxes',
            'checked'=>"0",
            'selectableRows'=>2, //разрешает отметку множества строк
        ),
        'name',
        'email',
        'date_create',
        array(
            'name'=>'public',
            'value'=>'CHtml::link($data->public ? "Скрыть" : "Опубликовать",
                    array(
                        $data->public ? "default/decline" : "default/accept","id"=>$data->id
                    ),
                    array(
                        "class"=>"publish"
                    )
                )',
            'type'=>'html',
        ),
        'text',

        array(
            'class'=>'CButtonColumn',
            'template' => '{delete}',
            'buttons'=>array
            (
                'delete' => array
                (
                    'imageUrl'=>Yii::app()->request->baseUrl.'/images/admin/del.png',
                ),
            ),
        ),
    ),
));
echo CHtml::button('Опубликовать выбранные', array('id' => 'publish_checked', 'submit' => (array('default/accept/'))));
echo CHtml::button('Скрыть выбранные', array('id'=>'decline_checked','submit'=>(array('default/decline/'))));
echo CHtml::button('Удалить выбранные', array('id'=>'delete_checked','submit'=>(array('default/delete/')),'confirm'=>'Вы уверенны, что хотите удалить выбранные элементы?'));
?>
<?php echo CHtml::endForm(); ?>

