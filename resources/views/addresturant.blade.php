@extends('Layout')

@section('content')

<div class="col-sm-6">
   
<form method="post" action="">
@csrf
<div class="mb-3">
    <label class="form-label">Name</label>
    <input type="text" class="form-control" placeholder="Enter resturant name" name="name">   
  </div>
  <div class="mb-3">
    <label class="form-label">Email address</label>
    <input type="email" class="form-control" placeholder="Enter resturant email" name="email">   
  </div>
  <div class="mb-3">
    <label class="form-label">Address</label>
    <input type="text" class="form-control" placeholder="Enter resturant address" name="adress">   
  </div>
 
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
@stop