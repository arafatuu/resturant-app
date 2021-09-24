@extends('Layout')

@section('content')
<div class="col-sm-6 ">
   <h2>Register Here</h2>
   @if(Session::get('status'))
<div class="alert alert-success alert-dismissible fade show" role="alert">
  {{Session::get('status')}}
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
@endif
<form method="post" action="register">
@csrf
<div class="mb-3">
    <label class="form-label">Name</label>
    <input type="text" class="form-control" placeholder="Enter your name" name="name" id="uname" onkeyup="checkempty();">
    <span id='msg'></span>  
  </div>
  <div class="mb-3">
    <label class="form-label">Email address</label>
    <input type="email" class="form-control" placeholder="Enter your email" name="email">   
  </div>
  <div class="mb-3">
    <label class="form-label">password</label>
    <input type="password" class="form-control" placeholder="Enter passwor" name="password" id="password"onkeyup='check();'>   
  </div>
  <div class="mb-3">
    <label class="form-label">Confirm password</label>
    <input type="password" class="form-control" placeholder="Enter passwor" name="confirmpassword" id="confirm_password" onkeyup='check();'>   
    <span id='message'></span>
  </div>
 
  <button type="submit" class="btn btn-primary">Register</button>
</form>
<p>Already have an account? <a href="/login">Login</a></p>

</div>
@stop