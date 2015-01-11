<?php

class DefaultController extends BackEndController{

    /**
     * Lists all models.
     */
    public function actionIndex()
    {

        $dataProvider = new CActiveDataProvider('Reviews');

        $this->render('index',array(
            'dataProvider' => $dataProvider,
        ));
    }

    /**
     * Deletes a particular model.
     * @param integer $id the ID of the model to be deleted
     */
    public function actionDelete($id=0)
    {   if($id) {
            if (Yii::app()->request->isPostRequest) {
                $this->loadModel($id)->delete();

                // if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
                if (!isset($_GET['ajax']))
                    $this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('manage'));
            } else {
                throw new CHttpException(400, 'Invalid request. Please do not repeat this request again.');
            }
        }

        if(isset($_POST['check_boxes'])){
            $models=Reviews::model()->findAllByPk($_POST['check_boxes']);
            foreach($models as $model) {
                $model->delete();
            }
        }
        $this->redirect('index');
    }

    public function loadModel($id)
    {
        $model = Reviews::model()->findByPk($id);
        if ($model === null)
            throw new CHttpException(404, 'The requested page does not exist.');
        return $model;
    }

    /**
     * Accept the Review
     *
     * @param $id
     * @throws CDbException
     * @throws CHttpException
     */
    public function actionAccept($id=0)
    {
        if ($id) {
            $model = $this->loadModel($id);
            $model->public = 1;
            $model->save();
        }
        if(isset($_POST['check_boxes'])){
            $models=Reviews::model()->findAllByPk($_POST['check_boxes']);
            foreach($models as $model) {
                $model->public = 1;
                $model->save();
            }
        }
        $this->redirect('index');
    }

    /**
     * Decline the Review
     *
     * @param $id
     * @throws CDbException
     * @throws CHttpException
     */
    public function actionDecline($id=0)
    {
        if($id) {
            $model = $this->loadModel($id);
            $model->public = 0;
            $model->save();
        }
        if(isset($_POST['check_boxes'])){
            $models=Reviews::model()->findAllByPk($_POST['check_boxes']);
            foreach($models as $model) {
                $model->public = 0;
                $model->save();
            }
        }
        $this->redirect('index');
    }
}