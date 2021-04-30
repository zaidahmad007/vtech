<?php

namespace App\Http\Controllers;

use App\Models\Timetable;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TimetableController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function timetable()
    {
    	$users = DB::table('timetables')->select('id','subject_name','time','branch','subject_code','subject_teacher','class_url')->get();
        return view('student.timetable', compact('users'));
       
    }

    
}
