@extends('Layout')

@section('content')
<div class="col-sm-6">
  <h2>Login here</h2>
@if(Session::get('status'))
<div class="alert alert-success alert-dismissible fade show" role="alert">
  {{Session::get('status')}}
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
@endif
   
<form method="post" action="login">
@csrf

  <div class="mb-3">
    <label class="form-label">Email address</label>
    <input type="email" class="form-control" placeholder="Enter your email" name="email">   
  </div>
  <div class="mb-3">
    <label class="form-label">password</label>
    <input type="password" class="form-control" placeholder="Enter passwor" name="password">   
  </div>
  
 
  <button type="submit" class="btn btn-primary">Login</button>
</form>
<p>Dont have any accout? <a href="/register">Register</a></p>
</div>
@stop