
<?php

    echo "<h1>".$data['user_profile']->username." from : ".$data['user_profile']->country->country."</h1>";
    echo "<hr><h1>Roles :</h1><ul>";
    foreach ($data['user_profile']->roles as $role)
    {
        echo "<li>".$role->name."</li><br>";
    }
    echo "</ul><hr>";
    foreach ($data['user_profile']->articles as $article)
    {
        echo "<h1>Title :".$article->title."</h1>";
        echo "<h3> Body <br>".$article->body."</h3>";
    }

    echo "<h1>Comments : <br>";
    foreach ($data['user_profile']->comments as $comment )
        echo "<h2>".$comment->body."</h2>";
