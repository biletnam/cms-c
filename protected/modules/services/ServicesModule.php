<?php

/**
 * Class ServicesModule
 */
class ServicesModule extends CWebModule
{
    /**
     * @var array routing rules
     */
    public $urlRules = array(
        array(
            'class' => 'application.modules.services.components.CatalogUrlRule',
            'connectionID' => 'db',
        ),
    );

    /**
     * Module init
     */
	public function init()
	{
		// this method is called when the module is being created
		// you may place code here to customize the module or the application

		// import the module-level models and components
		$this->setImport(array(
			'services.models.*',
			'services.components.*',
		));

        $this->controllerPath = $this->getControllerPath() . DIRECTORY_SEPARATOR . Yii::app()->branch;
        $this->viewPath = $this->getViewPath() . DIRECTORY_SEPARATOR . Yii::app()->branch;
	}

    /**
     * @param $controller
     * @param $action
     *
     * @return bool
     */
	public function beforeControllerAction($controller, $action)
	{
		if(parent::beforeControllerAction($controller, $action))
		{
			// this method is called before any module controller action is performed
			// you may place customized code here
			return true;
		}
		else
			return false;
	}
}
