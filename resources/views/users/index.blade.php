<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Usuarios</title>

    <style>
        .pagination{
            float: right;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    @extends('layouts.app')
    @section('content')
    <div class="container">
        @if(Session::has('mensaje'))
            {{Session::get('mensaje')}}
        @endif
        @include('nav.partials')
        <h1>Listado de Usuarios</h1>
        <table class="table table-light">
            <thead class="thead-light">
                <tr>
                    <th>#</th>
                    <th>name</th>
                    <th>email</th>
                </tr>
            </thead>
            <tbody>
                @foreach( $users as $user)
                <tr>
                    <td>{{$user->id}}</td>
                    <td>{{$user->name}}</td>
                    <td>{{$user->email}}</td>
                    <td> <a href="{{url('/users/'.$user->id.'/edit')}}" class="btn btn-warning">
                        Editar
                        </a>
                        |
                        <form action="{{url('/users/'.$user->id)}}" class="d-inline" method="post">
                            @csrf
                            {{method_field('DELETE')}}
                            <input class="btn btn-danger" type="submit" onclick="return confirm('¿Desea eliminar?')" value="Borrar">
                        </form>   
                    </td>                 
                </tr>
                @endforeach
            </tbody>
        
        </table>
        {!! $users->links() !!}
    </div>
    
    @endsection
</body>
</html>