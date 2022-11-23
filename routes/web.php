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

Route::middleware(['auth'])->group(function () {
  Route::post('/upload', [\App\Http\Controllers\FileController::class, 'store'])->name('file.upload');
  Route::get('/', \App\Http\Livewire\Home::class);
  Route::get('/gantikatasandi', \App\Http\Livewire\Gantikatasandi::class);
  Route::get('/soal', \App\Http\Livewire\Soal\Index::class);
  Route::get('/petunjuk', \App\Http\Livewire\Petunjuk::class);
  Route::prefix('ruangkerja')->group(function () {
    Route::get('/', \App\Http\Livewire\Ruangkerja\Index::class);
    Route::get('/tambah', \App\Http\Livewire\Ruangkerja\Form::class);
    Route::get('/peserta/{key}', \App\Http\Livewire\Ruangkerja\Peserta::class);
  });
});
