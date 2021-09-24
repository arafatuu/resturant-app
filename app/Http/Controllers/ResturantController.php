<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Resturant;
use App\Models\User;
use Illuminate\Support\Facades\Crypt;
use Session;
class ResturantController extends Controller
{
    public function index(){
        return  view('home');
    }
    public function list(){
        $resturant_data= Resturant::all();
        return view('list',['resturant_data'=>$resturant_data]);
    }

    public function add(Request $req){
        //return $req->input();
        $user = new Resturant();
        $user->name= $req->input('name');
        $user->email= $req->input('email');
        $user->adress= $req->input('adress');
        $user->save();

        $req->Session()->flash('status','Woo..!! Resturant info added successfully!');
        return redirect('list');

    }
    public function delete($id){

        Resturant::find($id)->delete();
        Session::flash('status','Woo..!! Resturant info deleted successfully!');
        return redirect('list');
    }

    public function edit($id){

        $user_data_edit= Resturant::find($id);
        return view('edit',['user_data_edit'=>$user_data_edit]);
        //Session::flash('status','Woo..!! Resturant info deleted successfully!');
        //return redirect('list');
    }
    
    public function update(Request $req){
        //return $req->input();
        $user = Resturant::find($req->id);
        $user->name= $req->input('name');
        $user->email= $req->input('email');
        $user->adress= $req->input('adress');
        $user->save();

        $req->Session()->flash('status','Woo..!! Resturant info Updated successfully!');
        return redirect('list');

    }


    public function register(Request $req){

        $user = new User();
        if($req->input('name')==''&&($req->input('password')!=$req->input('confirmpassword')))
        {
            $req->Session()->forget('user');
           $req->Session()->flash('status','Wooff..!! Username cant be empty! and password did not match!');
            return redirect('/register');
        }
        else if($req->input('name')=='')
        {
            $req->Session()->forget('user');
           $req->Session()->flash('status','Wooff..!! Username cant be empty!');
            return redirect('/register');
        }
        if(($req->input('password')!=$req->input('confirmpassword')))
        {
            $req->Session()->forget('user');
           $req->Session()->flash('status','Wooff..!! password did not match!');
            return redirect('/register');
        }

        $user->name= $req->input('name');
        $user->password= Crypt::encrypt($req->input('password'));
        $user->email= $req->input('email');
        $user->save();

           $req->Session()->forget('user');
           $req->Session()->flash('status','Woo..!! Registration done successfully!');
            return redirect('/login');        
    }

    public function login(Request $req){

        $user = User::where('email', $req->input('email'))->get();
        //return $user[0]->password;
        if(Crypt::decrypt($user[0]->password)==$req->input('password')){
            $req->Session()->put('user', $user[0]->name);
                return redirect('/');
        }
        else{
            $req->Session()->flash('status','Woff!! Your Password did not match!');
            return redirect('/login'); 
        }
     }

  

    }