<?php

namespace App\Http\Controllers;

use App\Models\StudentDetail;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class StudentController extends Controller
{
    //
    public function studentdeshboard()
    {
        return view('student.student_deshboard');
    }
    public function addstudentdetail()
    {
        return view('student.addstudentdetail');
    }

    public function studentdetail(Request $req)
    {
        $user=Auth::user();
        $stu=new StudentDetail();
        $stu->state=$req->state;
        $stu->city=$req->City;
        $stu->pincode=$req->pincode;
        $stu->collegecode=$req->collegecode;
        $stu->college=$req->college;
        $stu->rid=$user->rid;
        $stu->branch=$req->branch;
        $stu->board=$req->board;
        $stu->standard=$req->standard;
        $stu->save();
        $users=User::where('rid',$user->rid)->first();
        $users->completeprofile="1";
        $users->update();
        return redirect('studentdeshboard');

    }
}
