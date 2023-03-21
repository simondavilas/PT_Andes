<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ciudades</title>
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
        <h1>Listado de Ciudads</h1>
        <br><br>
        <table class="table table-light">
            <thead class="thead-light">
                <tr>
                    <th>#</th>
                    <th>cod</th>
                    <th>name</th>
                </tr>
            </thead>
            <tbody>
                @foreach( $cities as $city)
                <tr>
                    <td>{{$city->id}}</td>
                    <td>{{$city->cod}}</td>
                    <td>{{$city->name}}</td>
                    <td> <a href="{{url('/cities/'.$city->id.'/edit')}}" class="btn btn-warning">
                        Editar
                        </a>
                        |
                        <form action="{{url('/cities/'.$city->id)}}" class="d-inline" method="post">
                            @csrf
                            {{method_field('DELETE')}}
                            <input class="btn btn-danger" type="submit" onclick="return confirm('¿Desea eliminar?')" value="Borrar">
                        </form>   
                    </td>                 
                </tr>
                @endforeach
            </tbody>
        </table>
        {!! $cities->links() !!}
    </div>
    @endsection
</body>
</html>