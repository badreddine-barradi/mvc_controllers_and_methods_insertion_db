<?php

/**
 * Created by PhpStorm.
 * User: pc
 * Date: 09/08/2017
 * Time: 11:17
 */

class Manage extends Controller
{
    protected $listcontroller;
    public function __construct()
    {
        $this->listcontroller = $this->model('Listcontroller');
        $this->method = $this->model('Method');
    }

    public function listcontroller()
    {
        //$listcontrollers = Listcontroller::all();
        //foreach ($listcontrollers as $listcontroller)
        //    echo $listcontroller->nom;
        //echo "chalaaalalalalalaa";
        $j = 0;
        $dir    = '../controllers';
        $files1 = scandir('../controllers');
        var_dump(scandir('../controllers'));
        //$files2 = scandir($dir, 1);

        //print_r($files1);
        //print_r($files2);

        //echo "<ul>";

        foreach ($files1 as $file)
        {
            $j ++;
            if ($j > 2)
                echo "<hr>";
            if ($file != '.' and $file != '..')
            {
                $class = explode( '.' ,$file);
                echo $class['0'].".php";
                //echo "<ul>";
                require_once 'controller/'.$class[0].".php";
                $class_methods = get_class_methods($class['0']);
                //var_dump($class_methods);
                foreach ($class_methods as $method_name) {
                    echo "<li>".$method_name."</li>";
                }
                echo "</ul>";


            }

        }

//echo "</ul>";
        $j = $j-2;
        if ( $j <= 0 )
            echo "<br> No file in this directory";
        else
            echo "<br> Number of files : ".$j;
    }

}