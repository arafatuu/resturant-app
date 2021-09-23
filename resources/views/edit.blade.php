@extends('Layout')

@section('content')

<div class="col-sm-6">
    <h2>Edit Resturant</h2>
   
<form method="post" action="/edit">
@csrf
<input type="hidden" class="form-control"name="id" value="{{$resto_data_edit->id}}">
<div class="mb-3">
    <label class="form-label">Name</label>
    <input type="text" class="form-control" placeholder="Enter resturant name" name="name" value="{{$resto_data_edit->name}}">   
  </div>
  <div class="mb-3">
    <label class="form-label">Email address</label>
    <input type="email" class="form-control" placeholder="Enter resturant email" name="email" value="{{$resto_data_edit->email}}">   
  </div>
  <div class="mb-3">
    <label class="form-label">Address</label>
    <input type="text" class="form-control" placeholder="Enter resturant address" name="adress" value="{{$resto_data_edit->adress}}">   
  </div>
 
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
@stop