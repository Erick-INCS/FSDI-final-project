<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Survey;
use DateTime;
use Inertia\Inertia;

class PageController extends Controller
{
    public function home() {
        return Inertia::render('home', [
            'posts' => Post::latest()->with('user')->take(9)->get()            
        ]);
        //return view('index');
    }

    public function post(Post $post) {
        return Inertia::render('post', [
            'p' => compact('post'),
            'similar' => $post->sameCat()
        ]);
    }

    public function survey(Survey $survey) {
        // if (!$survey->enabled) {
        //     return redirect('/');
        // }
        // http://127.0.0.1:8000/survey/radom-title-4-1
        $start_date = new DateTime($survey->aviableFrom);
        $end_date = new DateTime($survey->aviableTo);
        $current_date = new DateTime();

        echo 'start date: ' . $start_date->format('Y-m-d') . '<br>current date:' . $current_date->format('Y-m-d') . '<br>';

        if ($start_date <= $current_date) {
            echo 'start ok';
        } else {
            echo 'not yet';
        }
        return Inertia::render('Survey', compact('survey'));
    }
}
