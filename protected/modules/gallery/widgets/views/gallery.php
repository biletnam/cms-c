<a href="gallery/"><h1>фотогалерея</h1></a>
<br>
<?php if ($gallery and $gallery->cover):?>
	<a href="/gallery/default/view/id/<?php echo $gallery->id; ?>" >
		<div class="link-img" data-title = "<?php echo $gallery->title;?>">
			<img  src="/upload/gallery/small/<?php echo $gallery->cover->file; ?>"  alt="" />
		</div>
	</a>
<?else:?>
	<div class="link-img">
		<img src="/images/no-image.png" alt="" />
	</div>
<?endif?>

