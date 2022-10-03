<?php

use Illuminate\Support\Facades\Route;

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

Route::group(['middleware' => ['auth', 'can:isUser']], function () {
  Route::get('/', \App\Http\Livewire\Frontend\Home::class);
  Route::get('/materisatu', \App\Http\Livewire\Frontend\Materisatu::class);
});

Route::prefix('admin')->middleware(['auth', 'can:isAdmin'])->group(function () {
  Route::post('/upload', [\App\Http\Controllers\FileController::class, 'store'])->name('file.upload');
  Route::get('/', \App\Http\Livewire\Backend\Home::class);
  Route::get('/datapeserta', \App\Http\Livewire\Backend\Datapeserta::class);
  Route::get('/gantikatasandi', \App\Http\Livewire\Backend\Gantikatasandi::class);
  Route::get('/materidua', \App\Http\Livewire\Backend\Materidua::class);
  Route::prefix('materisatu')->group(function () {
    Route::get('/', \App\Http\Livewire\Backend\Materisatu\Index::class);
    Route::get('/tambah', \App\Http\Livewire\Backend\Materisatu\Form::class);
    Route::get('/edit/{key}', \App\Http\Livewire\Backend\Materisatu\Form::class);
  });
  Route::get('/materitiga', \App\Http\Livewire\Backend\Materitiga::class);
});
