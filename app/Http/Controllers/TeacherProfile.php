<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TeacherProfile extends Controller
{
    //
    public function profile()
    {
       // $users = DB::table('users')->select('id','subject_name','branch','Standard','subject_code','subject_notes')->get();
        return view('teacher.profile');
    }


}
