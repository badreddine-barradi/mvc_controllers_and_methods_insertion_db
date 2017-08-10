<?php

/**
 * Created by PhpStorm.
 * User: pc
 * Date: 09/08/2017
 * Time: 11:12
 */
use Illuminate\Database\Eloquent\Model as Eloquent;

class Listcontroller extends Eloquent
{
    public $timestamps = false;
    protected $fillable = ['nom'];

}