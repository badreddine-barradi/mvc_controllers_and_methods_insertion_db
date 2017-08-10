<?php
/**
 * Created by PhpStorm.
 * User: pc
 * Date: 07/08/2017
 * Time: 17:03
 */

echo "<h1>Posts made in ".$data['country']->country."</h1>";

foreach ($data['country']->articles as $article)
{
    echo "<hr><h3>Title : ".$article->title." posted by : ".$article->user->username."</h3>";
    echo $article->body."<br>";
}