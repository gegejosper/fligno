<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Profile;
use App\User;

use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
   
    public function profile()
    {
        if(Auth::check()){
            $userId = Auth::user()->id;
        }
        
        $userData = Profile::where('userid', '=', $userId)->get();
        //dd($userData);
        return view('profile', compact('userData'));
    }
    public function home (){

        $userData = User::with('profile')->sortable()->simplePaginate(20);
        //dd($userData);
        return view('home', compact('userData'));

    }
    public function profileedit(Request $req){
        if(Auth::check()){
            $userId = Auth::user()->id;
        }

        $dataProfile = Profile::where('userid', '=', $userId)->take(1)->get();
        if (count($dataProfile) > 0) {
       
            $profileUpdate = Profile::where('userid', '=', $userId)
                    ->update([
                        'address' => $req->address,
                        'contactnum' =>$req->contactnum
                        ]);
                $dataUser = User::find($userId);
                $dataUser->name = $req->name;
                $dataUser->save();
                return response()->json($req);   
        }
        else {
            $dataUser = User::find($userId);
            $dataUser->name = $req->name;
            $dataUser->save();

            $profileUpdate = new Profile();
            $profileUpdate->userid = $userId;
            $profileUpdate->address = $req->address;
            $profileUpdate->contactnum = $req->contactnum;
            $profileUpdate->profileimage ='profile.jpg';
            $profileUpdate->save();
            return response()->json($req);
        }
    }
    public function profileimage()
    {
        if(Auth::check()){
            $userId = Auth::user()->id;
        }
        
        $userData = Profile::where('userid', '=', $userId)->get();
       
        return view('image', compact('userData'));
    }
    
}
