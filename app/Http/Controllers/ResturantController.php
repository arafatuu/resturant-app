<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Resturant;
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
        $resto = new Resturant();
        $resto->name= $req->input('name');
        $resto->email= $req->input('email');
        $resto->adress= $req->input('adress');
        $resto->save();

        $req->Session()->flash('status','Woo..!! Resturant info added successfully!');
        return redirect('list');

    }
    public function delete($id){

        Resturant::find($id)->delete();
        Session::flash('status','Woo..!! Resturant info deleted successfully!');
        return redirect('list');
    }

    public function edit($id){

        $resto_data_edit= Resturant::find($id);
        return view('edit',['resto_data_edit'=>$resto_data_edit]);
        //Session::flash('status','Woo..!! Resturant info deleted successfully!');
        //return redirect('list');
    }
    
    public function update(Request $req){
        //return $req->input();
        $resto = Resturant::find($req->id);
        $resto->name= $req->input('name');
        $resto->email= $req->input('email');
        $resto->adress= $req->input('adress');
        $resto->save();

        $req->Session()->flash('status','Woo..!! Resturant info Updated successfully!');
        return redirect('list');

    }
}