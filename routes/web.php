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
  Route::prefix('materisatu')->group(function () {
    Route::get('/{key}', \App\Http\Livewire\Frontend\Ujian\Materisatu\Intro::class);
    Route::get('/{key}/soal', \App\Http\Livewire\Frontend\Ujian\Materisatu\Form::class);
    Route::get('/{key}/hasil', \App\Http\Livewire\Frontend\Ujian\Materisatu\Hasil::class);
  });
  Route::prefix('materidua')->group(function () {
    Route::get('/{key}', \App\Http\Livewire\Frontend\Ujian\Materidua\Intro::class);
    Route::get('/{key}/soal', \App\Http\Livewire\Frontend\Ujian\Materidua\Form::class);
    Route::get('/{key}/hasil', \App\Http\Livewire\Frontend\Ujian\Materidua\Hasil::class);
  });
});

Route::prefix('admin')->middleware(['auth', 'can:isAdmin'])->group(function () {
  Route::post('/upload', [\App\Http\Controllers\FileController::class, 'store'])->name('file.upload');
  Route::get('/', \App\Http\Livewire\Backend\Home::class);
  Route::get('/gantikatasandi', \App\Http\Livewire\Backend\Gantikatasandi::class);
  Route::prefix('datapeserta')->group(function () {
    Route::get('/', \App\Http\Livewire\Backend\Datapeserta\Index::class);
    Route::get('/tambah', \App\Http\Livewire\Backend\Datapeserta\Form::class);
    Route::get('/edit/{key}', \App\Http\Livewire\Backend\Datapeserta\Form::class);
  });
  Route::prefix('materisatu')->group(function () {
    Route::get('/', \App\Http\Livewire\Backend\Materisatu\Index::class);
    Route::get('/tambah', \App\Http\Livewire\Backend\Materisatu\Form::class);
    Route::get('/edit/{key}', \App\Http\Livewire\Backend\Materisatu\Form::class);
  });
  Route::prefix('materidua')->group(function () {
    Route::get('/', \App\Http\Livewire\Backend\Materidua\Index::class);
    Route::get('/tambah', \App\Http\Livewire\Backend\Materidua\Form::class);
    Route::get('/edit/{key}', \App\Http\Livewire\Backend\Materidua\Form::class);
  });
  Route::get('/petunjuk', \App\Http\Livewire\Backend\Petunjuk::class);
});
