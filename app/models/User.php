<?php

/**
 * Created by PhpStorm.
 * User: pc
 * Date: 11/07/2017
 * Time: 14:41
 */

use Illuminate\Database\Eloquent\Model as Eloquent;


class User extends Eloquent
{
    //public $name;
    //public $timestamps = false;
    protected $fillable = ['username' , 'email'];

    public function articles()
    {
        return $this->hasMany('Article');
    }

    public function country()
    {
        return $this->belongsTo('Country');
    }

    public function roles()
    {
        return $this->belongsToMany('Role');
    }

    public function comments()
    {
        return $this->morphMany('Comment', 'commentable');
    }

}