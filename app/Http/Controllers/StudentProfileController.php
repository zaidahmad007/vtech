<?php

namespace App\Http\Controllers;

use App\Models\StudentProfile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StudentProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function profile()
    {
       // $users = DB::table('users')->select('id','subject_name','branch','Standard','subject_code','subject_notes')->get();
        return view('student.profile');
    }


}
