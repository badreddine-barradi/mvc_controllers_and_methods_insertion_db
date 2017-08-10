<?php

/**
 * Created by PhpStorm.
 * User: pc
 * Date: 07/08/2017
 * Time: 16:36
 */
use Illuminate\Database\Eloquent\Model as Eloquent;

class Country extends Eloquent
{
    public function articles()
    {
        return $this->hasManyThrough('Article' , 'User' , 'country_id' , 'user_id');
    }
}