<?php

/**
 * Created by PhpStorm.
 * User: pc
 * Date: 09/08/2017
 * Time: 11:12
 */
use Illuminate\Database\Eloquent\Model as Eloquent;

class Method extends Eloquent
{
    public $timestamps = false;
    protected $fillable = ['nom' , 'controller_id'];
}