<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TravelerController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::get('travel-history', [TravelerController::class, 'travelHistory'])->name('travel-history');
Route::get('distinct-travellers', [TravelerController::class, 'distinctTravellers'])->name('distinct-travellers');

