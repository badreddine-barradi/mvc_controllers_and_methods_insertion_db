<?php
/**
 * Created by PhpStorm.
 * User: pc
 * Date: 07/08/2017
 * Time: 14:37
 */

foreach ($data['articles'] as $article )
{
    echo "<p><h1>".$article->title." posted by ".$article->user->username."</h1></p>";
    echo "<p>".$article->body."</p>";
}