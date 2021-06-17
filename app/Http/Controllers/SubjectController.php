<?php

namespace App\Http\Controllers;

use App\Models\AdminSubject;
use App\Models\Studentsubject;
use App\Models\Subject;
use App\Models\Notes;
use App\Models\User;
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
       $sub=AdminSubject::all();
       $id=Auth::user()->id;
       $ownSubject=Studentsubject::where('user_id',$id)->get();
        return view('student.subject')->with('sub',$sub)->with('own',$ownSubject);

      //  return view('student.subject');
    }

    public function addstudentsubject(Request $req)
    {
        $sub=AdminSubject::where('subject',$req->subject)->first();
        $code= $sub->subject_code;
        $add=new Studentsubject();
        $add->user_id=$req->id;
        $add->subject_name=$req->subject;
        $add->subject_code=$code;
        $add->save();
        return redirect()->back();

    }
    public function studentsubnotes(Request $req)
    {   $id=Auth::user()->id;
        $banch= User::find($id)->detail->branch;

        $name=$req->name;
        $notes=Notes::where('subject',$req->name)->where('branch',$banch)->get();
        $req->session()->put('subject', $name);
        return view('student.subject_notes')->with('note',$notes)->with('name',$name);



    }
    /*public function download(){
    $downloads=DB::table('subjects')->get();
  return view('student.subject', compact('downloads'));-->*/

}
