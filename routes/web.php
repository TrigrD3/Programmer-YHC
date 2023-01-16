<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/mahasiswa/index', [App\Http\Controllers\MahasiswaController::class, 'index'])-> name('mahasiswa.index');
route::get('/mahasiswa/create', [App\Http\Controllers\MahasiswaController::class, 'create'])->name('mahasiswa.create');
route::post('/mahasiswa', [App\Http\Controllers\MahasiswaController::class, 'store'])->name('mahasiswa.store');
route::get('/mahasiswa/{id}', [App\Http\Controllers\MahasiswaController::class, 'show'])->name('mahasiswa.show');
route::get('/mahasiswa/{id}/edit', [App\Http\Controllers\MahasiswaController::class, 'edit'])->name('mahasiswa.edit');
route::put('/mahasiswa/{id}', [App\Http\Controllers\MahasiswaController::class, 'update'])->name('mahasiswa.update');
route::delete('/mahasiswa/{id}', [App\Http\Controllers\MahasiswaController::class, 'destroy'])->name('mahasiswa.delete');