@extends('Layout')

@section('content')

<h2>This is list page</h2>
@if(Session::get('status'))
<div class="alert alert-success alert-dismissible fade show" role="alert">
  {{Session::get('status')}}
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
@endif

<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
      <th scope="col">Actions</th>
    </tr>
  </thead>
  @foreach($resturant_data as $item)
  <tbody>
    <tr>
      <th scope="row">{{$item->id}}</th>
      <td>{{$item->name}}</td>
      <td>{{$item->email}}</td>
      <td>{{$item->adress}}</td>
      <td>
        <a href="delete/{{$item->id}}"><i class="fa fa-trash"></i></a>
        <a href="edit/{{$item->id}}"><i class="fa fa-edit"></i></a>
    </td>
      
    </tr>
  </tbody>
  @endforeach
</table>

@stop