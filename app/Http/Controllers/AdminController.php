<?php

namespace App\Http\Controllers;
use App\Profile;
use App\User;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    //
    public function index()
    {
        $userData = User::with('profile')->sortable()->simplePaginate(20);
        //dd($userData);
        return view('admin.dashboard', compact('userData'));
    }
    public function memberedit(Request $req){
        $dataProfile = Profile::where('userid', '=',$req->id)->take(1)->get();
        if (count($dataProfile) > 0) {
       
            $profileUpdate = Profile::where('userid', '=', $req->id)
                    ->update([
                        'address' => $req->address,
                        'contactnum' =>$req->contactnum
                        ]);
                $dataUser = User::find($req->id);
                $dataUser->name = $req->name;
                $dataUser->email = $req->email;
                $dataUser->save();
                return response()->json($req);   
        }
        else {
            $dataUser = User::find($req->id);
            $dataUser->name = $req->name;
            $dataUser->email = $req->email;
            $dataUser->save();

            $profileUpdate = new Profile();
            $profileUpdate->userid = $req->id;
            $profileUpdate->address = $req->address;
            $profileUpdate->contactnum = $req->contactnum;
            $profileUpdate->profileimage ='profile.jpg';
            $profileUpdate->save();
            return response()->json($req);
        }
    }
    public function memberdelete(Request $req){

        $dataMember = User::find($req->id)->delete();
        $dataProfile = Profile::where('userid', $req->id)->delete();
        return response()->json();
        
    }
    
    public function members (){

        $userData = User::with('profile')->sortable()->simplePaginate(20);
        //dd($userData);
        return view('admin.members', compact('userData'));

    }
    public function membersearch(Request $request){
            $userData = User::with('profile')->where('name','LIKE','%'.$request->q.'%')->sortable()->simplePaginate(20);
            //dd($dataUser);
            return view('admin.members', compact('userData')); 
    }
    public function memberprofile($id)
    {
        $userData = Profile::where('userid', '=', $id)->get();
        //dd($userData);
        return view('admin.member-profile', compact('userData'));
    }
}
