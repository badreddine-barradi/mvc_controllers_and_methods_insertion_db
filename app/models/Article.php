<?php

/**
 * Created by PhpStorm.
 * User: pc
 * Date: 07/08/2017
 * Time: 12:45
 */
use Illuminate\Database\Eloquent\Model as Eloquent;

class Article extends Eloquent
{
    public function user()
    {
        return $this->belongsTo('User');
    }
    public function comments()
    {
        return $this->morphMany('Comment', 'commentable');
    }
}