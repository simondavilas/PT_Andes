<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Clientes</title>

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
        <br><br>
        <h1>Listado de Clientes</h1>
        <form class="form-inline my-2 my-lg-0 float-right">
            <input name="buscar" class="form-control mr-sm-2" class="d-inline" type="search" placeholder="Filtrar ciudad" aria-label="Filtrar ciudad" value="{{$buscar}}" >
            <button class="btn btn-success my-2 my-sm-0" type="submit">Filtrar ciudad</button>
        </form>
        <table class="table table-light">
            <thead class="thead-light">
                <tr>
                    <th>#</th>
                    <th>cod</th>
                    <th>name</th>
                    <th>city</th>
                </tr>
            </thead>
            <tbody>
                @foreach( $clients as $client)
                <tr>
                    <td>{{$client->id}}</td>
                    <td>{{$client->cod}}</td>
                    <td>{{$client->name}}</td>
                    <td>{{$client->city}}</td>
                    <td> <a href="{{url('/client/'.$client->id.'/edit')}}" class="btn btn-warning">
                        Editar
                        </a>
                        |
                        <form action="{{url('/client/'.$client->id)}}" class="d-inline" method="post">
                            @csrf
                            {{method_field('DELETE')}}
                            <input class="btn btn-danger" type="submit" onclick="return confirm('¿Desea eliminar?')" value="Borrar">
                        </form>   
                    </td>                 
                </tr>
                @endforeach
            </tbody>
        
        </table>
        {!! $clients->links() !!}
    </div>
    
    @endsection
</body>
</html>