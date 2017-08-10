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
        $dir    = '../app/controllers';
        $files1 = scandir($dir);
        //var_dump(scandir($dir));
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
                if (count($class) == 1)
                    //echo $class['0'];
                    echo "<br>This is a directory : ".$class['0'];
                else{
                    $nom = $class['0'];
                    $controller = Listcontroller::where( 'nom' , $nom )->get();
                    //return $controller->nom;
                    //var_dump( $controller->nom);
                    if (count($controller)>0 )
                        //var_dump($controller);
                        echo "<h1>".$controller[0]->nom."</h1>";
                    else
                    {
                        Listcontroller::create(['nom' => $nom]);

                        echo "created";
                    }
                    echo $class['0'].".php";
                    echo "<br>";
                    require_once $dir.'/'.$class[0].".php";
                    $class_methods = get_class_methods($class['0']);
                    if (!$class_methods)
                        echo "<h3>No methods</h3>";
                    //var_dump($class_methods);
                    else
                    {
                        echo "<ul>";
                        foreach ($class_methods as $method_name) {

                            $method = Method::where ( 'nom' , $method_name)
                                            ->where( 'controller_id' , $controller[0]->id)
                                            ->get();
                            //echo $method;
                            if (count($method)<=0)
                            {
                                if ($method_name != '__construct' and $method_name!= 'index' and $method_name!= 'view' and $method_name!= 'model')
                                {
                                    echo "<h3>Method created with name<font color=#006400>  ".$method_name."</font> and controller_id : <font color=#006400>".$controller[0]->id."</font></h3>";
                                    Method::create([
                                        'nom' => $method_name,
                                        'controller_id' => $controller[0]->id
                                        ]);
                                }
                            }
                            elseif ($method_name != '__construct' and $method_name!= 'view' and $method_name!= 'model')
                                echo "<li>".$method_name."</li>";
                        }
                        echo "</ul>";
                    }
                }


            }

        }

//echo "</ul>";
        $j = $j-2;
        if ( $j <= 0 )
            echo "<br> No file in this directory";
        else
            echo "<br> Number of files and directories : ".$j;
    }

    public function find($nom)
    {
        $finded = Listcontroller::create( [
            'nom' => $nom
        ]);
        return $finded;
    }

    public function tester()
    {

    }

}