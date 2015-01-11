<?php

// This is the configuration for yiic console application.
// Any writable CConsoleApplication properties can be configured here.
$console = array(
    'basePath' => dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
    'name' => 'Console Application',
);
if (file_exists(dirname(__FILE__) . '/local.php'))
    $console =  CMap::mergeArray($console, require(dirname(__FILE__) . '/local.php'));

return $console;