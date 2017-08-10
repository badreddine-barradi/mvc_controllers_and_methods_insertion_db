<?php

/**
 * Created by PhpStorm.
 * User: pc
 * Date: 11/07/2017
 * Time: 12:46
 */
class Controller
{
    public function model($model)
    {
        require_once '../app/models/'.$model.'.php';
        return new $model();
    }

    public function view($view,$data = [])
    {
        require_once '../app/views/'.$view.'.php';
    }
}