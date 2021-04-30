<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class LoginController extends Controller
{
    //
    public function Register()
    {
        return view('registration');
    }
    public function registerfoam(Request $request)
    {
        $user=new User();
        $user->name=$request->name;
        $user->email=$request->email;
        $user->phone=$request->mobile;
        $user->rid=rand(100,999);
        $user->type=$request->type;
        $user->password=$request->pwd;
        $user->save();
        $userget=User::where("email",$request->email)->first();
        $userget->rid="TECH"."2021".$userget->id;
        $userget->update();
        Auth::login($userget,true);
        if($userget->type=="teacher")
        {
            return redirect('teacherdashboard');
        }
        elseif($userget->type=="student")
        {

            return redirect('studentdeshboard',compact($user));
        }
        else{
            return redirect('admin');
        }

    }
    public function admin()
    {
        return view('admin.admin');
    }
    public function login()
    {
        return view('login');
    }
    public function logines(Request $req)
    {
        $user=User::where('rid',$req->rid)->OrWhere('email',$req->rid)->first();
        if($user){

            if($user->password==$req->psw){
                Auth::login($user,true);
                if($user->type=="teacher")
                {


                    return redirect('teacherdashboard');
                }
                elseif($user->type=="student")
                {
                   // $users = DB::table('users')->get();
                    return redirect('studentdeshboard');
                }
                else{
                    return redirect('admin');
                }
            }
            else{
                return redirect()->back()->with('msg','Please Provide correct credentials');
            }

        }
        else{
            return redirect()->back()->with('msg','Please Register First');

        }




    }
    public function logout()
    {
        Auth::logout();
        return redirect('/');
    }
}

