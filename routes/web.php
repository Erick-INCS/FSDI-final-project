<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;
use Inertia\Inertia;
use App\Models\Survey;
use App\Models\Response;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/* Route::get('/', function(){
    return Inertia::render('home');
});
*/

Route::get('/', [PageController::class, 'home'])->name('home');
Route::get('/post/{post:slug}', [PageController::class, 'post'])->name('post');

Route::get('/survey/{survey:slug}', [PageController::class, 'survey'])->name('survey');
// Admin panel

Route::post('/survey/{survey:slug}/response', [PageController::class, 'survey_response'])->name('survey_response');
Route::get('/survey/{survey:slug}/thanks', [PageController::class, 'survey_thanks'])->name('survey_thanks');
// Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function() {
//     return view('dashboard');
// });

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {

    $sessions = Tracker::sessions(60 * 24);
    $visitor = Tracker::currentSession();

    return view('dashboard', [
        'something' => $sessions
    ]);
})->name('dashboard');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard/posts', function () {
    return view('admin-posts');
})->name('admin-posts');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard/surveys', function () {
    return view('admin-survey');
})->name('admin-survey');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard/survey/{survey:slug}', function (Survey $survey) {
    return view('admin-survey-responses', [
        'responses' => Response::where('survey_id', $survey->id)->get(),
        'questions' => $survey->config,
    ]);
})->name('admin-survey-responses');