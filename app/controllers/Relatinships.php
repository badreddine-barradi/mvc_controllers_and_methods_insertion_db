<?php

/**
 * Created by PhpStorm.
 * User: pc
 * Date: 07/08/2017
 * Time: 12:42
 */
class Relatinships extends Controller
{
    protected $article;

    public function __construct()
    {
        $this->article = $this->model('Article');
        $this->country = $this->model('Country');
        $this->role = $this->model('Role');
    }

    public function index()
    {
         $articles = Article::all();
        //echo User::all();
        return $this->view('relations/all_articles',[ 'articles' => $articles]);
    }

    public function profile($username)
    {
        $user_profile = User::where('username', $username)->first();
        $this->view( 'relations/profile' , [ 'user_profile' => $user_profile]);
    }

    public function country($id)
    {
        $country = Country::find($id);
        $this->view('relations/country',[ 'country' => $country]);
    }
}