<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Profile;
use App\User;

class GuestController extends Controller
{
    //
    public function index()
    {
        $userData = User::with('profile')->sortable()->simplePaginate(20);
        return view('index', compact('userData'));
    }

    public function memberprofile($id)
    {
        $userData = User::where('id', '=', $id)->with('profile')->get();
        //dd($userData);
        return view('member-profile', compact('userData'));
    }

    public function members (){

        $userData = User::with('profile')->sortable()->simplePaginate(20);
        //dd($userData);
        return view('members', compact('userData'));

    }
    public function membersearch(Request $request){
        // if($request->ajax())
        // {
            $userData = User::with('profile')->where('name','LIKE','%'.$request->q.'%')->sortable()->simplePaginate(20);
            //dd($dataUser);
            return view('members', compact('userData'));    
            // foreach ($dataUser as $User) {
                //     $output.='<tr>
                //     <td>'.$User->name.'</td>'.
                //     '<td>'.$User->email.'</td>';
                //     if(count($User->profile) > 0){
                //         foreach($User->profile as $Profile)
                //         $output .= '<td>'.$branchPProfileroduct->address.'</td>
                //         <td>'.$Profile->contactnum.'</td>';
                //     }
                //     $output .='</tr>';
                // }
                // return Response($output);
        // }

    // if($request->ajax())
    //  {
    //   $output = '';
    //   $query = $request->get('query');
    //   if($query != '')
    //   {
    //    $data = DB::table('users')
    //      ->where('name', 'like', '%'.$query.'%')
    //         ->with('profile')
    //      ->get();
         
    //   }
    //   else
    //   {
    //    $data = DB::table('tbl_customer')
    //      ->orderBy('CustomerID', 'desc')
    //      ->get();
    //   }
    //   $total_row = $data->count();
    //   if($total_row > 0)
    //   {
    //    foreach($data as $row)
    //    {
    //     $output .= '
    //     <tr>
    //      <td>'.$row->CustomerName.'</td>
    //      <td>'.$row->Address.'</td>
    //      <td>'.$row->City.'</td>
    //      <td>'.$row->PostalCode.'</td>
    //      <td>'.$row->Country.'</td>
    //     </tr>
    //     ';
    //    }
    //   }
    //   else
    //   {
    //    $output = '
    //    <tr>
    //     <td align="center" colspan="5">No Data Found</td>
    //    </tr>
    //    ';
    //   }
    //   $data = array(
    //    'table_data'  => $output,
    //    'total_data'  => $total_row
    //   );

    //   echo json_encode($data);
    //  }

    }
}
