<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;

class PageController extends Controller
{
    public function home() {
        return view('index');
    }

    public function post(Post $post) {
        return view('post', compact('post'));
    }
}
