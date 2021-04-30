<?php

namespace App\Http\Controllers;

use App\Models\Subject;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class SubjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function subject()
    {
        $users = DB::table('subjects')->select('id','subject_name','branch','Standard','subject_code','subject_notes')->get();
        //echo Auth::User();
        return view('student.subject', compact('users'));

      //  return view('student.subject');
    }

    /*public function download(){
    $downloads=DB::table('subjects')->get();
  return view('student.subject', compact('downloads'));-->*/

}
