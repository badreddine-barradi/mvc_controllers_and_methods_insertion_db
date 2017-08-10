<?php

/**
 * Created by PhpStorm.
 * User: pc
 * Date: 08/08/2017
 * Time: 10:27
 */
use Illuminate\Database\Eloquent\Model as Eloquent;

class Comment extends Eloquent
{
    public function commentable()
    {
        return $this->morphTo();
    }
}