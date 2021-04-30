<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\StudentProfileController;
use App\Http\Controllers\SubjectController;
use App\Http\Controllers\TeacherController;
use App\Http\Controllers\TimetableController;
use App\Http\Controllers\AttendanceController;
use App\Http\Controllers\TeacherProfile;
use GuzzleHttp\Middleware;

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

Route::get('/registration',[LoginController::class,'Register']);
Route::post('/register',[LoginController::class,'registerfoam']);
Route::get('login',[LoginController::class,'login'])->name('login');
Route::post('/login',[LoginController::class,'logines']);

Route::middleware(['auth', 'detail','teacher'])->group(function () {
   /// Route::get('/studentdeshboard',[StudentController::class,'studentdeshboard']);
    Route::get('/teacherdashboard',[TeacherController::class,'teacherdashboard'])->name('teacherdashboard');
    Route::get('/teacher_profile',[TeacherProfile::class,'profile']);
});
Route::middleware(['auth', 'detail','student'])->group(function () {
    Route::get('/studentdeshboard',[StudentController::class,'studentdeshboard']);
    Route::get('/teacherdeshboard',[TeacherController::class,'teacherdeshboard']);
    Route::get('/profile',[StudentProfileController::class,'profile']);
    Route::get('/subject',[SubjectController::class,'subject']);

    Route::get('/timetable',[TimetableController::class,'timetable']);
    Route::get('/attendance',[AttendanceController::class,'attendance']);
});

Route::middleware(['auth'])->group(function () {
Route::get('/addstudentdetail',[StudentController::class,'addstudentdetail']);
Route::get('/addteacherdetail',[TeacherController::class,'addteacherdetail']);
Route::post('teacherdetail',[TeacherController::class,'teacherdetail']);
Route::post('studentdetail',[StudentController::class,'studentdetail']);
Route::get('logout',[LoginController::class,'logout']);
Route::get('admin',[LoginController::class,'admin']);

});
