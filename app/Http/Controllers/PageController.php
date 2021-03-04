<?php
namespace App\Http\Controllers;

use Symfony\Component\Console\Output\ConsoleOutput;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Survey;
use App\Models\Response;
use DateTime;
use Inertia\Inertia;
use App\Models\SurveyResponses;

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

    public function survey_response(Survey $survey, Request $request) {
        $data = json_decode($request->getContent(), TRUE);
        // $a=json_decode('[{"Titulo":"Is this the only question of this survey?","Respuesta":[{"opcion":"Yes","checked":true}]}]');
        $output = new ConsoleOutput();
        //$output->writeln($request->getContent() == '[{"Titulo":"Is this the only question of this survey?","Respuesta":[{"opcion":"Yes","checked":true}]}]');
        //$output->writeln(Response::create([]));
        // var_dump($array[0]['Titulo']);
        return Response::create([
            'ip' => $request->ip(),
            'survey_id' => $survey->id,
            'data' => $request->getContent(),
            'survey_id' => $survey->id
        ]);
    }


    public function survey_thanks(Survey $survey) {
        return Inertia::render('survey-thanks', compact('survey'));
    }

    public function survey(Survey $survey) {
        // if (!$survey->enabled) {
        // }
        // http://127.0.0.1:8000/survey/radom-title-4-1
        $start_date = new DateTime($survey->aviableFrom);
        $end_date = new DateTime($survey->aviableTo);
        $current_date = new DateTime();

        //echo 'start date: ' . $start_date->format('Y-m-d') . '<br>current date:' . $current_date->format('Y-m-d') . '<br>';
        //echo 'end date: ' . $end_date->format('Y-m-d');

        if ($start_date > $current_date) {
            return redirect('/');
        }
        return Inertia::render('Survey', compact('survey'));
    }
}
