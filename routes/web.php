<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;
use Inertia\Inertia;

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

// Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function() {
//     return view('dashboard');
// });

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard/posts', function () {
    return view('admin-posts');
})->name('admin-posts');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard/surveys', function () {
    return view('admin-survey');
})->name('admin-survey');