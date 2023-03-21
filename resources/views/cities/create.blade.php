<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Crear ciudades</title>
</head>
<body>
    @extends('layouts.app')
    @section('content')
    <div class="container">
        <form action="{{url('/cities')}}" method="post">
            @csrf
            @include('cities.form', ['modo' =>'Crear'])
        </form>
    </div>
    @endsection
</body>
</html>